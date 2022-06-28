{$I Direct.Inc}
unit EAbateDist;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, Mask, DBCtrls, Grids,
  DBGrids, DB, DBTables, xcalClass, xcalPersian, xcalPlannerCal,
  xcalDBPlannerCal,
  {$I MbUses.Inc};

type
  TfrmEAbateDist = class(TMbForm)
    panButton: TPanel;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label14: TLabel;
    sbGood: TSpeedButton;
    Label17: TLabel;
    dbedGdsCode: TDBEdit;
    DBEdit2: TDBEdit;
    qrEAbateDist: TQuery;
    usEAbateDist: TUpdateSQL;
    dsEAbateDist: TDataSource;
    qrEAbateDistGDS_CODE: TStringField;
    qrEAbateDistAB_FROMDATE: TStringField;
    qrEAbateDistAB_TODATE: TStringField;
    qrEAbateDistAB_PERSENT: TFloatField;
    qrEAbateDistCF_GDSDESC: TStringField;
    XCalDBPlannerCalendar1: TXCalDBPlannerCalendar;
    PersianCalendar1: TPersianCalendar;
    XCalDBPlannerCalendar2: TXCalDBPlannerCalendar;
    PersianCalendar2: TPersianCalendar;
    qrEAbateDistAB_CASH: TFloatField;
    procedure sbExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbGoodClick(Sender: TObject);
    procedure qrEAbateDistAB_PERSENTValidate(Sender: TField);
    procedure dbedGdsCodeExit(Sender: TObject);
    procedure qrEAbateDistCalcFields(DataSet: TDataSet);
    procedure qrEAbateDistAB_FROMDATEValidate(Sender: TField);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrEAbateDistNewRecord(DataSet: TDataSet);
    procedure qrEAbateDistBeforePost(DataSet: TDataSet);
    procedure XCalDBPlannerCalendar1DaySelect(Sender: TObject;
      SelDate: TDateTime);
    procedure XCalDBPlannerCalendar1Exit(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure XCalDBPlannerCalendar2DaySelect(Sender: TObject;
      SelDate: TDateTime);
    procedure XCalDBPlannerCalendar2Exit(Sender: TObject);
  private
    { Private declarations }
    AbGdsCode: String;
  public
    { Public declarations }
  end;

var
  frmEAbateDist: TfrmEAbateDist;

implementation

uses Help, Utility, Utitlty, UMessage, Functions;

{$R *.dfm}

procedure TfrmEAbateDist.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEAbateDist.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEAbateDist.sbGoodClick(Sender: TObject);
var
  Code: string;
begin
  if HelpGds(Code) then
  begin
    dbedGdsCode.SetFocus;
    with qrEAbateDist do
    begin
      Edit;
      FieldByName('GDS_CODE').AsString := Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEAbateDist.qrEAbateDistAB_PERSENTValidate(Sender: TField);
begin
  if Sender.AsFloat > 100 then
  begin
    MbError(OutOfRange);
    Abort;
  end;
end;

procedure TfrmEAbateDist.dbedGdsCodeExit(Sender: TObject);
begin
  if FindGdsFDesc(qrEAbateDist.FieldByName('GDS_CODE').AsString) = '' then
  begin
    MbError(InvalidCode);
    dbedGdsCode.SetFocus;
    Exit;
  end;
  with qrEAbateDist do
  begin
    AbGdsCode := FieldByName('GDS_CODE').AsString;
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ABATEDIST_T');
    SQL.Add('WHERE GDS_CODE = :SBGDSCODE');
    ParamByName('SBGDSCODE').AsString := AbGdsCode;
    Open;
    if IsEmpty then
    begin
      Edit;
      FieldByName('GDS_CODE').AsString := AbGdsCode;
    end;
  end;
end;

procedure TfrmEAbateDist.qrEAbateDistCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_GDSDESC').AsString := FindGdsFDesc(DataSet.FieldByName('GDS_CODE').AsString)
end;

procedure TfrmEAbateDist.qrEAbateDistAB_FROMDATEValidate(Sender: TField);
begin
  if not MsDateIsValid1(Sender.AsString, False) then
  begin
    MbMessage(InvalidDate, mtError, [mbOk], mbOk);
    Abort;
  end;
end;

procedure TfrmEAbateDist.BtnPostClick(Sender: TObject);
begin
  qrEAbateDist.ApplyUpdates;
  SelectEmpty(qrEAbateDist, 'ABATEDIST_T');
  AbGdsCode := '';
  dbedGdsCode.SetFocus
end;

procedure TfrmEAbateDist.BtnDelClick(Sender: TObject);
begin
  qrEAbateDist.Delete;
  qrEAbateDist.ApplyUpdates;
  SelectEmpty(qrEAbateDist, 'ABATEDIST_T');
  AbGdsCode := '';
  dbedGdsCode.SetFocus
end;

procedure TfrmEAbateDist.FormShow(Sender: TObject);
begin
  SelectEmpty(qrEAbateDist, 'ABATEDIST_T');
  dbedGdsCode.SetFocus;
  XCalDBPlannerCalendar1.Visible := False;
  XCalDBPlannerCalendar1.SetDate(System_DD, System_MM, StrToInt(IntToStr(System_YY)));
  XCalDBPlannerCalendar2.Visible := False;
  XCalDBPlannerCalendar2.SetDate(System_DD, System_MM, StrToInt(IntToStr(System_YY)));
end;

procedure TfrmEAbateDist.qrEAbateDistNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('GDS_CODE').AsString := AbGdsCode;
end;

procedure TfrmEAbateDist.qrEAbateDistBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('AB_FROMDATE').AsInteger > DataSet.FieldByName('AB_TODATE').AsInteger then
  begin
    MbError(InvalidDate);
    DBGrid1.SelectedField := DataSet.FieldByName('AB_FROMDATE');
    Abort;
  end;
end;

procedure TfrmEAbateDist.XCalDBPlannerCalendar1DaySelect(Sender: TObject;
  SelDate: TDateTime);
begin
  qrEAbateDist.Edit;
  qrEAbateDist.FieldByName('AB_FROMDATE').AsString := StringReplace(XCalDBPlannerCalendar1.DatesAsText,'/','',[rfReplaceAll]);
  DBGrid1.SetFocus;
end;

procedure TfrmEAbateDist.XCalDBPlannerCalendar1Exit(Sender: TObject);
begin
  XCalDBPlannerCalendar1.Visible := False;
end;

procedure TfrmEAbateDist.DBGrid1EditButtonClick(Sender: TObject);
begin
  if DBGrid1.SelectedField.FieldName = 'AB_FROMDATE' then
  begin
    if StringReplace(qrEAbateDist.FieldByName('AB_FROMDATE').AsString, ' ', '', [rfReplaceAll]) <> '' then
      XCalDBPlannerCalendar1.SetDate(StrToInt(Copy(qrEAbateDist.FieldByName('AB_FROMDATE').AsString, 7, 2)),
                                     StrToInt(Copy(qrEAbateDist.FieldByName('AB_FROMDATE').AsString, 5, 2)),
                                     StrToInt(Copy(qrEAbateDist.FieldByName('AB_FROMDATE').AsString, 1, 4)));
    XCalDBPlannerCalendar1.Visible := not XCalDBPlannerCalendar1.Visible;
  end;
  if DBGrid1.SelectedField.FieldName = 'AB_TODATE' then
  begin
    if StringReplace(qrEAbateDist.FieldByName('AB_TODATE').AsString, ' ', '', [rfReplaceAll]) <> '' then
      XCalDBPlannerCalendar2.SetDate(StrToInt(Copy(qrEAbateDist.FieldByName('AB_TODATE').AsString, 7, 2)),
                                     StrToInt(Copy(qrEAbateDist.FieldByName('AB_TODATE').AsString, 5, 2)),
                                     StrToInt(Copy(qrEAbateDist.FieldByName('AB_TODATE').AsString, 1, 4)));
    XCalDBPlannerCalendar2.Visible := not XCalDBPlannerCalendar1.Visible;
  end;
end;

procedure TfrmEAbateDist.FormCreate(Sender: TObject);
begin
  SetFormColor(Self,_FormColor);
end;

procedure TfrmEAbateDist.XCalDBPlannerCalendar2DaySelect(Sender: TObject;
  SelDate: TDateTime);
begin
  qrEAbateDist.Edit;
  qrEAbateDist.FieldByName('AB_TODATE').AsString := StringReplace(XCalDBPlannerCalendar2.DatesAsText,'/','',[rfReplaceAll]);
  DBGrid1.SetFocus;
end;

procedure TfrmEAbateDist.XCalDBPlannerCalendar2Exit(Sender: TObject);
begin
  XCalDBPlannerCalendar2.Visible := False;
end;

end.
