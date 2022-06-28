{$I Direct.Inc}
unit EGoodsDiscountQty;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus, DBTables, {$I MbUses.Inc};


type
  TfrmEGoodsDiscountQty = class(TMbForm)
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
    Label1: TLabel;
    sbGood: TSpeedButton;
    edGdsCode: TEdit;
    edGdName: TEdit;
    DBGrid1: TDBGrid;
    qrEGoodsDiscount: TQuery;
    qrEGoodsDiscountGD_GCODE: TStringField;
    qrEGoodsDiscountGD_DATE: TStringField;
    qrEGoodsDiscountCF_GOODNAME: TStringField;
    usEGoodsDiscount: TUpdateSQL;
    dsEGoodsDiscount: TDataSource;
    qrEGoodsDiscountGD_QTY: TFloatField;
    qrEGoodsDiscountGD_PER_QTY: TFloatField;
    qrEGoodsDiscountGD_MAX_QTY: TFloatField;
    sbExportToExcel: TSpeedButton;
    qrEGoodsDiscountGD_TODATE: TStringField;
    qrEGoodsDiscountGD_DISTRATE: TFloatField;
    qrEGoodsDiscountGD_AMOUNT: TFloatField;
    qrEGoodsDiscountGD_DIS_GRP: TStringField;
    procedure sbExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edGdsCodeExit(Sender: TObject);
    procedure sbGoodClick(Sender: TObject);
    procedure qrEGoodsDiscountNewRecord(DataSet: TDataSet);
    procedure qrEGoodsDiscountGD_DATEValidate(Sender: TField);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure qrEGoodsDiscountGD_QTYValidate(Sender: TField);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure qrEGoodsDiscountBeforePost(DataSet: TDataSet);
    procedure qrEGoodsDiscountAfterScroll(DataSet: TDataSet);
    procedure sbExportToExcelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    DisGdsCode: String;
    IsLock: Boolean;
  public
    { Public declarations }
  end;

var
  frmEGoodsDiscountQty: TfrmEGoodsDiscountQty;

implementation

uses Help, Utility, Utitlty, UMessage, Functions;

{$R *.dfm}

procedure TfrmEGoodsDiscountQty.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEGoodsDiscountQty.FormShow(Sender: TObject);
begin
  DisGdsCode := '';
  SelectEmpty(qrEGoodsDiscount, 'GOODSDICOUNT_QTY_T');
end;

procedure TfrmEGoodsDiscountQty.edGdsCodeExit(Sender: TObject);
begin
  if edGdsCode.Text = '' then Exit;
  edGdName.Text := FindGdsFDesc(edGdsCode.Text);
  if edGdName.Text = '' then
  begin
    MbError(InvalidCode);
    edGdsCode.SetFocus;
    Exit;
  end;
  DisGdsCode := edGdsCode.Text;
  qrEGoodsDiscount.Edit;
  qrEGoodsDiscount.FieldByName('GD_GCODE').AsString := edGdsCode.Text;
  with qrEGoodsDiscount do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM GOODSDICOUNT_QTY_T');
    SQL.Add('WHERE GD_GCODE = :GDSCODE');
//    SQL.Add('ORDER BY GD_QTY, GD_DATE');
    ParamByName('GDSCODE').AsString := DisGdsCode;
    Open;
  end;
end;

procedure TfrmEGoodsDiscountQty.sbGoodClick(Sender: TObject);
var
  Code: string;
begin
  if HelpGds(Code) then
  begin
    edGdsCode.SetFocus;
    with qrEGoodsDiscount do
    begin
      Edit;
      FieldByName('GD_GCODE').AsString:= Code;
      edGdsCode.Text := Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEGoodsDiscountQty.qrEGoodsDiscountNewRecord(
  DataSet: TDataSet);
begin
  if DisGdsCode = '' then Exit;
  DataSet.FieldByName('GD_GCODE').AsString := DisGdsCode;
end;

procedure TfrmEGoodsDiscountQty.qrEGoodsDiscountGD_DATEValidate(
  Sender: TField);
begin
  if not MsDateIsValid1(Sender.AsString, False) then
  begin
    MbError('ÊÇÑíÎ ÛíÑ ãÌÇÒ');
    Abort;
  end;
end;

procedure TfrmEGoodsDiscountQty.sbFirstClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEGoodsDiscount.DisableControls;
  try
    if not CheckChanges(qrEGoodsDiscount, qrEGoodsDiscount, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEGoodsDiscount, 'GOODSDICOUNT_QTY_T', 1, Ord(_First), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEGoodsDiscount.EnableControls;
  end;
end;

procedure TfrmEGoodsDiscountQty.sbPrevClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEGoodsDiscount.DisableControls;
  try
    if not CheckChanges(qrEGoodsDiscount, qrEGoodsDiscount, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEGoodsDiscount, 'GOODSDICOUNT_QTY_T', 1, Ord(_Prev), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEGoodsDiscount.EnableControls;
  end;
end;

procedure TfrmEGoodsDiscountQty.sbNextClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEGoodsDiscount.DisableControls;
  try
    if not CheckChanges(qrEGoodsDiscount, qrEGoodsDiscount, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEGoodsDiscount, 'GOODSDICOUNT_QTY_T', 1, Ord(_Next), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEGoodsDiscount.EnableControls;
  end;
end;

procedure TfrmEGoodsDiscountQty.sbLastClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEGoodsDiscount.DisableControls;
  try
    if not CheckChanges(qrEGoodsDiscount, qrEGoodsDiscount, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEGoodsDiscount, 'GOODSDICOUNT_QTY_T', 1, Ord(_Last), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEGoodsDiscount.EnableControls;
  end;
end;

procedure TfrmEGoodsDiscountQty.qrEGoodsDiscountGD_QTYValidate(
  Sender: TField);
begin
  if Sender.AsFloat > 99999999 then
  begin
    MbError(OutOfRange);
    Abort;
  end;
end;

procedure TfrmEGoodsDiscountQty.BtnPostClick(Sender: TObject);
begin
  if edGdName.Text = '' then edGdName.SetFocus;
  qrEGoodsDiscount.ApplyUpdates;
  SelectEmpty(qrEGoodsDiscount, 'GOODSDICOUNT_QTY_T');
  edGdsCode.Clear;
  edGdName.Clear;
  edGdsCode.SetFocus;
end;

procedure TfrmEGoodsDiscountQty.BtnDelClick(Sender: TObject);
begin
  qrEGoodsDiscount.Delete;
  qrEGoodsDiscount.ApplyUpdates;
end;

procedure TfrmEGoodsDiscountQty.qrEGoodsDiscountBeforePost(
  DataSet: TDataSet);
begin
  with qrEGoodsDiscount do
  begin
    if (FieldByName('GD_GCODE').AsString = '') or
       (FieldByName('GD_QTY').AsString = '') or
       (FieldByName('GD_PER_QTY').AsString = '') or
       (FieldByName('GD_DATE').AsString = '') or
       (FieldByName('GD_TODATE').AsString = '') then
    begin
      MbError(InCompleteData);
      Abort;
    end;
    if FieldByName('GD_QTY').AsFloat <= FieldByName('GD_PER_QTY').AsFloat then
    begin
      MbError(InCorrectValue);
      Abort;
    end;
  end;
end;

procedure TfrmEGoodsDiscountQty.qrEGoodsDiscountAfterScroll(
  DataSet: TDataSet);
begin
  edGdsCode.Text := DataSet.FieldByName('GD_GCODE').AsString;
  edGdName.Text := FindGdsFDesc(edGdsCode.Text);
end;

procedure TfrmEGoodsDiscountQty.sbExportToExcelClick(Sender: TObject);
begin
  ExportToExcel(qrEGoodsDiscount);
end;

procedure TfrmEGoodsDiscountQty.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
