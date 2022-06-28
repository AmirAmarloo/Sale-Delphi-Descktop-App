{$I Direct.Inc}
unit EGDSRass;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ComCtrls, ExtCtrls, Mask,
  DBCtrls, DBTables, DB,
  {$I MbUses.Inc};

type
  TfrmEGDSRass = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    btnDelete: TBitBtn;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label14: TLabel;
    sbGood: TSpeedButton;
    dbedGdsCode: TDBEdit;
    DBEdit2: TDBEdit;
    qrEGDSRass: TQuery;
    dsEGDSRass: TDataSource;
    usEGDSRass: TUpdateSQL;
    qrEGDSRassGDS_CODE: TStringField;
    qrEGDSRassGDS_FROMDATE: TStringField;
    qrEGDSRassGDS_TODATE: TStringField;
    qrEGDSRassCLEARING_DATE: TFloatField;
    qrEGDSRassCF_GDSDESC: TStringField;
    qrEGDSRassCUSTTYPE_CODE11: TFloatField;
    qrEGDSRassCF_CustGrpDesc: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    SpeedButton1: TSpeedButton;
    procedure sbExitClick(Sender: TObject);
    procedure sbGoodClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrEGDSRassCalcFields(DataSet: TDataSet);
    procedure qrEGDSRassGDS_FROMDATEValidate(Sender: TField);
    procedure BtnPostClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrEGDSRassNewRecord(DataSet: TDataSet);
    procedure qrEGDSRassBeforePost(DataSet: TDataSet);
    procedure qrEGDSRassCLEARING_DATEValidate(Sender: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure dbedGdsCodeExit(Sender: TObject);
  private
    { Private declarations }
    AbGdsCode, AbCTCode: String;
  public
    { Public declarations }
  end;

var
  frmEGDSRass: TfrmEGDSRass;

implementation

uses Help, Utility, Utitlty, UMessage, Functions;

{$R *.dfm}

procedure TfrmEGDSRass.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEGDSRass.sbGoodClick(Sender: TObject);
var
  Code: string;
begin
  if HelpGds(Code) then
  begin
    dbedGdsCode.SetFocus;
    with qrEGDSRass do
    begin
      Edit;
      FieldByName('GDS_CODE').AsString := Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEGDSRass.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEGDSRass.qrEGDSRassCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_GDSDESC').AsString := FindGdsFDesc(DataSet.FieldByName('GDS_CODE').AsString);
  DataSet.FieldByName('CF_CustGrpDesc').AsString:= GetChannleName(DataSet.FieldByName('CUSTTYPE_CODE11').AsString);
end;

procedure TfrmEGDSRass.qrEGDSRassGDS_FROMDATEValidate(Sender: TField);
begin
  if not MsDateIsValid1(Sender.AsString, False) then
  begin
    MbMessage(InvalidDate, mtError, [mbOk], mbOk);
    Abort;
  end;
end;

procedure TfrmEGDSRass.BtnPostClick(Sender: TObject);
begin
  qrEGDSRass.ApplyUpdates;
  SelectEmpty(qrEGDSRass, 'GOODSRAAS_T');
  AbGdsCode := '';
  AbCTCode := '';
  DBEdit1.SetFocus
end;

procedure TfrmEGDSRass.btnDeleteClick(Sender: TObject);
begin
  qrEGDSRass.Delete;
  qrEGDSRass.ApplyUpdates;
  SelectEmpty(qrEGDSRass, 'GOODSRAAS_T');
  AbGdsCode := '';
  AbCTCode := '';
  DBEdit1.SetFocus
end;

procedure TfrmEGDSRass.FormShow(Sender: TObject);
begin
  SelectEmpty(qrEGDSRass, 'GOODSRAAS_T');
end;

procedure TfrmEGDSRass.qrEGDSRassNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('GDS_CODE').AsString := AbGdsCode;
  DataSet.FieldByName('CUSTTYPE_CODE11').AsString := AbCTCode;
end;

procedure TfrmEGDSRass.qrEGDSRassBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('GDS_FROMDATE').AsInteger > DataSet.FieldByName('GDS_TODATE').AsInteger then
  begin
    MbError(InvalidDate);
    DBGrid1.SelectedField := DataSet.FieldByName('GDS_FROMDATE');
    Abort;
  end;
end;

procedure TfrmEGDSRass.qrEGDSRassCLEARING_DATEValidate(Sender: TField);
begin
  if Sender.AsFloat > 99999999 then
  begin
    MbError(OutOfRange);
    Abort;
  end;
end;

procedure TfrmEGDSRass.SpeedButton1Click(Sender: TObject);
var
  Code: string;
begin
  if HelpSalesChannle(Code) then
  begin
    DBEdit1.SetFocus;
    with qrEGDSRass do
    begin
      Edit;
      FieldByName('CUSTTYPE_CODE11').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEGDSRass.Panel1Exit(Sender: TObject);
begin
  with qrEGDSRass do
  begin
    AbGdsCode := FieldByName('GDS_CODE').AsString;
    AbCTCode := FieldByName('CUSTTYPE_CODE11').AsString;
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM GOODSRAAS_T');
    SQL.Add('WHERE GDS_CODE = :SBGDSCODE');
    SQL.Add('  AND CUSTTYPE_CODE11 = :SBCTCODE');
    ParamByName('SBGDSCODE').AsString := AbGdsCode;
    ParamByName('SBCTCODE').AsString := AbCTCode;
    Open;
    if IsEmpty then
    begin
      Edit;
      FieldByName('GDS_CODE').AsString := AbGdsCode;
      FieldByName('CUSTTYPE_CODE11').AsString := AbCTCode;
    end;
  end;
end;

procedure TfrmEGDSRass.DBEdit1Exit(Sender: TObject);
begin
  if GetChannleName(qrEGDSRass.FieldByName('CUSTTYPE_CODE11').AsString) = '' then
  begin
    MbError(InvalidCode);
    DBEdit1.SetFocus;
    Exit;
  end;
end;

procedure TfrmEGDSRass.dbedGdsCodeExit(Sender: TObject);
begin
  if FindGdsFDesc(qrEGDSRass.FieldByName('GDS_CODE').AsString) = '' then
  begin
    MbError(InvalidCode);
    DBEdit1.SetFocus;
    Exit;
  end;
end;

end.
