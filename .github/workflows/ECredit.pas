{$I Direct.Inc}
unit ECredit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus, DbTables, {$I MbUses.Inc};

type
  TfrmECredit = class(TMbForm)
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
    qrECredit: TQuery;
    usECredit: TUpdateSQL;
    dsECredit: TDataSource;
    qrECreditCR_CUST: TFloatField;
    qrECreditCR_TRYE: TFloatField;
    qrECreditCR_OWNERTYPE: TFloatField;
    qrECreditCR_SARGHOFLI: TFloatField;
    qrECreditCR_LICENCENO: TStringField;
    qrECreditCR_LICENCEDATE: TStringField;
    qrECreditCR_LICENCEOWNER: TStringField;
    qrECreditCR_LICENCEEXP: TFloatField;
    qrECreditCR_COOPERATION: TStringField;
    qrECreditCR_METER: TFloatField;
    qrECreditCR_SARGHOFLIP_RICE: TFloatField;
    qrECreditCR_INVEST: TFloatField;
    qrECreditCR_CREDIT: TFloatField;
    Label1: TLabel;
    dbedCRCust: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    GroupBox1: TGroupBox;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    qrECreditCF_CUSTNAME: TStringField;
    DBEdit2: TDBEdit;
    sbSearch: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbedCRCustExit(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure qrECreditCalcFields(DataSet: TDataSet);
    procedure sbSearchClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
  private
    { Private declarations }
   IsLock : Boolean;
  public
    { Public declarations }
  end;

var
  frmECredit: TfrmECredit;

implementation

uses Functions, UMessage, Utility, Help, EParam;

{$R *.dfm}

procedure TfrmECredit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmECredit.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmECredit.FormShow(Sender: TObject);
begin
  SelectEmpty(qrECredit, 'CREDIT_T');
end;

procedure TfrmECredit.dbedCRCustExit(Sender: TObject);
begin
  if FindCusName(qrECredit.FieldByName('CR_CUST').AsString) = '' then
  begin
    MbError(InvalidCode);
    dbedCRCust.SetFocus;
  end;
  SelectData(qrECredit, 'CREDIT_T', 'TRUE', '');
end;

procedure TfrmECredit.BtnPostClick(Sender: TObject);
begin
  if CheckNullFields(qrECredit, 'SALES', 'CREDIT_T') then Exit;
  qrECredit.ApplyUpdates;
  SelectEmpty(qrECredit, 'CREDIT_T');
  dbedCRCust.SetFocus;
end;

procedure TfrmECredit.qrECreditCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_CUSTNAME').AsString := FindCusName(DataSet.FieldByName('CR_CUST').AsString);
end;

procedure TfrmECredit.sbSearchClick(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomer(Code) then
  begin
    dbedCRCust.SetFocus;
    with qrECredit do
    begin
      Edit;
      FieldByName('CR_CUST').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmECredit.BtnDelClick(Sender: TObject);
begin
  qrECredit.Delete;
  qrECredit.ApplyUpdates;
end;

procedure TfrmECredit.sbLastClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrECredit.DisableControls;
  try
    if not CheckChanges(qrECredit, qrECredit, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrECredit, 'CREDIT_T', 1, Ord(_Last), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrECredit.EnableControls;
  end;
end;

procedure TfrmECredit.sbNextClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrECredit.DisableControls;
  try
    if not CheckChanges(qrECredit, qrECredit, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrECredit, 'CREDIT_T', 1, Ord(_Last), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrECredit.EnableControls;
  end;
end;

procedure TfrmECredit.sbPrevClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrECredit.DisableControls;
  try
    if not CheckChanges(qrECredit, qrECredit, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrECredit, 'CREDIT_T', 1, Ord(_Prev), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrECredit.EnableControls;
  end;
end;

procedure TfrmECredit.sbFirstClick(Sender: TObject);
var
  Btntype: Integer;
begin
  qrECredit.DisableControls;
  try
    if not CheckChanges(qrECredit, qrECredit, FDB) then
      Exit;
    IsLock := True;
    Btntype := AutoNavigate(FDB, qrECredit, 'CREDIT_T', 1, Ord(_First), IsLock);
    ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
  finally
    qrECredit.EnableControls;
  end;
end;

end.
