{$I Direct.Inc}
unit ESecGoodPrc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, Grids, DBGrids, Mask,
  DBCtrls, DB, DBTables, {$I MbUses.Inc};

type
  TfrmESecGoodPrc = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    sbExportToExcel: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    SpeedButton8: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    qrESecGoodPrc: TQuery;
    usESecGoodPrc: TUpdateSQL;
    dsESecGoodPrc: TDataSource;
    qrESecGoodPrcS_GDSCODE: TStringField;
    qrESecGoodPrcS_CUSTKIND: TFloatField;
    qrESecGoodPrcS_PRICE: TFloatField;
    qrESecGoodPrcCF_GOODSDESC: TStringField;
    qrESecGoodPrcCF_CUSTKIND: TStringField;
    qrESecGoodPrcS_GDSCODE2: TStringField;
    Label2: TLabel;
    EdStk_code: TEdit;
    Edit2: TEdit;
    sbHStk_Code: TSpeedButton;
    qrTemp: TQuery;
    qrExcel: TQuery;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    qrSave: TQuery;
    Button1: TButton;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Button2: TButton;
    qrESecGoodPrcS_HASDIST: TFloatField;
    DBCheckBox1: TDBCheckBox;
    qrExcelS_GDSCODE: TStringField;
    qrTempS_GDSCODE: TStringField;
    qrTempS_CUSTKIND: TFloatField;
    qrTempS_PRICE: TFloatField;
    Edit1: TEdit;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbExitClick(Sender: TObject);
    procedure qrESecGoodPrcCalcFields(DataSet: TDataSet);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure qrESecGoodPrcNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure qrESecGoodPrcS_CUSTKINDValidate(Sender: TField);
    procedure qrESecGoodPrcS_PRICEValidate(Sender: TField);
    procedure qrESecGoodPrcS_GDSCODE2Validate(Sender: TField);
    procedure sbHStk_CodeClick(Sender: TObject);
    procedure EdStk_codeExit(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure qrESecGoodPrcS_GDSCODEValidate(Sender: TField);
    procedure sbExportToExcelClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
    CustKindCode, SDate: String;
    NewRecFlag: Boolean;
  public
    { Public declarations }
  end;

var
  frmESecGoodPrc: TfrmESecGoodPrc;

implementation

uses Utility, Utitlty, Help, Functions, UMessage, MainUnit;

{$R *.dfm}

procedure TfrmESecGoodPrc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmESecGoodPrc.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmESecGoodPrc.qrESecGoodPrcCalcFields(DataSet: TDataSet);
begin
  if DataSet.FieldByName('S_GDSCODE').AsString <> '' then
    DataSet.FieldByName('CF_GOODSDESC').AsString := FindGdsFDesc(DataSet.FieldByName('S_GDSCODE').AsString);
  if DataSet.FieldByName('S_CUSTKIND').AsString <> '' then
    DataSet.FieldByName('CF_CUSTKIND').AsString := FindCustTypeDesc(DataSet.FieldByName('S_CUSTKIND').AsString);
end;

procedure TfrmESecGoodPrc.BtnPostClick(Sender: TObject);
begin
  qrESecGoodPrc.ApplyUpdates;
{  with qrSave do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM SECGOODPRC_T');
    SQL.Add('WHERE S_CUSTKIND = :SKCODE');
    ParamByName('SKCODE').AsString := CustKindCode;
    GdsCode := FieldByName('S_GDSCODE').AsString;
    SQL.Add('');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('');
    ParamByName('').AsString :=
    ParamByName('').AsString :=
  end;}

  SelectEmpty(qrESecGoodPrc, 'SECGOODPRC_T');
  CustKindCode := '';
  SDate := '';
  DBEdit1.SetFocus;
end;

procedure TfrmESecGoodPrc.BtnDelClick(Sender: TObject);
begin
  qrESecGoodPrc.Delete;
  qrESecGoodPrc.ApplyUpdates;
  SelectEmpty(qrESecGoodPrc, 'SECGOODPRC_T');
  CustKindCode := '';
  SDate := '';
  DBEdit1.SetFocus;
end;

procedure TfrmESecGoodPrc.qrESecGoodPrcNewRecord(DataSet: TDataSet);
begin
  if not NewRecFlag then Exit;
  DataSet.FieldByName('S_CUSTKIND').AsString := CustKindCode;
  DataSet.FieldByName('S_DATE').AsString := SDate;
end;

procedure TfrmESecGoodPrc.FormShow(Sender: TObject);
begin
  SelectEmpty(qrESecGoodPrc, 'SECGOODPRC_T');
end;

procedure TfrmESecGoodPrc.SpeedButton8Click(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomerType(Code) then
  begin
    with qrESecGoodPrc do
    begin
      Edit;
      FieldByName('S_CUSTKIND').AsString := Code;
    end;
  end;
  SelectNext(ActiveControl, True, True);
end;

procedure TfrmESecGoodPrc.DBGrid1EditButtonClick(Sender: TObject);
var
  Code: string;
begin
  if HelpGds(Code) then
  begin
    qrESecGoodPrc.Edit;
    qrESecGoodPrc.FieldByName('S_GDSCODE').AsString := Code;
  end;
end;

procedure TfrmESecGoodPrc.qrESecGoodPrcS_CUSTKINDValidate(Sender: TField);
begin
{  if Sender.AsInteger > 999999999 then
  begin
    MbError(OutOfRange);
    Abort;
  end;}
end;

procedure TfrmESecGoodPrc.qrESecGoodPrcS_PRICEValidate(Sender: TField);
begin
  if Sender.AsFloat > 9999999999 then
  begin
    MbError(OutOfRange);
    Abort;
  end;
end;

procedure TfrmESecGoodPrc.qrESecGoodPrcS_GDSCODE2Validate(Sender: TField);
begin
{  if not MsDateIsValid1(Sender.AsString, False) then
  begin
    MbMessage(InvalidDate, mtError, [mbOk], mbOk);
    Abort;
  end;}
end;

procedure TfrmESecGoodPrc.sbHStk_CodeClick(Sender: TObject);
var
  Code: string;
begin
  if HelpStk(Code) then
  begin
    EdStk_code.SetFocus;
    EdStk_code.Text:= Code;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmESecGoodPrc.EdStk_codeExit(Sender: TObject);
var
  StkName: String;
begin
  Edit2.Clear;
  if GetStkName(EdStk_code.Text) = '' then
  begin
    MbError(InvalidCode);
    EdStk_code.SetFocus;
    Exit;
  end;
  Edit2.Text := StkName;
end;

procedure TfrmESecGoodPrc.Panel1Exit(Sender: TObject);
var
  GdsCode: String;
begin
  NewRecFlag := True;
  with qrESecGoodPrc do
  begin
    GdsCode := FieldByName('S_GDSCODE').AsString;
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SECGOODPRC_T');
    SQL.Add('WHERE S_CUSTKIND = :SKCODE');
    SQL.Add('  AND S_DATE = :SDATE');
    ParamByName('SKCODE').AsString := CustKindCode;
    ParamByName('SDATE').AsString := SDate;
    Open;
{ $IFNDEF PAKHSH}
{    if IsEmpty then
    begin
      qrTemp.Close;
      qrTemp.SQL.Clear;
      qrTemp.SQL.Add('SELECT DISTINCT GDS_CODE S_GDSCODE, ' + CustKindCode + ' S_CUSTKIND, 0 S_PRICE'); //, '' '' S_DATE');
      qrTemp.SQL.Add('FROM GOODS');
      qrTemp.SQL.Add('WHERE STK_CODE = :STKCODE');
      qrTemp.SQL.Add('  AND GDS_CODE NOT IN (SELECT S_GDSCODE FROM SECGOODPRC_T');
      qrTemp.SQL.Add('                       WHERE S_CUSTKIND = :SKCODE');
      qrTemp.SQL.Add('                         AND S_DATE = :SDATE)');
      qrTemp.ParamByName('STKCODE').AsString := EdStk_code.Text;
      qrTemp.ParamByName('SKCODE').AsString := CustKindCode;
      qrTemp.ParamByName('SDATE').AsString := SDate;
      qrTemp.Open;
      First;
      NewRecFlag := False;
      try
        while not qrTemp.Eof do
        begin
          Insert;
          FieldByName('S_GDSCODE').AsString := qrTemp.FieldByName('S_GDSCODE').AsString;
          FieldByName('S_CUSTKIND').AsString := qrTemp.FieldByName('S_CUSTKIND').AsString;
          FieldByName('S_PRICE').AsString := qrTemp.FieldByName('S_PRICE').AsString;
          FieldByName('S_DATE').AsString := SDate;
          qrTemp.Next;
        end;
      finally
      end;
      NewRecFlag := True;
    end;
    }
{ $ELse}
    if IsEmpty then
    begin
          Edit;
          FieldByName('S_CUSTKIND').AsString := CustKindCode;
          FieldByName('S_DATE').AsString := SDate;
    end;
{ $EndIf}

  end;
end;

procedure TfrmESecGoodPrc.DBEdit1Exit(Sender: TObject);
begin
  CustKindCode := '';
  if FindCustTypeDesc(qrESecGoodPrc.FieldByName('S_CUSTKIND').AsString) = '' then
  begin
    MbError(InvalidCode);
    DBEdit1.SetFocus;
    Exit;
  end;
  CustKindCode := qrESecGoodPrc.FieldByName('S_CUSTKIND').AsString;
end;

procedure TfrmESecGoodPrc.qrESecGoodPrcS_GDSCODEValidate(Sender: TField);
begin
  if FindGdsFDesc(Sender.AsString) = '' then
  begin
    MbError(InvalidCode);
    Abort;
  end;
end;

procedure TfrmESecGoodPrc.DBEdit2Exit(Sender: TObject);
begin
  if not MsDateIsValid1(DBEdit2.Text, False) then
  begin
    MbMessage(InvalidDate, mtError, [mbOk], mbOk);
    DBEdit2.SetFocus;
    DBEdit2.Text := MbUserDate;
    DBEdit2.SelStart := 0;
    Exit;
  end;
  SDate := qrESecGoodPrc.FieldByName('S_DATE').AsString;
end;

procedure TfrmESecGoodPrc.sbExportToExcelClick(Sender: TObject);
var
  GdsCode: String;
begin
  with qrESecGoodPrc do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SECGOODPRC_T');
    Open;
  end;
  ExportToExcel(qrESecGoodPrc);
end;

procedure TfrmESecGoodPrc.Button1Click(Sender: TObject);
begin
  HelpSecGoodPrcRec(qrESecGoodPrc.FieldByName('S_GDSCODE').AsString, qrESecGoodPrc.FieldByName('S_CUSTKIND').AsString);
end;

procedure TfrmESecGoodPrc.Button2Click(Sender: TObject);
begin
  MainForm.acCopySecPrice.Execute;
end;

procedure TfrmESecGoodPrc.Edit1Change(Sender: TObject);
begin
  DBGrid1.DataSource.DataSet.Locate('S_GDSCODE', Edit1.Text, [loPartialKey]);
end;

end.
