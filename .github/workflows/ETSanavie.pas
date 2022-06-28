{$I Direct.Inc}
unit ETSanavie;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Buttons, Mask, DB, DBCtrls,DMUParam,
  {$I MbUses.Inc};

type
  TfrmETSanavie = class(TMbForm)
    Panel1: TPanel;
    RbOFNum: TRadioButton;
    RbCntCode: TRadioButton;
    RBOrdNo: TRadioButton;
    dbedOFNum: TDBEdit;
    dbedOFDte: TDBEdit;
    dbedCntCode: TDBEdit;
    dbedCntDate: TDBEdit;
    dbedOrdNo: TDBEdit;
    dbedOrdDte: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    panButton: TPanel;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    btnPost: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dbedCustNO: TDBEdit;
    dbedCustName: TDBEdit;
    dbedTafsily: TDBEdit;
    dbedTafsilyName: TDBEdit;
    dbedSecTafsily: TDBEdit;
    dbedSecTafsilyName: TDBEdit;
    sbHOFNum: TSpeedButton;
    sbHCntCode: TSpeedButton;
    sbHOrdNo: TSpeedButton;
    SbHSecTafsily: TSpeedButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure sbExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbHOFNumClick(Sender: TObject);
    procedure RbOFNumClick(Sender: TObject);
    procedure RbCntCodeClick(Sender: TObject);
    procedure RBOrdNoClick(Sender: TObject);
    procedure sbHCntCodeClick(Sender: TObject);
    procedure sbHOrdNoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbedOFNumExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbedOFNumKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedCntCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedOrdNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedCntCodeExit(Sender: TObject);
    procedure dbedOrdNoExit(Sender: TObject);
    procedure SbHSecTafsilyClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure FUpdateError(DataSet: TDataSet; E: EDatabaseError; UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure dbedSecTafsilyChange(Sender: TObject);
    procedure dbedSecTafsilyExit(Sender: TObject);
    procedure dbedOFNumChange(Sender: TObject);
    procedure dbedCntCodeChange(Sender: TObject);
    procedure dbedOrdNoChange(Sender: TObject);
  private
    { Private declarations }
    FDM_Param: TDM_Param;
    IsLock: Boolean;
    TNum :String;
    procedure FOnStateChanged(Sender: TObject);
    procedure FCalcFields(DataSet: TDataSet);
  public
    { Public declarations }
  end;

{var
  frmETSanavie: TfrmETSanavie;}

implementation

uses MainUnit, Vars, UMessage, Utility, Functions, Help;

{$R *.dfm}

procedure TfrmETSanavie.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13)  then
  begin
    SelectNext(ActiveControl, True, True);
    Key := #0;
  end;
end;

procedure TfrmETSanavie.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmETSanavie.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MbDB.RollBack(FDB);
  MbFM.ReleaseFM(FFrm);
  Action := caFree;
end;

procedure TfrmETSanavie.sbHOFNumClick(Sender: TObject);
var
  Code, Year: string;
begin
  if HelpSalesProp(Code, Year) then
  begin
    dbedOFNum.SetFocus;
    with FDM_Param.qrETSanavie do
    begin
      Edit;
      FieldByName('TNUM').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmETSanavie.RbOFNumClick(Sender: TObject);
Const
  qrStr = 'SELECT OFNUM TNUM, OFDATE TDATE, CUSTNO, SECTAFSILY_CODE' +#10#13+
          'FROM PSSALES.OFFERTIT_T';
begin
  with FDM_Param.qrETSanavie , Sql do
  begin
    Close;
    Clear;
    Add(qrStr);
    SQL := MbSqlConvert(SQL);
    Open;
  end;

  dbedOFNum.Text      := '';
  dbedOFDte.Text      := '';
  FDM_Param.qrETSanavie.Edit;
  FDM_Param.qrETSanavie.FieldByName('TNUM').AsString := '';
  FDM_Param.qrETSanavie.FieldByName('TDATE').AsString := '';
  FDM_Param.qrETSanavie.FieldByName('CUSTNO').AsString := '';  
  dbedOFNum.Enabled   := True;
  sbHOFNum.Enabled    := True;
  dbedCntCode.Enabled := False;
  sbHCntCode.Enabled  := False;
  dbedOrdNo.Enabled   := False;
  sbHOrdNo.Enabled    := False;
  dbedCntCode.Text    := '';
  dbedCntDate.Text    := '';
  dbedOrdNo.Text      := '';
  dbedOrdDte.Text     := '';
  dbedOFNum.SetFocus;
end;

procedure TfrmETSanavie.RbCntCodeClick(Sender: TObject);
Const
  qrStr = 'SELECT CNTCODE TNUM, CNTDTE TDATE, CUSTNO, SECTAFSILY_CODE' +#10#13+
          'FROM PSSALES.IDCONTACT_T';
begin
  with FDM_Param.qrETSanavie , Sql do
  begin
    Close;
    Clear;
    Add(qrStr);
    SQL := MbSqlConvert(SQL);
    Open;
  end;

  dbedCntCode.Text    := '';
  dbedCntDate.Text    := '';
  FDM_Param.qrETSanavie.Edit;
  FDM_Param.qrETSanavie.FieldByName('TNUM').AsString := '';
  FDM_Param.qrETSanavie.FieldByName('TDATE').AsString := '';
  FDM_Param.qrETSanavie.FieldByName('CUSTNO').AsString := '';
  dbedCntCode.Enabled := True;
  sbHCntCode.Enabled  := True;
  dbedOFNum.Enabled   := False;
  sbHOFNum.Enabled    := False;
  dbedOrdNo.Enabled   := False;
  sbHOrdNo.Enabled    := False;
  dbedOFNum.Text      := '';
  dbedOFDte.Text      := '';
  dbedOrdNo.Text      := '';
  dbedOrdDte.Text     := '';
  dbedCntCode.SetFocus;
end;

procedure TfrmETSanavie.RBOrdNoClick(Sender: TObject);
Const
  qrStr = 'SELECT ORDNO TNUM, ORDDATE TDATE, B.CUSTNO, SECTAFSILY_CODE' +#10#13+
          'FROM PSSALES.ORDERTIT_T A, PSSALES.PROFORMAT_T B' +#10#13+
          'WHERE  A.PRFNUM = B.PRFNUM';
begin
  with FDM_Param.qrETSanavie , Sql do
  begin
    Close;
    Clear;
    Add(qrStr);
    SQL := MbSqlConvert(SQL);
    Open ;
  end;
  dbedOrdNo.Text      := '';
  dbedOrdDte.Text     := '';
  FDM_Param.qrETSanavie.Edit;
  FDM_Param.qrETSanavie.FieldByName('TNUM').AsString := '';
  FDM_Param.qrETSanavie.FieldByName('TDATE').AsString := '';
  FDM_Param.qrETSanavie.FieldByName('CUSTNO').AsString := '';
  dbedOrdNo.Enabled   := True;
  sbHOrdNo.Enabled    := True;
  dbedCntCode.Enabled := False;
  sbHCntCode.Enabled  := False;
  dbedOFNum.Enabled   := False;
  sbHOFNum.Enabled    := False;
  dbedOFNum.Text      := '';
  dbedOFDte.Text      := '';
  dbedCntCode.Text    := '';
  dbedCntDate.Text    := '';
  dbedOrdNo.SetFocus;
end;

procedure TfrmETSanavie.sbHCntCodeClick(Sender: TObject);
var
  Code: string;
begin
  if HelpCnt(Code) then
  begin
    dbedCntCode.SetFocus;
    with FDM_Param.qrETSanavie do
    begin
      Edit;
      FieldByName('TNUM').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmETSanavie.sbHOrdNoClick(Sender: TObject);
var
  Code: string;
begin
  if HelpOrder(Code) then
  begin
    dbedOrdNo.SetFocus;
    with FDM_Param.qrETSanavie do
    begin
      Edit;
      FieldByName('TNUM').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmETSanavie.FUpdateError(DataSet: TDataSet; E: EDatabaseError;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
  MbError(ExpHandleM(E));
  Abort;
end;


procedure TfrmETSanavie.FormCreate(Sender: TObject);
begin
   FDM_Param:= TDM_Param(MbDM.GetDM(FDM));
  SetStatusBar(stbMain);

  with FDM_Param.qrETSanavie do
  begin
    OnCalcFields:= FCalcFields;
    OnUpdateError:= FUpdateError;
  end;

  with FDM_Param.dsETSanavie do
  begin
    OnStateChange:= nil;
    OnStateChange:= FOnStateChanged;
  end;
  SetFormColor(Self,_FormColor);
end;

procedure TfrmETSanavie.FOnStateChanged(Sender: TObject);
begin
  with FDM_Param do
    G_StateChange(qrETSanavie, qrETSanavie, btnPost, btnPost)
end;

procedure TfrmETSanavie.dbedOFNumExit(Sender: TObject);
var
  OFState: Integer;
Const
  qrStr = 'SELECT OFNUM TNUM, OFDATE TDATE, CUSTNO, SECTAFSILY_CODE' +#10#13+
          'FROM PSSALES.OFFERTIT_T' +#10#13+
          'WHERE OFNUM = :OFNUM';
begin
  if not (dbedOFNum.Text = '') then
  begin
    if not ExistOffID(FDM_Param.qrETSanavie.FieldByName('TNUM').AsString, OfState) then
    begin
      MbError(InvalidCode);
      dbedOFNum.SetFocus;
      Exit;
    end;

    TNum := dbedOFNum.Text;

    with FDM_Param.qrETSanavie , Sql do
    begin
      Close;
      Clear;
      Add(qrStr);
      ParamByName('OFNUM').AsString := TNum;
      SQL := MbSqlConvert(SQL);
      Open;
      dbedOFDte.Text  := FieldByName('TDATE').AsString;
      dbedCustNO.Text := FieldByName('CUSTNO').AsString;
    end;

    dbedCntCode.Text := '';
    dbedCntDate.Text := '';
    dbedOrdNo.Text   := '';
    dbedOrdDte.Text  := '';
    dbedSecTafsily.SetFocus;
  end;
end;

procedure TfrmETSanavie.FormShow(Sender: TObject);
begin
//  SelectEmpty(FDM_Param.qrETSanavie, 'OFFERTIT_T');
  FDM_Param.qrETSanavie.Active := True;
  RbOFNum.Checked;
  dbedOFNum.SetFocus;
  IsLock:= False;
end;

procedure TfrmETSanavie.dbedOFNumKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    sbHOFNum.Click;
end;

procedure TfrmETSanavie.dbedCntCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    sbHCntCode.Click;
end;

procedure TfrmETSanavie.dbedOrdNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    sbHOrdNo.Click;
end;

procedure TfrmETSanavie.dbedCntCodeExit(Sender: TObject);
Const
  qrStr = 'SELECT CNTCODE TNUM, CNTDTE TDATE, CUSTNO, SECTAFSILY_CODE' +#10#13+
          'FROM PSSALES.IDCONTACT_T' +#10#13+
          'WHERE CNTCODE = :CNTCODE';
begin
  if not (dbedCntCode.Text = '') then
  begin
    if not ExistCnt(dbedCntCode.Text) then
    begin
      MbError(InvalidCode);
      dbedCntCode.SetFocus;
      Exit;
    end;

    TNum := dbedCntCode.Text;

    with FDM_Param.qrETSanavie , Sql do
    begin
      Close;
      Clear;
      Add(qrStr);
      ParamByName('CNTCODE').AsString := TNum;
      SQL := MbSqlConvert(SQL);
      Open ;
      dbedCntDate.Text := FieldByName('TDATE').AsString;
      dbedCustNO.Text := FieldByName('CUSTNO').AsString;
    end;

    dbedOFNum.Text  := '';
    dbedOFDte.Text  := '';
    dbedOrdNo.Text  := '';
    dbedOrdDte.Text := '';
    dbedSecTafsily.SetFocus;
  end;
end;

procedure TfrmETSanavie.dbedOrdNoExit(Sender: TObject);
var
  OFState: Integer;
Const
  qrStr = 'SELECT ORDNO TNUM, ORDDATE TDATE, B.CUSTNO, SECTAFSILY_CODE' +#10#13+
          'FROM PSSALES.ORDERTIT_T A, PSSALES.PROFORMAT_T B' +#10#13+
          'WHERE  A.PRFNUM = B.PRFNUM' +#10#13+
          'AND    ORDNO = :ORDNO';
begin
  if not (dbedOrdNo.Text = '') then
  begin
    if not ExistOrdNo(FDM_Param.qrETSanavie.FieldByName('TNUM').AsString, OfState) then
    begin
      MbError(InvalidCode);
      dbedOrdNo.SetFocus;
      Exit;
    end;

    TNum := dbedOrdNo.Text;

    with FDM_Param.qrETSanavie , Sql do
    begin
      Close;
      Clear;
      Add(qrStr);
      ParamByName('ORDNO').AsString := TNum;
      SQL := MbSqlConvert(SQL);
      Open ;
      dbedOrdDte.Text := FieldByName('TDATE').AsString;
      dbedCustNO.Text := FieldByName('CUSTNO').AsString;
    end;

    dbedOFNum.Text   := '';
    dbedOFDte.Text   := '';
    dbedCntCode.Text := '';
    dbedCntDate.Text := '';
    dbedSecTafsily.SetFocus;
  end;
end;

procedure TfrmETSanavie.SbHSecTafsilyClick(Sender: TObject);
Var
  Code : String;
begin
//  FindMoinTaf(FDM_Param.qrETSanavie.FieldByName('CUSTNO').AsString, FMoin, FTaf);

  if HelpSecTafsily(Code) then
  begin
    dbedSecTafsily.SetFocus;
    with FDM_Param.qrETSanavie do
    begin
      Edit;
      FieldByName('SECTAFSILY_CODE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmETSanavie.FCalcFields(DataSet: TDataSet);
Var
  Fmoin, FTaf :String;
begin
  with DataSet do
  begin
    FieldByName('CF_CUSTNAME').AsString := FindCusName(FieldByName('CUSTNO').AsString);
    FindMoinTaf(FieldByName('CUSTNO').AsString, FMoin, FTaf);
    FieldByName('CF_TAF_CODE').AsString := FTaf;
    FieldByName('CF_TAF_NAME').AsString := FindTafsilyName(FTaf);
    FieldByName('CF_SEC_TAF_DESC').AsString := FindTafsilyName(FieldByName('SECTAFSILY_CODE').AsString);
  end;
end;

procedure TfrmETSanavie.btnPostClick(Sender: TObject);
begin
  if RbOFNum.Checked then
  begin
    with FDM_Param.qrETemp do
    begin
      Close;
      Sql.Clear;
      Sql.Add('UPDATE PSSALES.OFFERTIT_T             ');
      Sql.Add('SET SECTAFSILY_CODE = :SECTAFSILY_CODE');
      Sql.Add('  , TAFSILY_YEAR    = :YEAR           ');
      Sql.Add('WHERE OFNUM         = :OFNUM          ');
      ParamByName('SECTAFSILY_CODE').AsString := dbedSecTafsily.Text;
      ParamByName('YEAR').AsInteger           := System_yy;
      ParamByName('OFNUM').AsString           := dbedOFNum.Text ;
      Sql := MbSqlConvert(Sql);
      try
        ExecSQL;
        MbDB.Commit(FDB);
        FDM_Param.qrETSanavie.Edit;
        FDM_Param.qrETSanavie.FieldByName('TNUM').AsString            := '';
        FDM_Param.qrETSanavie.FieldByName('TDATE').AsString           := '';
        FDM_Param.qrETSanavie.FieldByName('CUSTNO').AsString          := '';
        FDM_Param.qrETSanavie.FieldByName('SECTAFSILY_CODE').AsString := '';
      except
        MbDB.RollBack(FDB);
        MbError(RegisterError);
      end;
      Close;
    end;
  end;

  if RbCntCode.Checked then
  begin
    with FDM_Param.qrETemp do
    begin
      Close;
      Sql.Clear;
      Sql.Add('UPDATE PSSALES.IDCONTACT_T            ');
      Sql.Add('SET SECTAFSILY_CODE = :SECTAFSILY_CODE');
      Sql.Add('  , TAFSILY_YEAR    = :YEAR           ');
      Sql.Add('WHERE CNTCODE       = :CNTCODE        ');
      ParamByName('SECTAFSILY_CODE').AsString := dbedSecTafsily.Text;
      ParamByName('YEAR').AsInteger           := System_yy;
      ParamByName('CNTCODE').AsString         := dbedCntCode.Text ;
      Sql := MbSqlConvert(Sql);
      try
        ExecSQL;
        MbDB.Commit(FDB);
        FDM_Param.qrETSanavie.Edit;
        FDM_Param.qrETSanavie.FieldByName('TNUM').AsString            := '';
        FDM_Param.qrETSanavie.FieldByName('TDATE').AsString           := '';
        FDM_Param.qrETSanavie.FieldByName('CUSTNO').AsString          := '';
        FDM_Param.qrETSanavie.FieldByName('SECTAFSILY_CODE').AsString := '';
      except
        MbDB.RollBack(FDB);
        MbError(RegisterError);
      end;
      Close;
    end;
  end;

  if RBOrdNo.Checked then
  begin
    with FDM_Param.qrETemp do
    begin
      Close;
      Sql.Clear;
      Sql.Add('UPDATE PSSALES.ORDERTIT_T             ');
      Sql.Add('SET SECTAFSILY_CODE = :SECTAFSILY_CODE');
      Sql.Add('  , TAFSILY_YEAR    = :YEAR           ');
      Sql.Add('WHERE ORDNO         = :ORDNO          ');
      ParamByName('SECTAFSILY_CODE').AsString := dbedSecTafsily.Text;
      ParamByName('YEAR').AsInteger           := System_yy;
      ParamByName('ORDNO').AsString           := dbedOrdNo.Text ;
      Sql := MbSqlConvert(Sql);
      try
        ExecSQL;
        MbDB.Commit(FDB);
        FDM_Param.qrETSanavie.Edit;
        FDM_Param.qrETSanavie.FieldByName('TNUM').AsString            := '';
        FDM_Param.qrETSanavie.FieldByName('TDATE').AsString           := '';
        FDM_Param.qrETSanavie.FieldByName('CUSTNO').AsString          := '';
        FDM_Param.qrETSanavie.FieldByName('SECTAFSILY_CODE').AsString := '';
      except
        MbDB.RollBack(FDB);
        MbError(RegisterError);
      end;
      Close;
    end;
  end;
end;

procedure TfrmETSanavie.dbedSecTafsilyChange(Sender: TObject);
begin
  if RbOFNum.Checked then
  begin
    dbedCntCode.Text := '';
    dbedCntDate.Text := '';
    dbedOrdNo.Text   := '';
    dbedOrdDte.Text  := '';
  end;
  if RbCntCode.Checked then
  begin
    dbedOFNum.Text   := '';
    dbedOFDte.Text   := '';
    dbedOrdNo.Text   := '';
    dbedOrdDte.Text  := '';
  end;
  if RBOrdNo.Checked then
  begin
    dbedOFNum.Text   := '';
    dbedOFDte.Text   := '';
    dbedCntCode.Text := '';
    dbedCntDate.Text := '';
  end;
end;

procedure TfrmETSanavie.dbedSecTafsilyExit(Sender: TObject);
Var
  Fmoin, FTaf :String;
begin
  FindMoinTaf(FDM_Param.qrETSanavie.FieldByName('CUSTNO').AsString, FMoin, FTaf);
{  if dbedSecTafsily.Text = '' then
  begin
    MbError(NotDataComplete);
    dbedSecTafsily.SetFocus;
    Exit;
  end;

  if dbedTafsily.Text = '' then
  begin
    FDM_Param.qrETSanavie.Edit;
    FDM_Param.qrETSanavie.FieldByName('SECTAFSILY_CODE').AsString:= '';
    Exit;
  end;
  if not  HasTafRelMoin(FMoin) then
  begin
    MbError(InavlidTafRel);
    dbedSecTafsily.SetFocus;
    FDM_Param.qrETSanavie.Edit;
    FDM_Param.qrETSanavie.FieldByName('SECTAFSILY_CODE').AsString:= '';
    Exit;
  end}
  if  not ExistTafsily(dbedSecTafsily.Text,'',_intTafsily) then
  begin
    MbError(InvalidCode);
    dbedSecTafsily.SetFocus;
  end;
end;

procedure TfrmETSanavie.dbedOFNumChange(Sender: TObject);
begin
  if RbOFNum.Checked then
  begin
    dbedCntCode.Text := '';
    dbedCntDate.Text := '';
    dbedOrdNo.Text   := '';
    dbedOrdDte.Text  := '';
  end;
  if RbCntCode.Checked then
  begin
    dbedOFNum.Text   := '';
    dbedOFDte.Text   := '';
    dbedOrdNo.Text   := '';
    dbedOrdDte.Text  := '';
  end;
  if RBOrdNo.Checked then
  begin
    dbedOFNum.Text   := '';
    dbedOFDte.Text   := '';
    dbedCntCode.Text := '';
    dbedCntDate.Text := '';
  end;
end;

procedure TfrmETSanavie.dbedCntCodeChange(Sender: TObject);
begin
  if RbOFNum.Checked then
  begin
    dbedCntCode.Text := '';
    dbedCntDate.Text := '';
    dbedOrdNo.Text   := '';
    dbedOrdDte.Text  := '';
  end;
  if RbCntCode.Checked then
  begin
    dbedOFNum.Text   := '';
    dbedOFDte.Text   := '';
    dbedOrdNo.Text   := '';
    dbedOrdDte.Text  := '';
  end;
  if RBOrdNo.Checked then
  begin
    dbedOFNum.Text   := '';
    dbedOFDte.Text   := '';
    dbedCntCode.Text := '';
    dbedCntDate.Text := '';
  end;
end;

procedure TfrmETSanavie.dbedOrdNoChange(Sender: TObject);
begin
  if RbOFNum.Checked then
  begin
    dbedCntCode.Text := '';
    dbedCntDate.Text := '';
    dbedOrdNo.Text   := '';
    dbedOrdDte.Text  := '';
  end;
  if RbCntCode.Checked then
  begin
    dbedOFNum.Text   := '';
    dbedOFDte.Text   := '';
    dbedOrdNo.Text   := '';
    dbedOrdDte.Text  := '';
  end;
  if RBOrdNo.Checked then
  begin
    dbedOFNum.Text   := '';
    dbedOFDte.Text   := '';
    dbedCntCode.Text := '';
    dbedCntDate.Text := '';
  end;
end;

end.
