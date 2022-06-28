{$I Direct.Inc}
unit EGoodsPrice;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus, DBTables, xcalPlannerCal, xcalDBPlannerCal, xcalClass, xcalPersian, {$I MbUses.Inc};

type
  TfrmEGoodsPrice = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    sbExportToExcel: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    qrEGoodsPrice: TQuery;
    usEGoodsPrice: TUpdateSQL;
    dsEGoodsPrice: TDataSource;
    qrEGoodsPriceGDS_CODE: TStringField;
    qrEGoodsPriceGDS_PRICE: TFloatField;
    qrEGoodsPriceCF_GOODSDESC: TStringField;
    qrEGoodsPriceGDS_DATE: TStringField;
    qrTemp: TQuery;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    SpeedButton8: TSpeedButton;
    Query1: TQuery;
    PersianCalendar1: TPersianCalendar;
    XCalDBPlannerCalendar2: TXCalDBPlannerCalendar;
    SpeedButton2: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbExitClick(Sender: TObject);
    procedure qrEGoodsPriceGDS_PRICEValidate(Sender: TField);
    procedure qrEGoodsPriceGDS_CODEValidate(Sender: TField);
    procedure qrEGoodsPriceCalcFields(DataSet: TDataSet);
    procedure BtnPostClick(Sender: TObject);
    procedure sbExportToExcelClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure XCalDBPlannerCalendar2DaySelect(Sender: TObject;
      SelDate: TDateTime);
    procedure XCalDBPlannerCalendar2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEGoodsPrice: TfrmEGoodsPrice;

implementation

uses Utility, Utitlty, Help, Functions, UMessage;

{$R *.dfm}

procedure TfrmEGoodsPrice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEGoodsPrice.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEGoodsPrice.qrEGoodsPriceGDS_PRICEValidate(Sender: TField);
begin
  if Sender.AsFloat > 9999999999 then
  begin
    MbError(OutOfRange);
    Abort;
  end;
end;

procedure TfrmEGoodsPrice.qrEGoodsPriceGDS_CODEValidate(Sender: TField);
begin
  if FindGdsFDesc(Sender.AsString) = '' then
  begin
    MbError(InvalidCode);
    Abort;
  end;
end;

procedure TfrmEGoodsPrice.qrEGoodsPriceCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_GOODSDESC').AsString := FindGdsFDesc(DataSet.FieldByName('GDS_CODE').AsString);
end;

procedure TfrmEGoodsPrice.BtnPostClick(Sender: TObject);
begin
  if CheckNullFields(qrEGoodsPrice, 'SALES', 'GOODSPRICE_T') then Exit;
  qrEGoodsPrice.ApplyUpdates;
  with qrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE GOODSINFO_T I');
    SQL.Add('SET SALE_RATE = (SELECT GDS_PRICE FROM GOODSPRICE_T P');
    SQL.Add('                 WHERE GDS_DATE = (SELECT MAX(GDS_DATE) FROM GOODSPRICE_T P1');
    SQL.Add('                                   WHERE P.GDS_CODE = P1.GDS_CODE)');
    SQL.Add('                   AND I.GDS_CODE = P.GDS_CODE)');
    SQL.Add('WHERE EXISTS (SELECT GDS_CODE FROM GOODSPRICE_T P');
    SQL.Add('              WHERE I.GDS_CODE = P.GDS_CODE)');
    ExecSQL;
  end;
  with qrEGoodsPrice do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM GOODSPRICE_T');
    SQL.Add('WHERE 1 = 2');
    Open;
  end;
end;

procedure TfrmEGoodsPrice.sbExportToExcelClick(Sender: TObject);
begin
  with qrEGoodsPrice do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM GOODSPRICE_T');
    Open;
  end;
  ExportToExcel(Query1);
end;

procedure TfrmEGoodsPrice.BtnDelClick(Sender: TObject);
begin
  qrEGoodsPrice.Delete;
  qrEGoodsPrice.ApplyUpdates;
end;

procedure TfrmEGoodsPrice.FormShow(Sender: TObject);
begin
  with qrEGoodsPrice do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM GOODSPRICE_T');
    SQL.Add('WHERE 1 = 2');
    Open;
  end;
  XCalDBPlannerCalendar2.Visible := False;
  XCalDBPlannerCalendar2.SetDate(System_DD, System_MM, StrToInt(IntToStr(System_YY)));
end;

procedure TfrmEGoodsPrice.SpeedButton8Click(Sender: TObject);
var
  Code, GDate: string;
begin
  if HelpGoodsPrice(Code, GDate) then
  begin
    with qrEGoodsPrice do
    begin
      Edit;
      FieldByName('GDS_CODE').AsString := Code;
      FieldByName('GDS_DATE').AsString := GDate;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEGoodsPrice.DBEdit1Exit(Sender: TObject);
var
  GdsCode: String;
begin
  if FindGdsFDesc(qrEGoodsPrice.FieldByName('GDS_CODE').AsString) = '' then
  begin
    MbError(InvalidCode);
    DBEdit1.SetFocus;
  end;
  with qrEGoodsPrice do
  begin
    GdsCode := FieldByName('GDS_CODE').AsString;
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM GOODSPRICE_T');
    SQL.Add('WHERE GDS_CODE = :GDSCODE');
    SQL.Add('  AND GDS_DATE = (SELECT MAX(GDS_DATE) FROM GOODSPRICE_T');
    SQL.Add('                  WHERE GDS_CODE = :GDSCODE)');
    ParamByName('GDSCODE').AsString := GdsCode;
    Open;
    if IsEmpty then
    begin
      Edit;
      FieldByName('GDS_CODE').AsString := GdsCode;
    end;
  end;
end;

procedure TfrmEGoodsPrice.DBEdit2Exit(Sender: TObject);
var
  GdsCode, GDate: String;
begin
  with qrEGoodsPrice do
  begin
    GdsCode := FieldByName('GDS_CODE').AsString;
    GDate := FieldByName('GDS_DATE').AsString;
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM GOODSPRICE_T');
    SQL.Add('WHERE GDS_CODE = :GDSCODE');
    SQL.Add('  AND GDS_DATE = :GDATE');
    ParamByName('GDSCODE').AsString := GdsCode;
    ParamByName('GDATE').AsString := GDate;
    Open;
    if IsEmpty then
    begin
      Edit;
      FieldByName('GDS_CODE').AsString := GdsCode;
      FieldByName('GDS_DATE').AsString := GDate;
    end;
  end;

end;

procedure TfrmEGoodsPrice.SpeedButton2Click(Sender: TObject);
begin
  if StringReplace(qrEGoodsPrice.FieldByName('GDS_DATE').AsString, ' ', '', [rfReplaceAll]) <> '' then
    XCalDBPlannerCalendar2.SetDate(StrToInt(Copy(qrEGoodsPrice.FieldByName('GDS_DATE').AsString, 7, 2)),
                                   StrToInt(Copy(qrEGoodsPrice.FieldByName('GDS_DATE').AsString, 5, 2)),
                                   StrToInt(Copy(qrEGoodsPrice.FieldByName('GDS_DATE').AsString, 1, 4)));
  XCalDBPlannerCalendar2.Visible := not XCalDBPlannerCalendar2.Visible;
end;

procedure TfrmEGoodsPrice.XCalDBPlannerCalendar2DaySelect(Sender: TObject;
  SelDate: TDateTime);
begin
  qrEGoodsPrice.Edit;
  qrEGoodsPrice.FieldByName('GDS_DATE').AsString := StringReplace(XCalDBPlannerCalendar2.DatesAsText,'/','',[rfReplaceAll]);
  DBEdit2.SetFocus;
end;

procedure TfrmEGoodsPrice.XCalDBPlannerCalendar2Exit(Sender: TObject);
begin
  XCalDBPlannerCalendar2.Visible := False;
end;

procedure TfrmEGoodsPrice.FormCreate(Sender: TObject);
begin
  SetFormColor(Self,_FormColor);
end;

end.
