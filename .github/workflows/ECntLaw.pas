{$I Direct.Inc}
unit ECntLaw;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus,DbTables, {$I MbUses.Inc}, DMUContract;

type
  TFrmECntLaw = class(TMbForm)
    panButton: TPanel;
    stbMain: TStatusBar;
    dbgrCntLaw: TDBGrid;
    BtnPost: TBitBtn;
    SpdBtnExit: TSpeedButton;
    Panel1: TPanel;
    Label1: TLabel;
    edCntCode: TEdit;
    btnDelete: TBitBtn;
    PMen: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpdBtnExitClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnDeleteClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    FDM_Contract: TDM_Contract;
    CntCode: string;
    DelFlag, IsLock: Boolean;
    procedure LowIDValidate(Sender: TField);
    procedure FBeforePost(DataSet: TDataSet);
    procedure FBeforeScroll(DataSet: TDataSet);
    procedure FBeforeDelete(DataSet: TDataSet);
    procedure FAfterDelete(DataSet: TDataSet);
    procedure FStateChange(Sender: TObject);
    procedure FUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
  public
    { Public declarations }
    DbHandle: TMbHandle;
  end;

var
  FrmECntLaw: TFrmECntLaw;

implementation

uses MainUnit, HCustom, HBidVch, Utility, Vars, UMessage,
  Functions, Help, ECnt;

{$R *.DFM}

procedure TFrmECntLaw.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) And (ActiveControl <> dbgrCntLaw) then
  begin
    SelectNext(ActiveControl, True, True);
    Key := #0;
  end;
end;

procedure TFrmECntLaw.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmECntLaw.SpeedButton2Click(Sender: TObject);
begin
  MainForm.acHCustom.Execute;
  FrmHCustom.ShowModal;
end;

procedure TFrmECntLaw.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TFrmECntLaw.FormCreate(Sender: TObject);
begin
  FDM_Contract:= TDM_Contract(MbDM.GetDM(FDM));
  SetStatusBar(stbMain);
  SetFormColor(Self,_FormColor);
  with TfrmECnt(MbFM.GetFM(ParentFrm)).FDM_Contract.qrEContract do
    CntCode:= FieldByName('CNTCODE').AsString;

  with FDM_Contract.qrECntLaw do
  begin
    FieldbyName('LOWID').OnValidate:= LowIDValidate;
    BeforePost:= FBeforePost;
    BeforeScroll:= FBeforeScroll;
    BeforeDelete:= FBeforeDelete;
    AfterDelete:= FAfterDelete;
    OnUpdateError:= FUpdateError;
  end;

  with FDM_Contract.dsECntLaw do
  begin
    OnStateChange:= nil;
    OnStateChange:= FStateChange;
  end;
end;

procedure TFrmECntLaw.FormShow(Sender: TObject);
begin
  edCntCode.Text:= CntCode;
  IsLock:= False;
  DelFlag:= True;
  with FDM_Contract.qrECntLaw, SQL do
  begin
    Clear;
    Add('SELECT *');
    Add('FROM PSSALES.BYLOW_T');
    Add('WHERE');
    Add('     CNTCODE = :CNTCODE');
    Add('FOR UPDATE NOWAIT');
    ParamByName('CNTCODE').Asstring:= CntCode;
    SQL:= MbSqlConvert(SQL);
    try
      Open;
    except
      on E: Exception do
      begin
        if Pos('ORA-00054', E.Message) > 0 then
        begin
          MbError(LockRecord);
          IsLock:= True;
          Close;
          Delete(Count - 1);
          SQL:= MbSqlConvert(SQL);
          Open;
        end
      end;
    end;
  end;

  dbgrCntLaw.SetFocus;
end;

procedure TFrmECntLaw.LowIDValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
    if (Sender.AsFloat > 99) or (Sender.AsFloat < 0) then
    begin
      MbError(RangeErr);
      Abort;
    end;
end;

procedure TFrmECntLaw.FBeforePost(DataSet: TDataSet);
begin
  with DataSet do
  begin
    if FieldByName('LOWID').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrCntLaw.SetFocus;
      dbgrCntLaw.SelectedIndex:= 0;
      Abort;
    end;

    if FieldByName('LOWDESC').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrCntLaw.SetFocus;
      dbgrCntLaw.SelectedIndex:= 1;
      Abort;
    end;

    Edit;
    FieldByName('CNTCODE').AsString:= CntCode;
  end;
end;

procedure TFrmECntLaw.FBeforeScroll(DataSet: TDataSet);
begin
  if not DelFlag then Exit;

  if IsRowDuplicate(dbgrCntLaw, ['LOWID']) then
  begin
    MbError(RepeatedError);
    dbgrCntLaw.SetFocus;
    dbgrCntLaw.SelectedIndex:= 0;
    Abort;
  end;
end;

procedure TFrmECntLaw.FAfterDelete(DataSet: TDataSet);
begin
  DelFlag:= True;
end;

procedure TFrmECntLaw.FBeforeDelete(DataSet: TDataSet);
begin
  DelFlag:= False;
end;

procedure TFrmECntLaw.BtnPostClick(Sender: TObject);
begin
  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_Contract.qrECntLaw do
    begin
      ApplyUpdates;
    end;

    MbDB.Commit(FDB);

    dbgrCntLaw.SetFocus;
    btnPost.Enabled:= False;
    Close;
  except
    MbDB.RollBack(FDB);
  end;
end;

procedure TFrmECntLaw.FStateChange(Sender: TObject);
begin
  with FDM_Contract do
    G_StateChange(qrECntLaw, qrECntLaw, btnPost, btnDelete);
end;

procedure TFrmECntLaw.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= CheckChanges(FDM_Contract.qrECntLaw, FDM_Contract.qrECntLaw, FDM);
end;

procedure TFrmECntLaw.FUpdateError(DataSet: TDataSet; E: EDatabaseError;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
  MbError(ExpHandleM(E));
  Abort;
end;

procedure TFrmECntLaw.btnDeleteClick(Sender: TObject);
var
  FQuery: TQuery;
begin
  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if MbMessage(DeleteConfirm, mtWarning, [mbYes,mbNo], mbNo) = mrYes then
  begin
    if not MbDB.InTransaction[FDB] then
      MbDB.StartTransaction(FDB);

    FQuery:= TQuery.Create(Self);
    try
      FQuery.DataBaseName:= MbDB.DataBaseName[FDB];
      try
        with FQuery, SQL do
        begin
          Clear;
          Add('DELETE FROM PSSALES.BYLOW_T');
          Add('WHERE');
          Add('     CNTCODE = :CNTCODE');
          ParamByName('CNTCODE').AsString:= CntCode;
          SQL:= MbSqlConvert(SQL);
          ExecSql;
        end;

        SelectEmpty(FDM_Contract.qrECntLaw, 'BYLOW_T');
        dbgrCntLaw.SetFocus;
        MbDB.Commit(FDB);
      except
        on E: Exception do
        begin
          MbDB.RollBack(FDB);
          MbError(ExpHandleM(E));
        end;
      end;
    finally
     FQuery.Free;
    end;
  end;
end;

procedure TFrmECntLaw.N1Click(Sender: TObject);
begin
  dbgrCntLaw.DataSource.DataSet.Insert;
end;

procedure TFrmECntLaw.N2Click(Sender: TObject);
begin
  dbgrCntLaw.DataSource.DataSet.Delete;
end;

end.
