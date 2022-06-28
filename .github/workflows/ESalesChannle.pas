{$I Direct.Inc}
unit ESalesChannle;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ComCtrls, ExtCtrls, DBTables,
  DB, Mask, DBCtrls,
  {$I MbUses.Inc};
type
  TfrmESalesChannle = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    qrESalesChannle: TQuery;
    dsESalesChannle: TDataSource;
    usESalesChannle: TUpdateSQL;
    qrESalesChannleSC_CODE: TStringField;
    qrESalesChannleSC_DESC: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SpeedButton2: TSpeedButton;
    qrEChanleCust: TQuery;
    usEChanleCust: TUpdateSQL;
    dsEChanleCust: TDataSource;
    qrEChanleCustSH_CODE: TStringField;
    qrEChanleCustCUSTNO: TFloatField;
    qrEChanleCustCF_CUSTNAME: TStringField;
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure qrEChanleCustCalcFields(DataSet: TDataSet);
    procedure qrEChanleCustCUSTNOValidate(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure qrEChanleCustNewRecord(DataSet: TDataSet);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure sbExitClick(Sender: TObject);
  private
    { Private declarations }
    ScCode: String;
  public
    { Public declarations }
  end;

var
  frmESalesChannle: TfrmESalesChannle;

implementation

uses Help, Utility, UMessage, Functions;

{$R *.dfm}

procedure TfrmESalesChannle.SpeedButton2Click(Sender: TObject);
var
  Code: string;
begin
  if HelpSalesChannle(Code) then
  begin
    with qrESalesChannle do
    begin
      Edit;
      FieldByName('SC_CODE').AsString:= Code;
    end;
  end;
end;

procedure TfrmESalesChannle.DBGrid1EditButtonClick(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomer(Code, -1, '-1', qrEChanleCust.FieldByName('SH_CODE').AsString) then
  begin
    with qrEChanleCust do
    begin
      Edit;
      FieldByName('CUSTNO').AsString:= Code;
    end;
  end;
end;


procedure TfrmESalesChannle.qrEChanleCustCalcFields(DataSet: TDataSet);
begin
  Dataset.FieldByName('CF_CUSTNAME').AsString := FindCusName(Dataset.FieldByName('CUSTNO').AsString);
end;

procedure TfrmESalesChannle.qrEChanleCustCUSTNOValidate(Sender: TField);
begin
  if Sender.AsString = '' then Exit;
  if Sender.AsFloat > 9999999999 then
  begin
    MbError(OutOfRange);
    Abort;
  end;
  if FindCusName(Sender.AsString, '0', '-1', qrEChanleCust.FieldByName('SH_CODE').AsString) = '' then
  begin
    MbError(NoExistRecord);
    Abort;
  end;
end;

procedure TfrmESalesChannle.FormShow(Sender: TObject);
begin
  SelectEmpty(qrESalesChannle, 'SALECHANLE_T');
end;

procedure TfrmESalesChannle.DBEdit1Exit(Sender: TObject);
begin
  ScCode := qrESalesChannle.FieldByName('SC_CODE').AsString;
  if ScCode = '' then
  begin
    DBEdit1.SetFocus;
    Exit;
  end;
  with qrESalesChannle do
  begin
    ScCode := FieldByName('SC_CODE').AsString;
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SALECHANLE_T');
    SQL.Add('WHERE SC_CODE = :SCCODE');
    ParamByName('SCCODE').AsString := ScCode;
    Open;
    if IsEmpty then
    begin
      Edit;
      FieldByName('SC_CODE').AsString := ScCode;
    end;
  end;
  with qrEChanleCust do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CHANLECUST_T');
    SQL.Add('WHERE SH_CODE = :SCCODE');
    ParamByName('SCCODE').AsString := ScCode;
    Open;
    if IsEmpty then
    begin
      Edit;
      FieldByName('SH_CODE').AsString := ScCode;
    end;
  end;
end;

procedure TfrmESalesChannle.qrEChanleCustNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('SH_CODE').AsString := ScCode;
end;

procedure TfrmESalesChannle.BtnPostClick(Sender: TObject);
begin
  qrESalesChannle.ApplyUpdates;
  qrEChanleCust.ApplyUpdates;
  ScCode := '';
  SelectEmpty(qrESalesChannle, 'SALECHANLE_T');
  SelectEmpty(qrEChanleCust, 'CHANLECUST_T');
  DBEdit1.SetFocus;
end;

procedure TfrmESalesChannle.BtnDelClick(Sender: TObject);
begin
  qrEChanleCust.Delete;
  qrESalesChannle.Delete;
  qrESalesChannle.ApplyUpdates;
  qrEChanleCust.ApplyUpdates;
  ScCode := '';
  SelectEmpty(qrESalesChannle, 'SALECHANLE_T');
  SelectEmpty(qrEChanleCust, 'CHANLECUST_T');
  DBEdit1.SetFocus;
end;

procedure TfrmESalesChannle.sbExitClick(Sender: TObject);
begin
  Close;
end;

end.
