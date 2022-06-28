{$I Direct.Inc}
unit EGHCnt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus,DbTables, ppBands, ppClass, ppCtrls, ppPrnabl, ppCache, ppProd,
  ppReport, ppDB, ppRelatv, ppDBPipe, ppDBBDE, ppComm, ppEndUsr,DMUContract,{$I MbUses.Inc} ;

type
  TFrmEGHCnt = class(TMbForm)
    panButton: TPanel;
    stbCrr: TStatusBar;
    BtnPost: TBitBtn;
    BtnDelete: TBitBtn;
    SpdBtnExit: TSpeedButton;
    Panel3: TPanel;
    Label6: TLabel;
    Label13: TLabel;
    dbedFCntNum: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    btnNoControl: TBitBtn;
    btnControl: TBitBtn;
    Label4: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    dbedFCntFrUnt: TDBEdit;
    dbedFCntToUnt: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    dbedFCntDesc: TDBEdit;
    dbedFCntDate: TDBEdit;
    edCntCode: TEdit;
    edPrjDesc: TEdit;
    edCustName: TEdit;
    meCntDte: TMaskEdit;
    Label9: TLabel;
    dbedSntStat: TDBEdit;
    Panel1: TPanel;
    dbgrAttach: TDBGrid;
    Panel2: TPanel;
    dbgrFinCnt: TDBGrid;
    Splitter1: TSplitter;
    ppDesignerGHCnt: TppDesigner;
    ppReportFCnt: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText1: TppDBText;
    ppDBText6: TppDBText;
    ppLabel6: TppLabel;
    ppDBText14: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppFooterBand1: TppFooterBand;
    ppPageStyle1: TppPageStyle;
    ppShape4: TppShape;
    ppLine5: TppLine;
    ppLine8: TppLine;
    ppLabel23: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppShape8: TppShape;
    ppLine24: TppLine;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLine25: TppLine;
    ppLabel32: TppLabel;
    ppLine26: TppLine;
    GroupBox2: TGroupBox;
    spDesign: TSpeedButton;
    bbPreview: TBitBtn;
    bbPrint: TBitBtn;
    ppBDEPipelineCnt: TppBDEPipeline;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine6: TppLine;
    ppLine4: TppLine;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpdBtnExitClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dbgrFinCntColEnter(Sender: TObject);
    procedure dbgrFinCntEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbedFCntDateExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure btnControlClick(Sender: TObject);
    procedure btnNoControlClick(Sender: TObject);
    procedure dbedFCntNumExit(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure bbPrintClick(Sender: TObject);
    procedure spDesignClick(Sender: TObject);
  private
    FDM_Contract: TDM_Contract;
    CntCode,
    CntDate,
    CustName,
    PrjDesc: string;
    CntKind: Integer;
    Flag, IsLock, InsFlag: Boolean;

    FDay, FMonth, FYear: string;
    procedure FillGridAsDefault;
    procedure ShowDetail;
    procedure FillAttachAsDefault;
    procedure EnableCntControls;
    procedure DisableCntControls;
    procedure CheckButton;
    function CheckBeforeSave: Boolean;
    function ExistCnt(Code: string): Boolean;
    function CanModify: Boolean;
    function HasFactor: Boolean;
    function GetContractYear: Integer;

    //Events
    procedure DetBeforeInsert(DataSet: TDataSet);
    procedure DetBeforeDelete(DataSet: TDataSet);
    procedure DetAfterScroll(DataSet: TDataSet);
    procedure DetAfterPost(DataSet: TDataSet);
    procedure FCNTYEARValidate(Sender: TField);
    procedure FCNTDAYValidate(Sender: TField);
    procedure FCNTMONValidate(Sender: TField);
    procedure qrEGHCntNewRecord(DataSet: TDataSet);
    procedure CntStatGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure MonthGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure MonthSetText(Sender: TField; const Text: string);
    procedure FUpdateError(DataSet: TDataSet; E: EDatabaseError; UpdateKind: TUpdateKind;
       var UpdateAction: TUpdateAction);
    procedure FStateChange(Sender: TObject);
    function SelectReportRecord:Boolean;
    Procedure ShowReport(Sender :TObject);
    procedure CalcInfo(DataSet: TDataSet);
  public
    DbHandle: TMbHandle;
  end;

var
  FrmEGHCnt: TFrmEGHCnt;

implementation

uses MainUnit, HCustom, HBidVch, HSalesProp, EPeyvast,
  HCnt, ECntLaw, HGHCnt, Utility, ECnt, Functions, UMessage, Vars, Help;

{$R *.DFM}

procedure TFrmEGHCnt.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13)  then
  begin
    SelectNext(ActiveControl, True, True);
    Key := #0;
  end;
end;

procedure TFrmEGHCnt.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEGHCnt.SpeedButton2Click(Sender: TObject);
begin
 MainForm.acHGHCnt.Execute;
 FrmHGHCnt.ShowModal;
end;

procedure TFrmEGHCnt.Button1Click(Sender: TObject);
begin
 MainForm.acECntLaw.Execute;
// FrmECntLaw.ShowModal;
end;

procedure TFrmEGHCnt.dbgrFinCntColEnter(Sender: TObject);
begin
  if dbgrFinCnt.SelectedIndex in [0, 1, 2] then
    dbgrFinCnt.SelectedIndex:= 3;
end;

procedure TFrmEGHCnt.dbgrFinCntEnter(Sender: TObject);
begin
  dbgrFinCnt.SelectedIndex:= 3;
end;

procedure TFrmEGHCnt.FormCreate(Sender: TObject);
begin
  FDM_Contract:= TDM_Contract(MbDM.GetDM(FDM));
  SetStatusBar(stbCrr);
  SetFormColor(Self,_FormColor);
  with TfrmECnt(MbFM.GetFM(ParentFrm)).FDM_Contract.qrEContract do
  begin
    CntCode := FieldByName('CNTCODE').AsString;
    CntDate := FieldByName('CNTDTE').AsString;
    PrjDesc := MbDb2St(FindProjectDesc(FieldByName('PRJCODE').AsString), MbCurrentCharSetCode);
    CustName:= MbDb2St(FindCusName(FieldByName('CUSTNO').AsString), MbCurrentCharSetCode);
    CntKind := FieldByName('CNTTYP').AsInteger;
  end;

  with FDM_Contract.qrEGHCnt do
  begin
    OnNewRecord := qrEGHCntNewRecord;
    FieldByName('FCNTSTAT').OnGetText:= CntStatGetText;
    OnUpdateError:= FUpdateError;
  end;

  with FDM_Contract.dsEGHCnt do
  begin
    OnStateChange:= nil;
    OnStateChange:= FStateChange;
  end;

  with FDM_Contract.qrEGHCntDet do
  begin
    BeforeDelete:= DetBeforeDelete;
    BeforeInsert:= DetBeforeInsert;
    AfterScroll:= DetAfterScroll;
    AfterPost   := DetAfterPost;
    FieldByName('FCNTYEAR').OnValidate:= FCNTYEARValidate;
    FieldByName('FCNTMON').OnValidate:= FCNTMONValidate;
    FieldByName('FCNTDAY').OnValidate:= FCNTDAYValidate;

    FieldByName('FCNTMON').OnGetText:= MonthGetText;
    FieldByName('FCNTMON').OnSetText:= MonthSetText;
    OnUpdateError:= FUpdateError;
  end;

  FDM_Contract.qrRPrintCnt.OnCalcFields:= CalcInfo;

  with FDM_Contract.dsEGHCntDet do
  begin
    OnStateChange:= nil;
    OnStateChange:= FStateChange;
  end;
end;

procedure TFrmEGHCnt.FormShow(Sender: TObject);
begin
  InsFlag:= True;
  edCntCode.Text:= CntCode;
  meCntDte.Text:= CntDate;
  edCustName.Text:= CustName;
  edPrjDesc.Text:= PrjDesc;

  IsLock:= False;
  SelectEmpty(FDM_Contract.qrEGHCnt, 'FINALCTNT_T');
  SelectEmpty(FDM_Contract.qrEGHCntDet, 'FINALCTNR_T');

  FDM_Contract.qrEGHCnt.Edit;
  FDM_Contract.qrEGHCnt.FieldByName('CNTCODE').AsString:= CntCode;

  if ExistCnt(CntCode) then
  begin
    IsLock:= False;
    AutoSelect(FDB, FDM_Contract.qrEGHCnt, 'FINALCTNT_T', 1, IsLock);
    Flag:= True;
    ShowDetail;
  end
  else
  begin
{    IsLock:= False;
    SelectEmpty(FDM_Contract.qrEGHCnt, 'FINALCTNT_T');
    SelectEmpty(FDM_Contract.qrEGHCntDet, 'FINALCTNR_T');}
    Flag:= False;
    FillGridAsDefault;
  end;

  FillAttachAsDefault;
  if dbedFCntNum.Enabled then
    dbedFCntNum.SetFocus;

  if not CanModify then
    DisableCntControls
  else
    EnableCntControls;

  CheckButton;
end;

procedure TFrmEGHCnt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not Flag then
    TfrmECnt(MbFM.GetFM(ParentFrm)).btnNoControl.Enabled:= True
  else
    TfrmECnt(MbFM.GetFM(ParentFrm)).btnNoControl.Enabled:= False;

  Action:= caFree;
end;

procedure TFrmEGHCnt.dbedFCntDateExit(Sender: TObject);
begin
  with FDM_Contract.qrEGHCnt do
  begin
    if FieldByName('FCNTDTE').AsString = '' then Exit;

    if not MsDateIsValid1(FieldByName('FCNTDTE').AsString, False) then
    begin
      MbMessage(' «—ÌŒ €Ì— „Ã«“', mtError, [mbOk], mbOk);
      dbedFCntDate.SetFocus;
      dbedFCntDate.Text := MbUserDate;
      dbedFCntDate.SelStart := 0;
      Exit;
    end;

    if FieldByName('FCNTDTE').AsInteger < StrToInt(CntDate) then
    begin
      MbError(InvalidGHCnt);
      dbedFCntDate.SetFocus;
      Exit;
    end;
  end;
end;

procedure TFrmEGHCnt.DetBeforeDelete(DataSet: TDataSet);
begin
  Abort;
end;

procedure TFrmEGHCnt.DetBeforeInsert(DataSet: TDataSet);
begin
  if not InsFlag then Exit;
  Abort;
end;

function TFrmEGHCnt.ExistCnt(Code: string): Boolean;
var
  FQuery: TQuery;
begin
  FQuery:= TQuery.Create(Self);
  try
    with FQuery, SQL do
    begin
      DataBaseName:=  MbDB.DataBaseName[FDB];
      Clear;
      Add('SELECT CNTCODE');
      Add('FROM PSSALES.FINALCTNT_T');
      Add('WHERE');
      Add('     CNTCODE = :CNTCODE');
      ParamByName('CNTCODE').AsString:= Code;
      SQL:= MbSqlConvert(SQL);
      Open;
      Result:= not IsEmpty;
      Close;
    end;
  finally
    FQuery.Free;
  end;
end;

procedure TFrmEGHCnt.FillGridAsDefault;
var
  FQuery: TQuery;
  FAfterScroll,
  FAfterPost: TDataSetNotifyEvent;
begin
  InsFlag:= False;
  FQuery:= TQuery.Create(Self);
  FAfterScroll:= FDM_Contract.qrEGHCntDet.AfterScroll;
  FAfterPost  := FDM_Contract.qrEGHCntDet.AfterPost;

  FDM_Contract.qrEGHCntDet.AfterScroll:= nil;
  FDM_Contract.qrEGHCntDet.AfterPost  := nil;
  try
    with FQuery, SQL do
    begin
      DataBaseName:=  MbDB.DataBaseName[FDB];
      Clear;
      Add('SELECT CNTCODE, CNTROW, GDS_CODE, CNTQTY');
      Add('FROM PSSALES.IDCONTACR_T');
      Add('WHERE');
      Add('     CNTCODE = :CNTCODE');
      ParamByName('CNTCODE').AsString:= CntCode;
      SQL:= MbSqlConvert(SQL);
      Open;

      First;
      FDM_Contract.qrEGHCntDet.DisableControls;
      try
        while not EOF do
        begin
          FDM_Contract.qrEGHCntDet.Insert;
          FDM_Contract.qrEGHCntDet.FieldByName('CNTCODE').AsString:= FieldByName('CNTCODE').AsString;
          FDM_Contract.qrEGHCntDet.FieldByName('FCNTROW').AsString:= FieldByName('CNTROW').AsString;
          FDM_Contract.qrEGHCntDet.FieldByName('GDS_CODE').AsString:= FieldByName('GDS_CODE').AsString;
          FDM_Contract.qrEGHCntDet.FieldByName('FCNTQTY').AsString:= FieldByName('CNTQTY').AsString;

          Next;
        end;
      finally
        FDM_Contract.qrEGHCntDet.First;
        FDM_Contract.qrEGHCntDet.EnableControls;
      end;
    end;
  finally
    FQuery.Free;
    InsFlag:= True;
    FDM_Contract.qrEGHCntDet.AfterScroll:= FAfterScroll;
    FDM_Contract.qrEGHCntDet.AfterPost  := FAfterPost;
  end;
end;

procedure TFrmEGHCnt.ShowDetail;
begin
  with FDM_Contract.qrEGHCntDet, SQL do
  begin
    Clear;
    Add('SELECT *');
    Add('FROM PSSALES.FINALCTNR_T');
    Add('WHERE');
    Add('     CNTCODE = :CNTCODE');
    ParamByName('CNTCODE').AsString:= CntCode;
    SQL:= MbSqlConvert(SQL);
    Open;
  end;
end;

procedure TFrmEGHCnt.FCNTYEARValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
  begin
    if (Sender.AsInteger > 99) or (Sender.AsInteger < 0) then
    begin
      MbError(RangeErr);
      Abort;
    end;

    if Sender.AsInteger < GetContractYear then
    begin
      MbError(InvalidGHCntYear);
      Abort;
    end;
  end;
end;

function TFrmEGHCnt.GetContractYear: Integer;
begin
  Result:= StrToInt(Copy(CntDate, 1, 4));
end;

procedure TFrmEGHCnt.FCNTDAYValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
    if (Sender.AsFloat > 31) or (Sender.AsFloat < 1) then
      begin
        MbError(RangeErr);
        Abort;
      end;
end;

procedure TFrmEGHCnt.FCNTMONValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
  begin
    if (Sender.AsFloat > 12) or (Sender.AsFloat < 1) then
      begin
        MbError(RangeErr);
        Abort;
      end;

    if FDM_Contract.qrEGHCntDet.FieldByName('FCNTDAY').AsString = '' then Exit;

    if FDM_Contract.qrEGHCntDet.FieldByName('FCNTDAY').AsInteger = 31 then
    begin
      if Sender.AsInteger in [7..12] then
      begin
        MbError(RangeErr);
        Abort;
      end;
    end;
  end;
end;

procedure TFrmEGHCnt.FillAttachAsDefault;
begin
  with FDM_Contract.qrEAttach, SQL do
  begin
    Clear;
    Add('SELECT ROWNUM, CNTCODE, RISRL, RIDATE, RIDESC, RIDSTAT');
    Add('FROM PSSALES.RIDER_T');
    Add('WHERE');
    Add('     CNTCODE = :CNTCODE');
    ParamByName('CNTCODE').AsString:= CntCode;
    SQL:= MbSqlConvert(SQL);
    Open;
  end;
end;

procedure TFrmEGHCnt.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= CheckChanges(FDM_Contract.qrEGHCnt, FDM_Contract.qrEGHCntDet, FDM);
end;

procedure TFrmEGHCnt.BtnPostClick(Sender: TObject);
begin
  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if not CheckBeforeSave then
    Abort;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_Contract.qrEGHCnt do
    begin
      ApplyUpdates;
    end;

    with FDM_Contract.qrEGHCntDet do
    begin
      ApplyUpdates;
    end;

    MbDB.Commit(FDB);

    dbedFCntNum.SetFocus;
    btnPost.Enabled:= False;
    Flag:= True;
  except
    MbDB.RollBack(FDB);
  end;
end;

procedure TFrmEGHCnt.CntStatGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intNotConfirmed : Text:= _stNotConfirmed;
    _intConfirmed    : Text:= _stConfirmed;
  end;
end;

procedure TFrmEGHCnt.FStateChange(Sender: TObject);
begin
  with FDM_Contract do
    G_StateChange(qrEGHCnt, qrEGHCntDet, btnPost, btnDelete);
end;

procedure TFrmEGHCnt.BtnDeleteClick(Sender: TObject);
var
  FQuery: TQuery;
begin
  if not CanModify then
  begin
    MbError(CannotModify);
    Abort;
  end;

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
          Add('DELETE FROM PSSALES.FINALCTNR_T');
          Add('WHERE');
          Add('     CNTCODE = :CNTCODE');
          ParamByName('CNTCODE').AsString:= CntCode;
          SQL:= MbSqlConvert(SQL);
          ExecSql;

          Clear;
          Add('DELETE FROM PSSALES.FINALCTNT_T');
          Add('WHERE');
          Add('     CNTCODE = :CNTCODE');
          ParamByName('CNTCODE').AsString:= CntCode;
          SQL:= MbSqlConvert(SQL);
          ExecSql;
        end;

        MbDB.Commit(FDB);
        SelectEmpty(FDM_Contract.qrEGHCnt, 'FINALCTNT_T');
        SelectEmpty(FDM_Contract.qrEGHCntDet, 'FINALCTNR_T');
        dbedFCntNum.SetFocus;
        Flag:= False;
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

procedure TFrmEGHCnt.FUpdateError(DataSet: TDataSet; E: EDatabaseError;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
  MbError(ExpHandleM(E));
  Abort;
end;

function TFrmEGHCnt.CanModify: Boolean;
begin
  with FDM_Contract.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT FCNTSTAT');
    Add('FROM PSSALES.FINALCTNT_T');
    Add('WHERE');
    Add('     CNTCODE = :CNTCODE');
    ParamByName('CNTCODE').AsString:= CntCode;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result:= (FieldByName('FCNTSTAT').AsInteger = _intNotConfirmed) or
             (FieldByName('FCNTSTAT').AsString  = '');
    Close;
  end;
end;

procedure TFrmEGHCnt.DisableCntControls;
begin
  dbedFCntNum.Enabled:= False;
  dbedFCntDate.EnableD:= False;
  dbedFCntFrUnt.Enabled:= False;
  dbedFCntToUnt.Enabled:= False;
  dbedFCntDesc.Enabled:= False;

  TQuery(dbgrFinCnt.DataSource.DataSet).CachedUpdates:= False;

  btnPost.Enabled:= False;
  btnDelete.Enabled:= False;
end;

procedure TFrmEGHCnt.EnableCntControls;
begin
  dbedFCntNum.Enabled:= True;
  dbedFCntDate.EnableD:= True;
  dbedFCntFrUnt.Enabled:= True;
  dbedFCntToUnt.Enabled:= True;
  dbedFCntDesc.Enabled:= True;

  TQuery(dbgrFinCnt.DataSource.DataSet).CachedUpdates:= True;

  btnPost.Enabled:= btnPost.Enabled and MabnaInfo.HasAccess(BtnPost.Tag);
  btnDelete.Enabled:= btnDelete.Enabled and MabnaInfo.HasAccess(BtnDelete.Tag);
end;

function TFrmEGHCnt.HasFactor: Boolean;
begin
  Result:= False;
  with FDM_Contract.qrETemp, SQL do
  begin
    case CntKind of
      _intIntSale:
      begin
        Clear;
        Add('SELECT CNTCODE');
        Add('FROM PSSALES.ITEMFACT_T');
        Add('WHERE');
        Add('     CNTCODE = :CNTCODE');
        ParamByName('CNTCODE').AsString:= CntCode;
        SQL:= MbSqlConvert(SQL);
        Open;

        if not IsEmpty then
        begin
          Result:= True;
          Exit;
        end;
      end;

      _intExtSale:
      begin
        Clear;
        Add('SELECT CNTCODE');
        Add('FROM PSSALES.INVOICEPRDT_T');
        Add('WHERE');
        Add('     CNTCODE = :CNTCODE');
        ParamByName('CNTCODE').AsString:= CntCode;
        SQL:= MbSqlConvert(SQL);
        Open;

        if not IsEmpty then
        begin
          Result:= True;
          Exit;
        end;
      end;
    end; //Case
  end;//With
end;

procedure TFrmEGHCnt.CheckButton;
begin
  if (FDM_Contract.qrEGHCnt.FieldByName('FCNTSTAT').AsInteger = _intNotConfirmed) or
     (FDM_Contract.qrEGHCnt.FieldByName('FCNTSTAT').AsString = '') then
  begin
    btnControl.Visible:= True;
    btnNoControl.Visible:= False;
  end
  else
  begin
    btnControl.Visible:= False;
    btnNoControl.Visible:= True;

    if HasFactor then
      btnNoControl.Enabled:= False;
  end;
end;

procedure TFrmEGHCnt.btnControlClick(Sender: TObject);
begin
  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if not ExistCnt(CntCode) then
  begin
    MbError(MustSaveRec);
    Exit;
  end;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_Contract.qrETemp, SQL do
    begin
      Clear;
      Add('UPDATE PSSALES.FINALCTNT_T');
      Add('SET ');
      Add('   FCNTSTAT = :FCNTSTAT');
      Add('WHERE');
      Add('     CNTCODE = :CNTCODE');
      ParamByName('FCNTSTAT').AsInteger:= _intConfirmed;
      ParamByName('CNTCODE').AsString:= CntCode;
      SQL:= MbSqlConvert(SQL);
      ExecSQL;
    end;

    MbDB.Commit(FDB);
  except
    MbDB.RollBack(FDB);
  end;

  btnNoControl.Visible:= True;
  btnControl.Visible:= False;
  DisableCntControls;

{  FDM_Contract.qrEGHCnt.DisableControls;
  try}
    FormShow(nil);
{  finally
    FDM_Contract.qrEGHCnt.EnableControls;
  end;}
end;

procedure TFrmEGHCnt.btnNoControlClick(Sender: TObject);
begin
  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if not ExistCnt(CntCode) then
  begin
    MbError(MustSaveRec);
    Exit;
  end;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_Contract.qrETemp, SQL do
    begin
      Clear;
      Add('UPDATE PSSALES.FINALCTNT_T');
      Add('SET ');
      Add('   FCNTSTAT = :FCNTSTAT');
      Add('WHERE');
      Add('     CNTCODE = :CNTCODE');
      ParamByName('FCNTSTAT').AsInteger:= _intNotConfirmed;
      ParamByName('CNTCODE').AsString:= CntCode;
      SQL:= MbSqlConvert(SQL);
      ExecSQL;
    end;

    MbDB.Commit(FDB);
  except
    MbDB.RollBack(FDB);
  end;

  btnControl.Visible:= True;
  btnNoControl.Visible:= False;
  EnableCntControls;

{  FDM_Contract.qrEGHCnt.DisableControls;
  try}
    FormShow(nil);
{  finally
    FDM_Contract.qrEGHCnt.EnableControls;
  end;}

  dbedFCntNum.SetFocus;
end;

procedure TFrmEGHCnt.MonthGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if Sender.AsString = '' then Exit;
  
  case Sender.AsInteger of
    _FarvardinVal   : Text:= _FarvardinStr;
    _OrdibeheshtVal : Text:= _OrdibeheshtStr;
    _KhordadVal     : Text:= _KhordadStr;
    _TirVal         : Text:= _TirStr;
    _MordadVal      : Text:= _MordadStr;
    _ShahrivarVal   : Text:= _ShahrivarStr;
    _MehrVal        : Text:= _MehrStr;
    _AbanVal        : Text:= _AbanStr;
    _AzarVal        : Text:= _AzarStr;
    _Deyval         : Text:= _DeyStr;
    _BahmanVal      : Text:= _BahmanStr;
    _EsfandVal      : Text:= _EsfandStr;
  end;
end;

procedure TFrmEGHCnt.MonthSetText(Sender: TField; const Text: String);
begin
  if Text = _FarvardinStr then
    Sender.AsInteger:= _FarvardinVal;

  if Text = _OrdibeheshtStr then
    Sender.AsInteger:= _OrdibeheshtVal;

  if Text = _KhordadStr then
    Sender.AsInteger:= _KhordadVal;

  if Text = _TirStr then
    Sender.AsInteger:= _TirVal;

  if Text = _MordadStr then
    Sender.AsInteger:= _MordadVal;

  if Text = _ShahrivarStr then
    Sender.AsInteger:= _ShahrivarVal;

  if Text = _MehrStr then
    Sender.AsInteger:= _MehrVal;

  if Text = _AbanStr then
    Sender.AsInteger:= _AbanVal;

  if Text = _AzarStr then
    Sender.AsInteger:= _AzarVal;

  if Text = _DeyStr then
    Sender.AsInteger:= _DeyVal;

  if Text = _BahmanStr then
    Sender.AsInteger:= _BahmanVal;

  if Text = _EsfandStr then
    Sender.AsInteger:= _EsfandVal;
end;

procedure TFrmEGHCnt.dbedFCntNumExit(Sender: TObject);
begin
  with FDM_Contract.qrEGHCnt do
  begin
    if not (FieldByName('FCNTNUM').AsString = '') then
    begin
      //Added By Eskandari
      if FDM_Contract.qrEGHCnt.State in dsEditModes then
      begin
        FieldByName('FCNTDTE').AsString  := MbUserDate;
        FieldByName('FCNTSTAT').AsInteger:= _intNotConfirmed
      end;
      //commited By Eskandari
      (*Edit;
        FieldByName('FCNTDTE').AsString:= MbUserDate;
      if FieldByName('FCNTSTAT').Value = Null then
        FieldByName('FCNTSTAT').AsInteger:= _intNotConfirmed;*)
    end;
  end;
end;

function TFrmEGHCnt.CheckBeforeSave: Boolean;
begin
  Result:= True;
  with FDM_Contract.qrEGHCnt do
  begin
    if FieldByName('FCNTNUM').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedFCntNum.SetFocus;
      Result:= False;
      Exit;
    end;

    if FieldByName('FCNTDTE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedFCntDate.SetFocus;
      Result:= False;
      Exit;
    end;

    if FieldByName('FCNTOFUNT').AsString = '' then
      FieldByName('FCNTOFUNT').AsString:= _FromUnit;

    if FieldByName('FCNTOUNT').AsString = '' then
      FieldByName('FCNTOUNT').AsString:= _ToUnit;
  end;

  with FDM_Contract.qrEGHCntDet do
  begin
    DisableControls;
    try
      First;
      while not EOF do
      begin
        if FieldByName('FCNTDAY').AsString = '' then
        begin
          MbError(NotDataComplete);
          dbgrFinCnt.SetFocus;
          dbgrFinCnt.SelectedIndex:= 3;
          Result:= False;
          Exit;
        end;

        if FieldByName('FCNTMON').AsString = '' then
        begin
          MbError(NotDataComplete);
          dbgrFinCnt.SetFocus;
          dbgrFinCnt.SelectedIndex:= 4;
          Result:= False;
          Exit;
        end;

        if FieldByName('FCNTYEAR').AsString = '' then
        begin
          MbError(NotDataComplete);
          dbgrFinCnt.SetFocus;
          dbgrFinCnt.SelectedIndex:= 5;
          Result:= False;
          Exit;
        end;

        Next;
      end;
    finally
      EnableControls;
    end;
  end;
end;

procedure TFrmEGHCnt.DetAfterPost(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FDay   := FieldByName('FCNTDAY').AsString;
    FMonth := FieldByName('FCNTMON').AsString;
    FYear  := FieldByName('FCNTYEAR').AsString;
  end;
end;

procedure TFrmEGHCnt.DetAfterScroll(DataSet: TDataSet);
begin
  with DataSet do
  begin
    if FieldByName('FCNTDAY').AsString = '' then
    begin
      Edit;
      FieldByName('FCNTDAY').AsString:= FDay;
    end;

    if FieldByName('FCNTMON').AsString = '' then
    begin
      Edit;
      FieldByName('FCNTMON').AsString:= FMonth;
    end;

    if FieldByName('FCNTYEAR').AsString = '' then
    begin
      Edit;
      FieldByName('FCNTYEAR').AsString:= FYear;
    end;
  end;
end;

procedure TFrmEGHCnt.qrEGHCntNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('FCNTOFUNT').AsString:= _FromUnit;
  DataSet.FieldByName('FCNTOUNT').AsString := _ToUnit;
end;


procedure TFrmEGHCnt.ShowReport(Sender :TObject);
begin
  if FDM_Contract.qrEGHCnt.FieldByName('FCNTSTAT').AsInteger = _intNotConfirmed then
  begin
    MbError(CannotPrint);
    Exit;
  end;

  if SelectReportRecord then
  begin
    MbPrompt(NoReport);
    Exit;
  end;

  if FileExists(ReportPath+'RGHCNT.RTM') then
  begin
    ppReportFCnt.Template.FileName:= ReportPath+'RGHCNT.RTM';
    ppReportFCnt.SaveAsTemplate:= True;
    ppReportFCnt.Template.LoadFromFile;
  end;

  if Sender = bbPreview then
    ppReportFCnt.DeviceType := 'Screen'
  else
    ppReportFCnt.DeviceType := 'Printer';
  ppReportFCnt.Print;
end;

function TFrmEGHCnt.SelectReportRecord:Boolean;
begin
  with FDM_Contract.qrRPrintCnt, sql do
  begin
    Close;
    Clear;
    Add('SELECT FT.CNTCODE, FCNTNUM, CNTDTE, CUSTNO, FCNTDTE, FCNTROW,');
    Add('       GDS_CODE, FCNTQTY, FCNTYEAR, FCNTMON, FCNTDAY, PRJCODE');
    Add('  FROM PSSALES.FINALCTNT_T FT, PSSALES.FINALCTNR_T FR,       ');
    Add('       PSSALES.IDCONTACT_T IC                                ');
    Add(' WHERE FT.CNTCODE = :CNTCODE                                 ');
    Add('   AND FT.CNTCODE = IC.CNTCODE                               ');
    Add('   AND FT.CNTCODE = FR.CNTCODE                               ');
    SQL:= MbSqlConvert(SQL);
    ParamByName('CNTCODE').AsString := edCntCode.Text;
    Open;
    Result := IsEmpty;
  end;
end;

procedure TFrmEGHCnt.bbPreviewClick(Sender: TObject);
begin
  ShowReport(bbPreview);
end;

procedure TFrmEGHCnt.bbPrintClick(Sender: TObject);
begin
  ShowReport(bbPrint);
end;

procedure TFrmEGHCnt.spDesignClick(Sender: TObject);
begin
  ppDesignerGHCnt.Report.Template.FileName:= ReportPath+'RGHCNT.RTM';
  if FileExists(ReportPath+'RGHCNT.RTM') then
  begin
    ppDesignerGHCnt.Report.SaveAsTemplate:= True;
    ppDesignerGHCnt.Report.Template.LoadFromFile;
  end;
  ppDesignerGHCnt.ShowModal;
end;

procedure TFrmEGHCnt.CalcInfo(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_CUSTNAME').AsString  := FindCusName(DataSet.FieldByName('CUSTNO').AsString);
  DataSet.FieldByName('CF_FCNTDTEREC').AsString:= DataSet.FieldByName('FCNTYEAR').AsString+'/'+
                                                  DataSet.FieldByName('FCNTMON').AsString+'/'+
                                                  DataSet.FieldByName('FCNTDAY').AsString;
end;

end.
