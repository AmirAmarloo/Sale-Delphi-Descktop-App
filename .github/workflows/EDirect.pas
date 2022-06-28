{$I Direct.Inc}
unit EDirect;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus, DbTables, {$I MbUses.Inc};

type
  TfrmEDirect = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    dbgrEDirect: TDBGrid;
    qrEDirect: TQuery;
    usEDirect: TUpdateSQL;
    dsEDirect: TDataSource;
    qrEDirectDR_CODE: TFloatField;
    qrEDirectDR_DESC: TStringField;
    qrEDirectDR_LENGTH: TFloatField;
    qrEDirectDR_CUSTTYPE: TFloatField;
    qrEDirectCF_CUSTTYPEDESC: TStringField;
    qrEDirectSEND_STAT: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure qrEDirectBeforeScroll(DataSet: TDataSet);
    procedure qrEDirectBeforeDelete(DataSet: TDataSet);
    procedure qrEDirectAfterDelete(DataSet: TDataSet);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure sbExitClick(Sender: TObject);
    procedure qrEDirectDR_CODEValidate(Sender: TField);
    procedure qrEDirectDR_LENGTHValidate(Sender: TField);
    procedure dbgrEDirectEditButtonClick(Sender: TObject);
    procedure qrEDirectCalcFields(DataSet: TDataSet);
    procedure qrEDirectDR_CUSTTYPEValidate(Sender: TField);
    procedure qrEDirectBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    DelFlag: Boolean;
  public
    { Public declarations }
  end;

var
  frmEDirect: TfrmEDirect;

implementation

uses Utility, UMessage, Functions, Help, Utitlty, Vars;

{$R *.dfm}

procedure TfrmEDirect.FormShow(Sender: TObject);
begin
  with qrEDirect do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM DIRECT_T');
    SQL.Add('ORDER BY DR_CODE');
    Open;
  end;
  DelFlag := True;
end;

procedure TfrmEDirect.qrEDirectBeforeScroll(DataSet: TDataSet);
begin
  if not DelFlag then
    Exit;
  if IsRowDuplicate(dbgrEDirect, ['DR_CODE', 'DR_CUSTTYPE']) then
  begin
    MbError(RepeatedError);
    dbgrEDirect.SelectedIndex := 0;
    Abort;
  end;
end;

procedure TfrmEDirect.qrEDirectBeforeDelete(DataSet: TDataSet);
begin
  DelFlag := False;
end;

procedure TfrmEDirect.qrEDirectAfterDelete(DataSet: TDataSet);
begin
  DelFlag := True;
end;

procedure TfrmEDirect.BtnPostClick(Sender: TObject);
begin
  if CheckNullFields(qrEDirect, Copy(SchemaName, 1, Length(SchemaName) - 1), 'DIRECT_T') then Exit;
  qrEDirect.Edit;
  qrEDirect.FieldByName('SEND_STAT').AsInteger := 2;
  qrEDirect.ApplyUpdates;
end;

procedure TfrmEDirect.BtnDelClick(Sender: TObject);
begin
  with qrEDirect do
  begin
    First;
    while not Eof do
    begin
      Delete;
      Next;
    end;
    ApplyUpdates;
  end;
end;

procedure TfrmEDirect.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEDirect.qrEDirectDR_CODEValidate(Sender: TField);
begin
  if Sender.AsInteger > 999999 then
  begin
    MbError(OutOfRange);
    Abort;
  end;
end;

procedure TfrmEDirect.qrEDirectDR_LENGTHValidate(Sender: TField);
begin
  if Sender.AsInteger > 999999.999 then
  begin
    MbError(OutOfRange);
    Abort;
  end;
end;

procedure TfrmEDirect.dbgrEDirectEditButtonClick(Sender: TObject);
var
  Code: String;
begin
  if HelpCustomerType(Code) then
  begin
    with qrEDirect do
    begin
      Edit;
      FieldByName('DR_CUSTTYPE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEDirect.qrEDirectCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_CUSTTYPEDESC').AsString := FindCustTypeDesc(DataSet.FieldByName('DR_CUSTTYPE').AsString);
end;

procedure TfrmEDirect.qrEDirectDR_CUSTTYPEValidate(Sender: TField);
begin
  if FindCustTypeDesc(qrEDirect.FieldByName('DR_CUSTTYPE').AsString) = '' then
  begin
    MbError(InvalidCode);
    Abort;
  end;
end;

procedure TfrmEDirect.qrEDirectBeforePost(DataSet: TDataSet);
begin
  if Copy(DataSet.FieldByName('DR_CODE').AsString, 1, 2) <> BranchCode then
    DataSet.FieldByName('DR_CODE').AsString := DataSet.FieldByName('DR_CODE').AsString;
end;

end.
