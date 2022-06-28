{$I Direct.Inc}
unit EDistOnRow;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, DB, DBTables, Mask,
  DBCtrls, Grids, DBGrids, {$I MbUses.Inc};

type
  TfrmEDistOnRow = class(TMbForm)
    panButton: TPanel;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    sbExit: TSpeedButton;
    sbExportToExcel: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    sbList: TSpeedButton;
    DBEdit2: TDBEdit;
    qrEDistOnRow: TQuery;
    usEDistOnRow: TUpdateSQL;
    dsEDistOnRow: TDataSource;
    qrEDistOnRowCUSTNO: TFloatField;
    qrEDistOnRowGDS_CODE: TStringField;
    qrEDistOnRowFROMDATE: TStringField;
    qrEDistOnRowTODATE: TStringField;
    qrEDistOnRowDIST_PERSENT: TFloatField;
    qrEDistOnRowCF_CUSTNAME: TStringField;
    qrEDistOnRowCF_GDSDESCF: TStringField;
    btnDelete: TBitBtn;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    Button1: TButton;
    qrEDistOnRowDIS_CASH: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbExitClick(Sender: TObject);
    procedure qrEDistOnRowFROMDATEValidate(Sender: TField);
    procedure qrEDistOnRowDIST_PERSENTValidate(Sender: TField);
    procedure qrEDistOnRowGDS_CODEValidate(Sender: TField);
    procedure qrEDistOnRowCalcFields(DataSet: TDataSet);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure qrEDistOnRowNewRecord(DataSet: TDataSet);
    procedure sbListClick(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CustNoDistRow: String;
    IsLock: Boolean;
  end;

var
  frmEDistOnRow: TfrmEDistOnRow;

implementation

uses Help, Functions, Vars, UMessage, Utility, Utitlty;

{$R *.dfm}

procedure TfrmEDistOnRow.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEDistOnRow.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEDistOnRow.qrEDistOnRowFROMDATEValidate(Sender: TField);
begin
  if not MsDateIsValid1(Sender.AsString, False) then
  begin
    MbError(InvalidDate);
    Abort;
  end;
end;

procedure TfrmEDistOnRow.qrEDistOnRowDIST_PERSENTValidate(Sender: TField);
begin
  if Sender.AsFloat > 99.99 then
  begin
    MbError(OutOfRange);
    Abort;
  end;
end;

procedure TfrmEDistOnRow.qrEDistOnRowGDS_CODEValidate(Sender: TField);
begin
  if FindGdsFDesc(Sender.AsString) = '' then
  begin
    MbError(InvalidCode);
    Abort;
  end;
end;

procedure TfrmEDistOnRow.qrEDistOnRowCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_CUSTNAME').AsString := FindCusName(qrEDistOnRow.FieldByName('CUSTNO').AsString);
  DataSet.FieldByName('CF_GDSDESCF').AsString := FindGdsFDesc(qrEDistOnRow.FieldByName('GDS_CODE').AsString);
end;

procedure TfrmEDistOnRow.DBEdit1Exit(Sender: TObject);
begin
  if qrEDistOnRow.FieldByName('CUSTNO').AsString = '' then Exit;
  if FindCusName(qrEDistOnRow.FieldByName('CUSTNO').AsString) = '' then
  begin
    MbError(InvalidCode);
    DBEdit1.SetFocus;
  end;
  with qrEDistOnRow do
  begin
    CustNoDistRow := FieldByName('CUSTNO').AsString;
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM DISTONROWCUST_T');
    SQL.Add('WHERE CUSTNO = :CUSTNODISROW');
    ParamByName('CUSTNODISROW').AsString := CustNoDistRow;
    Open;
    if IsEmpty then
    begin
      Edit;
      FieldByName('CUSTNO').AsString := CustNoDistRow;
    end;
  end;
end;

procedure TfrmEDistOnRow.FormShow(Sender: TObject);
begin
  SelectEmpty(qrEDistOnRow, 'DISTONROWCUST_T');
end;

procedure TfrmEDistOnRow.BtnPostClick(Sender: TObject);
begin
  qrEDistOnRow.ApplyUpdates;
  SelectEmpty(qrEDistOnRow, 'DISTONROWCUST_T');
  CustNoDistRow := '';
  DBEdit1.SetFocus;
end;

procedure TfrmEDistOnRow.btnDeleteClick(Sender: TObject);
begin
  qrEDistOnRow.Delete;
  qrEDistOnRow.ApplyUpdates;
  SelectEmpty(qrEDistOnRow, 'DISTONROWCUST_T');
  CustNoDistRow := '';
  DBEdit1.SetFocus;
end;

procedure TfrmEDistOnRow.qrEDistOnRowNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('CUSTNO').AsString := CustNoDistRow;
end;

procedure TfrmEDistOnRow.sbListClick(Sender: TObject);
var
  Code: string;
begin
  DBEdit1.SetFocus;
  if HelpCustomer(Code) then
  begin
    qrEDistOnRow.Edit;
    qrEDistOnRow.FieldByName('CUSTNO').AsString := Code;
  end;
  SelectNext(ActiveControl, True, True);
end;

procedure TfrmEDistOnRow.DBGrid1EditButtonClick(Sender: TObject);
var
  Code: string;
begin
  if HelpGds(Code) then
  begin
    qrEDistOnRow.Edit;
    qrEDistOnRow.FieldByName('GDS_CODE').AsString := Code;
  end;
  SelectNext(ActiveControl, True, True);
end;

procedure TfrmEDistOnRow.sbFirstClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEDistOnRow.DisableControls;
  try
    IsLock := True;
    Btntype := AutoNavigate(0, qrEDistOnRow, 'DISTONROWCUST_T', 1, Ord(_First), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEDistOnRow.EnableControls;
  end;
end;

procedure TfrmEDistOnRow.sbPrevClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEDistOnRow.DisableControls;
  try
    IsLock := True;
    Btntype := AutoNavigate(0, qrEDistOnRow, 'DISTONROWCUST_T', 1, Ord(_Prev), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEDistOnRow.EnableControls;
  end;
end;

procedure TfrmEDistOnRow.sbNextClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEDistOnRow.DisableControls;
  try
    IsLock := True;
    Btntype := AutoNavigate(0, qrEDistOnRow, 'DISTONROWCUST_T', 1, Ord(_Next), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEDistOnRow.EnableControls;
  end;
end;

procedure TfrmEDistOnRow.sbLastClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrEDistOnRow.DisableControls;
  try
    IsLock := True;
    Btntype := AutoNavigate(0, qrEDistOnRow, 'DISTONROWCUST_T', 1, Ord(_Last), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrEDistOnRow.EnableControls;
  end;
end;

procedure TfrmEDistOnRow.Button1Click(Sender: TObject);
var
  Code: string;
begin
  if HelpEDistOnRow(Code, qrEDistOnRow.FieldByName('CUSTNO').AsString) then
    SelectNext(ActiveControl, True, True);
end;

end.
