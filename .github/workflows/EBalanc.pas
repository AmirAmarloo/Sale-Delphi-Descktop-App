{$I Direct.Inc}
unit EBalanc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ComCtrls, ExtCtrls, Mask, DBCtrls,
  Menus ,DB, DBTables, DMUDataEntry,{$I MbUses.Inc};


type
  TFrmBalanc = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    btnPost: TBitBtn;
    btnDelete: TBitBtn;
    dbgrBalance: TDBGrid;
    Panel1: TPanel;
    dbedMoinDesc: TDBEdit;
    Label2: TLabel;
    dbedTafsilyName: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    dbedCntDesc: TDBEdit;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    cmbSearch: TComboBox;
    meDate: TMaskEdit;
    edSearch: TEdit;
    sbList: TSpeedButton;
    edTotDebit: TEdit;
    edTotCredit: TEdit;
    PMen: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure sbExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrBalanceEnter(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbgrBalanceColEnter(Sender: TObject);
    procedure dbgrBalanceEditButtonClick(Sender: TObject);
    procedure dbgrBalanceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgrBalanceExit(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cmbSearchChange(Sender: TObject);
    procedure sbListClick(Sender: TObject);
    procedure edSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meDateExit(Sender: TObject);
    procedure edSearchExit(Sender: TObject);
  private
    FDM_DataEntry: TDM_DataEntry;
    TafsilyFlag, DelFalg, IsLock: Boolean;
    SeqControl: TMbDbGridControl;
    procedure InitSeqCtrl;
    procedure MyAutoSelect(var AIsLock: Boolean);
    procedure CF_Balance(DataSet: TDataSet);
    procedure DECDTEValidate(Sender: TField);
    procedure CustNoValidate(Sender: TField);
    procedure CntCodeValidate(Sender: TField);
    procedure DebitValidate(Sender: TField);
    procedure CreditValidate(Sender: TField);
    procedure MoinValidate(Sender: TField);
    procedure TafsilyValidate(Sender: TField);
    procedure CalcSum(Sender: TObject);
    procedure RefreshSum;
    procedure FBeforePost(DataSet: TDataSet);
    procedure FOnNewRecord(DataSet: TDataSet);
    procedure DelBalance;
    procedure InsBalance;
    procedure FUpdateError(DataSet: TDataSet;
       E: EDatabaseError; UpdateKind: TUpdateKind;
       var UpdateAction: TUpdateAction);
    procedure FOnStateChange(Sender: TObject);
    function CheckBeforeSave: Boolean;
    procedure FilterData(AIsLock: Boolean);
  public
    { Public declarations }
  end;

var
  FrmBalanc: TFrmBalanc;

implementation

uses Utility, Vars, UMessage, Functions, Help;

{$R *.DFM}

procedure TFrmBalanc.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmBalanc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MbDB.InTransaction[FDB] then
    MbDB.RollBack(FDB);

  Action:= caFree;
end;

procedure TFrmBalanc.FormCreate(Sender: TObject);
begin
  FDM_DataEntry:= TDM_DataEntry(MbDM.GetDM(FDM));
  SetStatusBar(stbMain);

  with FDM_DataEntry.qrEBalance do
  begin
    OnCalcFields:= CF_Balance;
    BeforePost:= FBeforePost;
    OnNewRecord:= FOnNewRecord;
    OnUpdateError:= FUpdateError;
    FieldbyName('CUSTNO').OnValidate:= CustNoValidate;
    FieldbyName('CNTCODE').OnValidate:= CntCodeValidate;
    FieldbyName('DECDEBIT').OnValidate:= DebitValidate;
    FieldbyName('DECCREDIT').OnValidate:= CreditValidate;
    FieldbyName('MOIN_CODE').OnValidate:= MoinValidate;
    FieldbyName('TAFSILY_CODE').OnValidate:= TafsilyValidate;
    FieldByName('DECDTE').OnValidate:= DECDTEValidate;
  end;

  with FDM_DataEntry.dsEBalance do
  begin
    OnStateChange:= nil;
    OnStateChange:= FOnStateChange;
  end;

  InitSeqCtrl;
  SetFormColor(Self,_FormColor);
end;

procedure TFrmBalanc.FormShow(Sender: TObject);
begin
  IsLock:= False;
  DelFalg:= True;
  TafsilyFlag:= True;
  cmbSearch.ItemIndex:= 0;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);
  MyAutoSelect(IsLock);
end;

procedure TFrmBalanc.dbgrBalanceEnter(Sender: TObject);
begin
  if (Sender as TDBGrid).DataSource.DataSet.IsEmpty then
    (Sender as TDBGrid).DataSource.DataSet.Insert;

  dbgrBalance.SelectedIndex:= 1;
end;

procedure TFrmBalanc.InitSeqCtrl;
begin
  SeqControl:= TMbDbGridControl.Create(Self, dbgrBalance, 'DECNUM');
  SeqControl.AddSum('DECDEBIT');
  SeqControl.AddSum('DECCREDIT');
  SeqControl.OnSumChanged:= CalcSum;
end;

procedure TFrmBalanc.FormDestroy(Sender: TObject);
begin
  SeqControl.Free;
end;

procedure TFrmBalanc.MyAutoSelect(var AIsLock: Boolean);
begin
  with FDM_DataEntry.qrEBalance, SQL do
  begin
    Clear;
    Add('SELECT *');
    Add('FROM PSSALES.BALANCE_T');
    Add('ORDER BY DECNUM');
    Add('FOR UPDATE NOWAIT');
    SQL:= MbSqlConvert(SQL);
    try
      Open;
    except
      on E: Exception do
      begin
        if Pos('ORA-00054', E.Message) > 0 then
        begin
          MbError(LockRecord);
          Close;
          Delete(Count - 1);
          Open;
          AIsLock:= True;
        end;
      end;
    end;
  end;

  edTotDebit.Text:= Format('%.n', [SeqControl.Sum['DECDEBIT'] * 1.0]);
  edTotCredit.Text:= Format('%.n', [SeqControl.Sum['DECCREDIT'] * 1.0]);
end;

procedure TFrmBalanc.dbgrBalanceColEnter(Sender: TObject);
begin
  if dbgrBalance.SelectedIndex = 0 then
    dbgrBalance.SelectedIndex:= 1;

  if dbgrBalance.SelectedIndex = 4 then
    dbgrBalance.SelectedIndex:= 5;
end;

procedure TFrmBalanc.CF_Balance(DataSet: TDataSet);
begin
  with DataSet do
  begin
//    if not (FieldByName('CUSTNO').AsString = '') then
      FieldByName('CUSTNAME').AsString:= FindCusName(FieldByName('CUSTNO').AsString);

//    if not (FieldByName('CNTCODE').AsString = '') then
      FieldByName('CNTDESC').AsString:= FindCntDesc(FieldByName('CNTCODE').AsString);

//    if not (FieldByName('MOIN_CODE').AsString = '') then
      FieldByName('MOINDESC').AsString:= FindMoinName(FieldByName('MOIN_CODE').AsString);

//    if not (FieldByName('TAFSILY_CODE').AsString = '') then
      FieldByName('TAFSILYDESC').AsString:= FindTafsilyName(FieldByName('TAFSILY_CODE').AsString);
  end;
end;

procedure TFrmBalanc.CntCodeValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
    if not ExistCnt(Sender.AsString) then
    begin
      MbError(InvalidCnt);
      Abort;
    end;
end;

procedure TFrmBalanc.CustNoValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
  begin
    if (Sender.AsFloat > 999999) or (Sender.AsFloat < 0) then
    begin
      MbError(RangeErr);
      Abort;
    end;

    if not ExistCustomer(Sender.AsString) then
    begin
      MbError(InvalidCustCode);
      Abort;
    end;
  end;
end;

procedure TFrmBalanc.CreditValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
    if (Sender.AsFloat > 9999999999999) or (Sender.AsFloat < 0) then
    begin
      MbError(RangeErr);
      Abort;
    end;
end;

procedure TFrmBalanc.DebitValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
    if (Sender.AsFloat > 9999999999999) or (Sender.AsFloat < 0) then
    begin
      MbError(RangeErr);
      Abort;
    end;
end;

procedure TFrmBalanc.MoinValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
  begin
    if (Sender.AsFloat > 999999) or (Sender.AsFloat < 0) then
    begin
      MbError(RangeErr);
      Abort;
    end;

    if not ExistMoin(Sender.AsString) then
    begin
      MbError(InvalidMoin);
      Abort;
    end;

    if not HasTafRelMoin(Sender.AsString) then
    begin
      FDM_DataEntry.qrEBalance.Edit;
      FDM_DataEntry.qrEBalance.FieldByName('TAFSILY_CODE').AsString:= '';
      TafsilyFlag:= False;
    end
    else
      TafsilyFlag:= True;
  end;
end;

procedure TFrmBalanc.TafsilyValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
  begin
    if (Sender.AsFloat > 9999999999) or (Sender.AsFloat < 0) then
    begin
      MbError(RangeErr);
      Abort;
    end;

    if not ExistTafsily(Sender.AsString, FDM_DataEntry.qrEBalance.FieldByName('MOIN_CODE').AsString) then
    begin
      MbError(InvalidTafsily);
      Abort;
    end;
  end;
end;

procedure TFrmBalanc.dbgrBalanceEditButtonClick(Sender: TObject);
var
  Code: string;
begin
  if dbgrBalance.SelectedField.FieldName = 'CUSTNO' then
  begin
    if HelpCustomer(Code) then
    begin
      with FDM_DataEntry.qrEBalance do
      begin
        Edit;
        FieldByName('CUSTNO').AsString:= Code;
      end;

      dbgrBalance.SelectedIndex:= 5;
      Exit;
    end;
  end;

  if dbgrBalance.SelectedField.FieldName = 'CNTCODE' then
  begin
    if HelpCnt(Code) then
    begin
      with FDM_DataEntry.qrEBalance do
      begin
        Edit;
        FieldByName('CNTCODE').AsString:= Code;
      end;

      dbgrBalance.SelectedIndex:= 6;
      Exit;
    end;
  end;

  if dbgrBalance.SelectedField.FieldName = 'MOIN_CODE' then
  begin
    if HelpMoin(Code) then
    begin
      with FDM_DataEntry.qrEBalance do
      begin
        Edit;
        FieldByName('MOIN_CODE').AsString:= Code;
      end;

      dbgrBalance.SelectedIndex:= 9;
      Exit;
    end;
  end;

  if (dbgrBalance.SelectedField.FieldName = 'TAFSILY_CODE') and TafsilyFlag then
  begin
    if HelpTafsily(Code, FDM_DataEntry.qrEBalance.FieldByName('MOIN_CODE').AsString) then
    begin
      with FDM_DataEntry.qrEBalance do
      begin
        Edit;
        FieldByName('TAFSILY_CODE').AsString:= Code;
      end;

      Exit;
    end;
  end;
end;

procedure TFrmBalanc.dbgrBalanceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    dbgrBalanceEditButtonClick(nil);
end;

procedure TFrmBalanc.CalcSum(Sender: TObject);
begin
  edTotDebit.Text:= Format('%.n', [SeqControl.Sum['DECDEBIT'] * 1.0]);
  edTotCredit.Text:= Format('%.n', [SeqControl.Sum['DECCREDIT'] * 1.0]);
end;

procedure TFrmBalanc.RefreshSum;
begin
  SeqControl.SetSums;
  edTotDebit.Text:= Format('%.n', [SeqControl.Sum['DECDEBIT'] * 1.0]);
  edTotCredit.Text:= Format('%.n', [SeqControl.Sum['DECCREDIT'] * 1.0]);
end;

procedure TFrmBalanc.FBeforePost(DataSet: TDataSet);
begin
  with DataSet do
  begin
    Edit;
    FieldByName('MOIN_YEAR').AsInteger:= System_YY;
  end;
end;

procedure TFrmBalanc.dbgrBalanceExit(Sender: TObject);
begin
  RefreshSum;
end;

procedure TFrmBalanc.FOnNewRecord(DataSet: TDataSet);
begin
  DataSet.Edit;
  DataSet.FieldByName('DECDTE').AsString:= MbUserDate;
  DataSet.Post;
end;

procedure TFrmBalanc.btnDeleteClick(Sender: TObject);
begin
  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if MbMessage('¬Ì« Õ–› «ÿ·«⁄ „Ê—œ ‰Ÿ— —«  «ÌÌœ „Ì ﬂ‰Ìœ ø', mtWarning, [mbYes,mbNo], mbNo) = mrYes then
    FDM_DataEntry.qrEBalance.Delete;
end;

procedure TFrmBalanc.btnPostClick(Sender: TObject);
begin
  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if FDM_DataEntry.qrEBalance.IsEmpty then
  begin
    MbError(NotDataComplete);
    dbgrBalance.SetFocus;
    dbgrBalance.SelectedIndex:= 1;
    Exit;
  end;

  if not CheckBeforeSave then
    Abort;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    DelBalance;
    InsBalance;

    MbDB.Commit(FDB);

    dbgrBalance.SetFocus;
    IsLock:= False;
    
    if not MbDB.InTransaction[FDB] then
      MbDB.StartTransaction(FDB);
    MyAutoSelect(IsLock);
//    dbgrBalance.DataSource.DataSet.First;
    btnPost.Enabled:= False;
  except
    MbDB.RollBack(FDB);
  end;
end;

procedure TFrmBalanc.DelBalance;
begin
  with FDM_DataEntry.qrTmp, SQL do
  begin
    Clear;
    Add('DELETE FROM PSSALES.BALANCE_T');
    SQL := MbSqlConvert(SQL);
    ExecSql;
  end;
end;

procedure TFrmBalanc.InsBalance;
begin
  FDM_DataEntry.qrEBalance.DisableControls;
  try
    FDM_DataEntry.qrEBalance.First;

    while not FDM_DataEntry.qrEBalance.Eof do
    begin
      with FDM_DataEntry.qrTmp, SQL do
      begin
        Clear;
        Add('INSERT INTO PSSALES.BALANCE_T');
        Add('  (DECNUM, DECDOC, DECDTE, CUSTNO, DECDEBIT, DECCREDIT, MOIN_CODE, MOIN_YEAR, TAFSILY_CODE, CNTCODE)');
        Add('VALUES');
        Add('  (:DECNUM, :DECDOC, :DECDTE, :CUSTNO, :DECDEBIT, :DECCREDIT, :MOIN_CODE, :MOIN_YEAR, :TAFSILY_CODE, :CNTCODE)');
        ParamByName('DECNUM').AsString       := FDM_DataEntry.qrEBalance.FieldByName('DECNUM').AsString;
        ParamByName('DECDOC').AsString       := FDM_DataEntry.qrEBalance.FieldByName('DECDOC').AsString;
        ParamByName('DECDTE').AsString       := FDM_DataEntry.qrEBalance.FieldByName('DECDTE').AsString;
        ParamByName('CUSTNO').AsString       := FDM_DataEntry.qrEBalance.FieldByName('CUSTNO').AsString;
        ParamByName('DECDEBIT').AsString     := FDM_DataEntry.qrEBalance.FieldByName('DECDEBIT').AsString;
        ParamByName('DECCREDIT').AsString    := FDM_DataEntry.qrEBalance.FieldByName('DECCREDIT').AsString;
        ParamByName('MOIN_CODE').AsString    := FDM_DataEntry.qrEBalance.FieldByName('MOIN_CODE').AsString;
        ParamByName('MOIN_YEAR').AsInteger   := System_YY;
        ParamByName('TAFSILY_CODE').AsString := FDM_DataEntry.qrEBalance.FieldByName('TAFSILY_CODE').AsString;
        ParamByName('CNTCODE').AsString      := FDM_DataEntry.qrEBalance.FieldByName('CNTCODE').AsString;
        SQL := MbSqlConvert(SQL);
        ExecSql;
      end;

      FDM_DataEntry.qrEBalance.Next;
    end;
  finally
    FDM_DataEntry.qrEBalance.EnableControls;
  end;
end;

procedure TFrmBalanc.N1Click(Sender: TObject);
begin
  dbgrBalance.DataSource.DataSet.Insert;
end;

procedure TFrmBalanc.N2Click(Sender: TObject);
begin
  dbgrBalance.DataSource.DataSet.Delete;
end;

procedure TFrmBalanc.FUpdateError(DataSet: TDataSet; E: EDatabaseError;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
  MbError(ExpHandleM(E));
  Abort;
end;

procedure TFrmBalanc.FOnStateChange(Sender: TObject);
begin
  with FDM_DataEntry do
    G_StateChange(qrEBalance, qrEBalance, btnPost, btnDelete);
end;

procedure TFrmBalanc.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= CheckChanges(FDM_DataEntry.qrEBalance, FDM_DataEntry.qrEBalance, FDM);
end;

function TFrmBalanc.CheckBeforeSave: Boolean;
begin
  Result:= True;
  FDM_DataEntry.qrEBalance.DisableControls;
  try
    with FDM_DataEntry.qrEBalance do
    begin
      First;
      while not Eof do
      begin
        if FieldByName('DECDTE').AsString = '' then
        begin
          MbError(NotDataComplete);
          dbgrBalance.SetFocus;
          dbgrBalance.SelectedIndex:= 1;
          Result:= False;
          Exit;
        end;

        if FieldByName('DECDOC').AsString = '' then
        begin
          MbError(NotDataComplete);
          dbgrBalance.SetFocus;
          dbgrBalance.SelectedIndex:= 2;
          Result:= False;
          Exit;
        end;

        if FieldByName('CUSTNO').AsString = '' then
        begin
          MbError(NotDataComplete);
          dbgrBalance.SetFocus;
          dbgrBalance.SelectedIndex:= 3;
          Result:= False;
          Exit;
        end;

        if (FieldByName('DECDEBIT').AsString = '') and (FieldByName('DECCREDIT').AsString = '') then
        begin
          MbError(NotDataComplete);
          dbgrBalance.SetFocus;
          dbgrBalance.SelectedIndex:= 6;
          Result:= False;
          Exit;
        end;

        if (FieldByName('DECDEBIT').AsString <> '') and (FieldByName('DECCREDIT').AsString <> '') then
        begin
          MbError('œ— Â— —œÌ› Ì« „ﬁœ«— »œÂﬂ«— Ì« „ﬁœ«— »” «‰ﬂ«— »«Ìœ œ— ‰Ÿ— ê—› Â ‘Êœ');
          dbgrBalance.SetFocus;
          dbgrBalance.SelectedIndex:= 6;
          Result:= False;
          Exit;
        end;

        if FieldByName('MOIN_CODE').AsString = '' then
        begin
          MbError(NotDataComplete);
          dbgrBalance.SetFocus;
          dbgrBalance.SelectedIndex:= 8;
          Result:= False;
          Exit;
        end;

        if (HasTafRelMoin(FieldByName('MOIN_CODE').AsString)) and (FieldByName('TAFSILY_CODE').AsString = '') then
        begin
          MbError(NotDataComplete);
          dbgrBalance.SetFocus;
          dbgrBalance.SelectedIndex:= 9;
          Result:= False;
          Exit;
        end;

        Next;
      end;
    end;
  finally
    FDM_DataEntry.qrEBalance.EnableControls;
  end;

  if StrToFloat(StringReplace(edTotCredit.Text, ',', '', [rfReplaceAll])) <> StrToFloat(StringReplace(edTotDebit.Text, ',', '', [rfReplaceAll])) then
  begin
    MbError(DocNotBalance);
    dbgrBalance.SetFocus;
    dbgrBalance.SelectedIndex:= 1;
    Result:= False;
    Exit;
  end;
end;

procedure TFrmBalanc.DECDTEValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
    if not MsDateIsValid1(Sender.AsString, False) then
    begin
      MbMessage(' «—ÌŒ €Ì— „Ã«“', mtError, [mbOk], mbOk);
      Abort;
    end;
end;

procedure TFrmBalanc.cmbSearchChange(Sender: TObject);
begin
  case cmbSearch.ItemIndex of
    0:
    begin
      meDate.Visible:= True;
      sbList.Visible:= False;
      edSearch.Visible:= False;
      meDate.Text:= '';
      meDate.Enabled:= False;

      IsLock:= False;
      FilterData(IsLock);
      dbgrBalance.SetFocus;
    end;

    1:
    begin
      meDate.Visible:= True;
      sbList.Visible:= False;
      edSearch.Visible:= False;
      if meDate.Visible then
        meDate.Enabled:= True;
      meDate.SetFocus;
      meDate.Text:= MbUserDate;
    end;

    2:
    begin
      meDate.Visible:= False;
      sbList.Visible:= True;
      edSearch.Visible:= True;
      edSearch.MaxLength:= 6;
      edSearch.SetFocus;

    end;

    3:
    begin
      meDate.Visible:= False;
      sbList.Visible:= True;
      edSearch.Visible:= True;
      edSearch.MaxLength:= 10;
      edSearch.SetFocus;
    end;
  end;
end;

procedure TFrmBalanc.sbListClick(Sender: TObject);
var
  Code: string;
begin
  case cmbSearch.ItemIndex of
    2:
    begin
      if HelpCustomer(Code) then
      begin
        edSearch.SetFocus;
        edSearch.Text:= Code;
        dbgrBalance.SetFocus;

{        IsLock:= False;
        FilterData(IsLock);}
      end;
    end;

    3:
    begin
      if HelpCnt(Code) then
      begin
        edSearch.SetFocus;
        edSearch.Text:= Code;
        dbgrBalance.SetFocus;

{        IsLock:= False;
        FilterData(IsLock);}
      end;
    end;
  end;
end;

procedure TFrmBalanc.edSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    sbList.Click;
end;

procedure TFrmBalanc.FilterData(AIsLock: Boolean);
begin
  with FDM_DataEntry.qrEBalance, SQL do
  begin
    Clear;
    Add('SELECT *');
    Add('FROM PSSALES.BALANCE_T');
    case cmbSearch.ItemIndex of
      1:
      begin
        Add('WHERE');
        Add('     DECDTE = :DECDTE');
        ParamByName('DECDTE').AsString:= meDate.Text;
      end;

      2:
      begin
        Add('WHERE');
        Add('     CUSTNO = :CUSTNO');
        ParamByName('CUSTNO').AsString:= edsearch.Text;
      end;

      3:
      begin
        Add('WHERE');
        Add('     CNTCODE = :CNTCODE');
        ParamByName('CNTCODE').AsString:= edsearch.Text;
      end;
    end;

    Add('ORDER BY DECNUM');
    Add('FOR UPDATE NOWAIT');
    SQL:= MbSqlConvert(SQL);
    try
      Open;
    except
      on E: Exception do
      begin
        if Pos('ORA-00054', E.Message) > 0 then
        begin
          MbError(LockRecord);
          Close;
          Delete(Count - 1);
          Open;
          AIsLock:= True;
        end;
      end;
    end;
  end;

  edTotDebit.Text:= Format('%.n', [SeqControl.Sum['DECDEBIT'] * 1.0]);
  edTotCredit.Text:= Format('%.n', [SeqControl.Sum['DECCREDIT'] * 1.0]);
end;

procedure TFrmBalanc.meDateExit(Sender: TObject);
begin
  IsLock:= False;
  FilterData(IsLock);
end;

procedure TFrmBalanc.edSearchExit(Sender: TObject);
begin
  IsLock:= False;
  FilterData(IsLock);
end;

end.
