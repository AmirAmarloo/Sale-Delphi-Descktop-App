{$I Direct.Inc}
unit EGoodsDiscount;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus, DBTables, {$I MbUses.Inc};


type
  TfrmEGoodsDiscount = class(TMbForm)
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
    qrEGoodsDiscount: TQuery;
    dsEGoodsDiscount: TDataSource;
    usEGoodsDiscount: TUpdateSQL;
    qrEGoodsDiscountGD_DATE: TStringField;
    qrEGoodsDiscountGD_RATE: TFloatField;
    qrEGoodsDiscountCF_GOODNAME: TStringField;
    Label1: TLabel;
    sbGood: TSpeedButton;
    edGdsCode1: TEdit;
    edGdName: TEdit;
    sbExportToExcel: TSpeedButton;
    qrEGoodsDiscountGD_MIN_QTY: TFloatField;
    qrEGoodsDiscountGD_MAX_QTY: TFloatField;
    qrEGoodsDiscountGD_TODATE: TStringField;
    qrEGoodsDiscountGD_GDSINFO: TFloatField;
    qrEGoodsDiscountCF_FDSINFODESC: TStringField;
    procedure sbGoodClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrEGoodsDiscountNewRecord(DataSet: TDataSet);
    procedure qrEGoodsDiscountGD_DATEValidate(Sender: TField);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure qrEGoodsDiscountGD_RATEValidate(Sender: TField);
    procedure qrEGoodsDiscountGD_MIN_QTYValidate(Sender: TField);
    procedure sbExitClick(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure edGdsCode1Exit(Sender: TObject);
    procedure qrEGoodsDiscountBeforePost(DataSet: TDataSet);
    procedure qrEGoodsDiscountAfterScroll(DataSet: TDataSet);
    procedure sbExportToExcelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrEGoodsDiscountGD_MAX_QTYValidate(Sender: TField);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure qrEGoodsDiscountCalcFields(DataSet: TDataSet);
    procedure qrEGoodsDiscountGD_GDSINFOValidate(Sender: TField);
  private
    { Private declarations }
    DisGdsCode: String;
    IsLock: Boolean;
  public
    { Public declarations }
  end;

var
  frmEGoodsDiscount: TfrmEGoodsDiscount;

implementation

uses Help, Utility, Utitlty, UMessage, Functions;

{$R *.dfm}

procedure TfrmEGoodsDiscount.sbGoodClick(Sender: TObject);
var
  Code: string;
begin
  if HelpGds(Code) then
  begin
    edGdsCode1.SetFocus;
    with qrEGoodsDiscount do
    begin
      Edit;
      FieldByName('GD_GCODE').AsString:= Code;
      edGdsCode1.Text := Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEGoodsDiscount.FormShow(Sender: TObject);
begin
  DisGdsCode := '';
//  SelectEmpty(qrEGoodsDiscount, 'GOODSDICOUNT_T');
  with qrEGoodsDiscount do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM GOODSDICOUNT_T');
    Open;
  end;
end;

procedure TfrmEGoodsDiscount.qrEGoodsDiscountNewRecord(DataSet: TDataSet);
begin
{  if DisGdsCode = '' then Exit;
  DataSet.FieldByName('GD_GCODE').AsString := DisGdsCode;}
end;

procedure TfrmEGoodsDiscount.qrEGoodsDiscountGD_DATEValidate(
  Sender: TField);
begin
  if not MsDateIsValid1(Sender.AsString, False) then
  begin
    MbError('ÊÇÑíÎ ÛíÑ ãÌÇÒ');
    Abort;
  end;
end;

procedure TfrmEGoodsDiscount.sbFirstClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEGoodsDiscount.DisableControls;
  try
    if not CheckChanges(qrEGoodsDiscount, qrEGoodsDiscount, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEGoodsDiscount, 'GOODSDICOUNT_T', 1, Ord(_First), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEGoodsDiscount.EnableControls;
  end;
end;

procedure TfrmEGoodsDiscount.sbPrevClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEGoodsDiscount.DisableControls;
  try
    if not CheckChanges(qrEGoodsDiscount, qrEGoodsDiscount, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEGoodsDiscount, 'GOODSDICOUNT_T', 1, Ord(_Prev), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEGoodsDiscount.EnableControls;
  end;
end;

procedure TfrmEGoodsDiscount.sbNextClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEGoodsDiscount.DisableControls;
  try
    if not CheckChanges(qrEGoodsDiscount, qrEGoodsDiscount, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEGoodsDiscount, 'GOODSDICOUNT_T', 1, Ord(_Next), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEGoodsDiscount.EnableControls;
  end;
end;

procedure TfrmEGoodsDiscount.sbLastClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEGoodsDiscount.DisableControls;
  try
    if not CheckChanges(qrEGoodsDiscount, qrEGoodsDiscount, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrEGoodsDiscount, 'GOODSDICOUNT_T', 1, Ord(_Last), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEGoodsDiscount.EnableControls;
  end;
end;

procedure TfrmEGoodsDiscount.qrEGoodsDiscountGD_RATEValidate(
  Sender: TField);
begin
  if Sender.AsFloat > 99.99 then
  begin
    MbError(OutOfRange);
    Abort;
  end;
end;

procedure TfrmEGoodsDiscount.qrEGoodsDiscountGD_MIN_QTYValidate(
  Sender: TField);
begin
  if Sender.AsFloat > 9999999999 then
  begin
    MbError(OutOfRange);
    Abort;
  end;
end;

procedure TfrmEGoodsDiscount.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEGoodsDiscount.BtnPostClick(Sender: TObject);
begin
  qrEGoodsDiscount.ApplyUpdates;
{  SelectEmpty(qrEGoodsDiscount, 'GOODSDICOUNT_T');
  edGdsCode.Clear;
  edGdName.Clear;}
end;

procedure TfrmEGoodsDiscount.BtnDelClick(Sender: TObject);
begin
  qrEGoodsDiscount.Delete;
  qrEGoodsDiscount.ApplyUpdates;
end;

procedure TfrmEGoodsDiscount.edGdsCode1Exit(Sender: TObject);
begin
{  edGdName.Text := FindGdsFDesc(edGdsCode.Text);
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
    SQL.Add('SELECT * FROM GOODSDICOUNT_T');
    SQL.Add('WHERE GD_GCODE = :GDSCODE');
//    SQL.Add('ORDER BY GD_QTY, GD_DATE');
    ParamByName('GDSCODE').AsString := DisGdsCode;
    Open;
  end;}
end;

procedure TfrmEGoodsDiscount.qrEGoodsDiscountBeforePost(DataSet: TDataSet);
begin
  with qrEGoodsDiscount do
  begin
    if {(FieldByName('GD_GCODE').AsString = '') or}
       (FieldByName('GD_MIN_QTY').AsString = '') or
       (FieldByName('GD_MAX_QTY').AsString = '') or
       (FieldByName('GD_DATE').AsString = '') or
       (FieldByName('GD_RATE').AsString = '') then
    begin
      MbError(InCompleteData);
      Abort;
    end;
    if FieldByName('GD_MAX_QTY').AsFloat <= FieldByName('GD_MIN_QTY').AsFloat then
    begin
      MbError(InCorrectValue);
      Abort;
    end;
  end;
end;

procedure TfrmEGoodsDiscount.qrEGoodsDiscountAfterScroll(
  DataSet: TDataSet);
begin
{  edGdsCode.Text := DataSet.FieldByName('GD_GCODE').AsString;
  edGdName.Text := FindGdsFDesc(edGdsCode.Text);}
end;

procedure TfrmEGoodsDiscount.sbExportToExcelClick(Sender: TObject);
begin
  ExportToExcel(qrEGoodsDiscount);
end;

procedure TfrmEGoodsDiscount.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEGoodsDiscount.qrEGoodsDiscountGD_MAX_QTYValidate(
  Sender: TField);
begin
  if Sender.AsFloat > 9999999999 then
  begin
    MbError(OutOfRange);
    Abort;
  end;
end;

procedure TfrmEGoodsDiscount.DBGrid1EditButtonClick(Sender: TObject);
var
  Code: string;
begin
  if HelpGdsInfo(Code) then
  begin
    with qrEGoodsDiscount do
    begin
      Edit;
      FieldByName('GD_GDSINFO').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEGoodsDiscount.qrEGoodsDiscountCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_FDSINFODESC').AsString := FindGdsInfoDesc(DataSet.FieldByName('GD_GDSINFO').AsString);
end;

procedure TfrmEGoodsDiscount.qrEGoodsDiscountGD_GDSINFOValidate(
  Sender: TField);
begin
  if Sender.AsInteger > 9999 then
  begin
    MbError(OutOfRange);
    Abort;
  end;
  if Sender.AsString = '' then Exit;
  if FindGdsInfoDesc(Sender.AsString) = '' then
  begin
    MbError(InvalidCode);
    Abort;
  end;
end;

end.
