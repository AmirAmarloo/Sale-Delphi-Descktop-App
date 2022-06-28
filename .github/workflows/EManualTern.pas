{$I Direct.Inc}
unit EManualTern;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, Grids, DBGrids, DB,
  DBTables, Mask, DBCtrls, {$I MbUses.Inc};

type
  TfrmEManualTern = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    sbExportToExcel: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    DBGrid1: TDBGrid;
    qrEManualTern: TQuery;
    usEManualTern: TUpdateSQL;
    dsEManualTern: TDataSource;
    qrEManualTernM_YEAR: TFloatField;
    qrEManualTernM_CUSTNO: TFloatField;
    qrEManualTernM_DEBIT: TFloatField;
    qrEManualTernM_CREDIT: TFloatField;
    qrEManualTernCF_CUSTNAME: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    sbCustNo: TSpeedButton;
    qrEManualTernM_DESC: TStringField;
    btnDelete: TBitBtn;
    qEManualEXP: TQuery;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField1: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField2: TStringField;
    qrEManualTernM_SEQ: TFloatField;
    qrEManualTernM_DATE: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbExitClick(Sender: TObject);
    procedure sbCustNoClick(Sender: TObject);
    procedure qrEManualTernCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure qrEManualTernNewRecord(DataSet: TDataSet);
    procedure qrEManualTernBeforePost(DataSet: TDataSet);
    procedure BtnPostClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure sbExportToExcelClick(Sender: TObject);
    procedure qrEManualTernM_DATEValidate(Sender: TField);
  private
    MCustNo: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEManualTern: TfrmEManualTern;

implementation

uses Utility, UMessage, Vars, Help, Functions, Utitlty;

{$R *.dfm}

procedure TfrmEManualTern.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEManualTern.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEManualTern.sbCustNoClick(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomer(Code) then
  begin
    DBEdit1.SetFocus;
    with qrEManualTern do
    begin
      Edit;
      FieldByName('M_CUSTNO').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEManualTern.qrEManualTernCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_CUSTNAME').AsString := FindCusName(Dataset.FieldByName('M_CUSTNO').AsString);
end;

procedure TfrmEManualTern.FormShow(Sender: TObject);
begin
  SelectEmpty(qrEManualTern, 'MANUALTERN_T');
end;

procedure TfrmEManualTern.DBEdit1Exit(Sender: TObject);
begin
  with qrEManualTern do
  begin
    MCustNo := FieldByname('M_CUSTNO').AsString;
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM MANUALTERN_T');
    SQL.Add('WHERE M_YEAR = :YEAR');
    SQL.Add('  AND M_CUSTNO = :MCUSTNO');
    ParamByName('YEAR').AsInteger := System_YY;
    ParamByName('MCUSTNO').AsString := MCustNo;
    Open;
    if IsEmpty then
    begin
      Edit;
      FieldByname('M_CUSTNO').AsString := MCustNo;
    end;
  end;
end;

procedure TfrmEManualTern.qrEManualTernNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('M_CUSTNO').AsString := MCustNo;
  DataSet.FieldByName('M_YEAR').AsInteger := System_YY;
end;

procedure TfrmEManualTern.qrEManualTernBeforePost(DataSet: TDataSet);
begin
  if (DataSet.FieldByName('M_DEBIT').AsInteger <> 0) and
     (DataSet.FieldByName('M_CREDIT').AsInteger <> 0) then
  begin
    MbError('œ— Ìò —œÌ› ‰»«Ìœ »—«Ì »œÂò«— Ê »” «‰ò«— „ﬁœ«— Ê«—œ ò‰Ìœ');
    DBGrid1.SetFocus;
    Abort;
  end;
end;

procedure TfrmEManualTern.BtnPostClick(Sender: TObject);
var
  I: Integer;
begin
  I := 0;
  with qrEManualTern do
  begin
    First;
    while not Eof do
    begin
      Inc(I);
      Edit;
      FieldByName('M_SEQ').AsInteger := I;
      Next;
    end;
    ApplyUpdates;
  end;
  SelectEmpty(qrEManualTern, 'MANUALTERN_T');
  DBEdit1.SetFocus;
  MCustNo := '';
end;

procedure TfrmEManualTern.btnDeleteClick(Sender: TObject);
begin
  qrEManualTern.Delete;
  qrEManualTern.ApplyUpdates;
end;

procedure TfrmEManualTern.sbExportToExcelClick(Sender: TObject);
begin
  with qEManualEXP do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM MANUALTERN_T');
    SQL.Add('WHERE M_YEAR = :YEAR');
    SQL.Add('ORDER BY M_CUSTNO, M_SEQ');
    ParamByName('YEAR').AsInteger := System_YY;
    Open;
  end;
  ExportToExcel(qEManualEXP);
end;

procedure TfrmEManualTern.qrEManualTernM_DATEValidate(Sender: TField);
begin
  if Sender.AsString <> '' then
    if not MsDateIsValid1(Sender.AsString, False) then
    begin
      MbMessage(InvalidDate, mtError, [mbOk], mbOk);
      Abort;
    end;
end;

end.
