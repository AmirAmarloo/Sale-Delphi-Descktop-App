{$I Direct.Inc}
unit EPenalty;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, Grids, DBGrids, Mask,
  DBCtrls, DMUDataEntry, Db, DBTables, {$I MbUses.Inc};

type
  TfrmEPenalty = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    dbedVCode: TDBEdit;
    DBEdit2: TDBEdit;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dbedVCodeExit(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
  private
    { Private declarations }
    FDM_DataEntry: TDM_DataEntry;
    IsLock: Boolean;
    DelFlag: Boolean;
    PVCode: String;
    procedure qrEPenaltyBeforeScroll(DataSet: TDataSet);
    procedure qrEPenaltyBeforeDelete(DataSet: TDataSet);
    procedure qrEPenaltyAfterDelete(DataSet: TDataSet);
    procedure qrEPenaltyOnNewRecord(DataSet: TDataSet);
  public
    { Public declarations }
  end;

var
  frmEPenalty: TfrmEPenalty;

implementation

uses Utility, Functions, Vars, Help, UMessage;

{$R *.dfm}

procedure TfrmEPenalty.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEPenalty.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEPenalty.FormCreate(Sender: TObject);
begin
  FDM_DataEntry := TDM_DataEntry(MbDM.GetDM(FDM));
  with FDM_DataEntry.qrEPenalty do
  begin
    BeforeScroll := qrEPenaltyBeforeScroll;
    BeforeDelete := qrEPenaltyBeforeDelete;
    AfterDelete :=  qrEPenaltyAfterDelete;
    OnNewRecord :=  qrEPenaltyOnNewRecord;
  end;
end;

procedure TfrmEPenalty.FormShow(Sender: TObject);
begin
  SelectEmpty(FDM_DataEntry.qrEPenalty, 'PENALTY_T');
  DelFlag := True;
end;

procedure TfrmEPenalty.SpeedButton1Click(Sender: TObject);
var
  Code: string;
begin
  if HelpVisitor(Code) then
  begin
    dbedVCode.SetFocus;
    with FDM_DataEntry.qrEPenalty do
    begin
      Edit;
      FieldByName('PN_VCODE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEPenalty.dbedVCodeExit(Sender: TObject);
begin
  if GetVisitorName(FDM_DataEntry.qrEPenalty.FieldByName('PN_VCODE').AsString) = '' then
  begin
    MbError(InvalidCode);
    dbedVCode.SetFocus;
    Exit;
  end;
  with FDM_DataEntry.qrEPenalty do
  begin
    PVCode := FieldByName('PN_VCODE').AsString;
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PENALTY_T');
    SQL.Add('WHERE PN_VCODE = :PNCODE');
    ParamByName('PNCODE').AsString := PVCode;
    Open;
    if IsEmpty then
    begin
      Edit;
      FieldByName('PN_VCODE').AsString := PVCode;
    end;
  end;
end;

procedure TfrmEPenalty.BtnPostClick(Sender: TObject);
begin
  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);
  try
    FDM_DataEntry.qrEPenalty.ApplyUpdates;
    MbDB.Commit(FDB);
  except
    on E: Exception do
    begin
      MbError(ExpHandleM(E));
      MbDB.RollBack(FDB);
    end;
  end;
end;

procedure TfrmEPenalty.BtnDelClick(Sender: TObject);
begin
  FDM_DataEntry.qrEPenalty.Delete;
  FDM_DataEntry.qrEPenalty.ApplyUpdates;
end;

procedure TfrmEPenalty.qrEPenaltyBeforeScroll(DataSet: TDataSet);
begin
  if not DelFlag then
    Exit;
  if IsRowDuplicate(DBGrid1, ['PN_DATE']) then
  begin
    MbError(RepeatedError);
    DBGrid1.SelectedIndex := 0;
    Abort;
  end;
end;

procedure TfrmEPenalty.qrEPenaltyBeforeDelete(DataSet: TDataSet);
begin
  DelFlag := False;
end;

procedure TfrmEPenalty.qrEPenaltyAfterDelete(DataSet: TDataSet);
begin
  DelFlag := True;
end;

procedure TfrmEPenalty.qrEPenaltyOnNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('PN_VCODE').AsString := PVCode;
end;

procedure TfrmEPenalty.sbFirstClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_DataEntry.qrEPenalty.DisableControls;
  try
    with FDM_DataEntry do
    begin
      if not CheckChanges(qrEPenalty, qrEPenalty, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEPenalty, 'PENALTY_T', 1, Ord(_First), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
      PVCode := qrEPenalty.FieldByName('PN_VCODE').AsString;
    end;
  finally
    FDM_DataEntry.qrEPenalty.EnableControls;
  end;
end;

procedure TfrmEPenalty.sbPrevClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_DataEntry.qrEPenalty.DisableControls;
  try
    with FDM_DataEntry do
    begin
      if not CheckChanges(qrEPenalty, qrEPenalty, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEPenalty, 'PENALTY_T', 1, Ord(_Prev), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
      PVCode := qrEPenalty.FieldByName('PN_VCODE').AsString;
    end;
  finally
    FDM_DataEntry.qrEPenalty.EnableControls;
  end;
end;

procedure TfrmEPenalty.sbNextClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_DataEntry.qrEPenalty.DisableControls;
  try
    with FDM_DataEntry do
    begin
      if not CheckChanges(qrEPenalty, qrEPenalty, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEPenalty, 'PENALTY_T', 1, Ord(_Next), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
      PVCode := qrEPenalty.FieldByName('PN_VCODE').AsString;
    end;
  finally
    FDM_DataEntry.qrEPenalty.EnableControls;
  end;
end;

procedure TfrmEPenalty.sbLastClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_DataEntry.qrEPenalty.DisableControls;
  try
    with FDM_DataEntry do
    begin
      if not CheckChanges(qrEPenalty, qrEPenalty, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEPenalty, 'PENALTY_T', 1, Ord(_Last), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
      PVCode := qrEPenalty.FieldByName('PN_VCODE').AsString;
    end;
  finally
    FDM_DataEntry.qrEPenalty.EnableControls;
  end;
end;

end.
