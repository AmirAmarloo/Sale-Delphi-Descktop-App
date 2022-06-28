{$I Direct.Inc}
unit EAccSale;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Buttons, Mask, DB, DBCtrls,DMUDataEntry,
  {$I MbUses.Inc};

type
  TfrmEAccSale = class(TMbForm)
    panButton: TPanel;
    stbMain: TStatusBar;
    btnPost: TBitBtn;
    btnDelete: TBitBtn;
    sbClose: TSpeedButton;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    PageControl: TPageControl;
    tbsCust: TTabSheet;
    tbsAdCode: TTabSheet;
    Label1: TLabel;
    sbGdsMoinCode: TSpeedButton;
    sbGdsCode: TSpeedButton;
    Label2: TLabel;
    dbedGdsCode: TDBEdit;
    dbedGdsDesc: TDBEdit;
    dbedGdsMoinCode: TDBEdit;
    dbedGdsMoinDesc: TDBEdit;
    tbsKala: TTabSheet;
    Label3: TLabel;
    sbCuMoinCode: TSpeedButton;
    sbCustNo: TSpeedButton;
    Label4: TLabel;
    dbedCustNo: TDBEdit;
    dbedCustName: TDBEdit;
    dbedCuMoinCode: TDBEdit;
    dbedCuMoinDesc: TDBEdit;
    Label5: TLabel;
    sbAdMoinCode: TSpeedButton;
    sbAdCode: TSpeedButton;
    Label6: TLabel;
    dbedAdCode: TDBEdit;
    dbedAdDesc: TDBEdit;
    dbedAdMoinCode: TDBEdit;
    dbedAdMoinDesc: TDBEdit;
    Label9: TLabel;
    dbedGdsTafCode: TDBEdit;
    dbedGdstafDesc: TDBEdit;
    sbTafsilyGds: TSpeedButton;
    Label10: TLabel;
    dbedCuTafCode: TDBEdit;
    dbedCuTafDesc: TDBEdit;
    sbTafsilyCu: TSpeedButton;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    dbedPackMoin: TDBEdit;
    dbedPackCen: TDBEdit;
    dbedPackMoinName: TDBEdit;
    dbedPackCenName: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    SpeedButton3: TSpeedButton;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbGdsCodeClick(Sender: TObject);
    procedure sbGdsMoinCodeClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure sbCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbsKalaShow(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbedGdsCodeExit(Sender: TObject);
    procedure dbedGdsCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedGdsMoinCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageControlChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tbsCustShow(Sender: TObject);
    procedure sbCustNoClick(Sender: TObject);
    procedure sbCuMoinCodeClick(Sender: TObject);
    procedure dbedCustNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedCuMoinCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedCustNoExit(Sender: TObject);
    procedure dbedCuMoinCodeExit(Sender: TObject);
    procedure sbAdCodeClick(Sender: TObject);
    procedure sbAdMoinCodeClick(Sender: TObject);
    procedure dbedAdCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedAdMoinCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbsAdCodeShow(Sender: TObject);
    procedure dbedAdCodeExit(Sender: TObject);
    procedure dbedAdMoinCodeExit(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbTafsilyGdsClick(Sender: TObject);
    procedure sbTafsilyCuClick(Sender: TObject);
    procedure dbedCuTafCodeExit(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure dbedGdsMoinCodeExit(Sender: TObject);
    procedure dbedGdsTafCodeExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dbedPackMoinExit(Sender: TObject);
    procedure dbedPackMoinKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedPackCenExit(Sender: TObject);
    procedure dbedPackCenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    IsLock0,
    IsLock1,
    IsLock2,
    IsLock3 :boolean;
    FDM_DataEntry: TDM_DataEntry;
    procedure FOnGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure FOnStateChanged(Sender: TObject);
    procedure FUpdateError(DataSet: TDataSet; E: EDatabaseError; UpdateKind: TUpdateKind;
       var UpdateAction: TUpdateAction);

    //ﬂ«·«
    procedure CF_Goods(DataSet: TDataSet);
    procedure GoodsSave;
    procedure GoodsDelete;
    function GdsCheckBeforeSave: Boolean;

    //„‘ —Ì
    procedure CF_Customer(DataSet: TDataSet);
    procedure CustSave;
    procedure CustDelete;
    function CustCheckBeforeSave: Boolean;

    //ﬂ”— Ê «÷«›Â
    procedure CF_AddSub(DataSet: TDataSet);
    procedure AddSubSave;
    procedure AddSubDelete;
    function AddSubCheckBeforeSave: Boolean;
  end;

{var
  frmPCreate: TfrmPCreate;}

implementation

uses MainUnit, HCustom, HProf, HOrdCus, Help, UMessage, Functions,
  Utility, Vars, HCenter;

{$R *.DFM}

procedure TfrmEAccSale.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MbDB.RollBack(FDB);
  MbFM.ReleaseFM(FFrm);
  Action := caFree;
end;

procedure TfrmEAccSale.sbGdsCodeClick(Sender: TObject);
var
  Code: string;
begin
  if HelpGds(Code) then
  begin
    dbedGdsCode.SetFocus;
    with FDM_DataEntry.qrEAccSale do
    begin
      Edit;
      FieldByName('GDS_CODE').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEAccSale.sbGdsMoinCodeClick(Sender: TObject);
var
  Code: string;
begin
  if HelpMoin(Code) then
  begin
    dbedGdsMoinCode.SetFocus;
    with FDM_DataEntry.qrEAccSale do
    begin
      Edit;
      FieldByName('MOIN_CODE').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;

end;

procedure TfrmEAccSale.btnPostClick(Sender: TObject);
begin
  case PageControl.ActivePage.PageIndex of
    0: GoodsSave;
    1: CustSave;
    2: AddSubSave;
  end;
end;

procedure TfrmEAccSale.btnDeleteClick(Sender: TObject);
begin
  case PageControl.ActivePage.PageIndex of
    0: GoodsDelete;
    1: CustDelete;
    2: AddSubDelete;
  end;
end;

procedure TfrmEAccSale.sbCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEAccSale.FormCreate(Sender: TObject);
begin
  FDM_DataEntry:= TDM_DataEntry(MbDM.GetDM(FDM));
  SetStatusBar(stbMain);
  SetFormColor(Self,_FormColor);

  //ﬂ«·«
  with FDM_DataEntry.qrEAccSale do
  begin
    OnCalcFields:= CF_Goods;
    FieldByName('GDS_DESC').OnGetText:= FOnGetText;
    FieldByName('MOIN_DESC').OnGetText:= FOnGetText;
    FieldByName('TAF_DESC').OnGetText:= FOnGetText;
    FieldByName('MOIN_DESC_EX').OnGetText:= FOnGetText;
    FieldByName('TAF_DESC_EX').OnGetText:= FOnGetText;
    FieldByName('ONLINEMONE_DESC').OnGetText:= FOnGetText;
    FieldByName('ONLINEMONEEX_DESC').OnGetText:= FOnGetText;

    OnUpdateError:= FUpdateError;
  end;

  with FDM_DataEntry.dsEAccSale do
  begin
    OnStateChange:= nil;
    OnStateChange:= FOnStateChanged;
  end;
  //--------------------------------------

  //„‘ —Ì
  with FDM_DataEntry.qrEAccCust do
  begin
    OnCalcFields:= CF_Customer;
    FieldByName('CUSTNAME').OnGetText := FOnGetText;
    FieldByName('MOIN_DESC').OnGetText:= FOnGetText;
    FieldByName('TAF_DESC').OnGetText := FOnGetText;
    FieldByName('SEC_TAF_DESC').OnGetText:= FOnGetText;
    OnUpdateError:= FUpdateError;
  end;

  with FDM_DataEntry.dsEAccCust do
  begin
    OnStateChange:= nil;
    OnStateChange:= FOnStateChanged;
  end;

  //ﬂ”— Ê «÷«›Â
  with FDM_DataEntry.qrEAccAddSub do
  begin
    OnCalcFields:= CF_AddSub;
    FieldByName('ADDESC').OnGetText:= FOnGetText;
    FieldByName('MOIN_DESC').OnGetText:= FOnGetText;
    FieldByName('TAF_DESC').OnGetText:= FOnGetText;
    OnUpdateError:= FUpdateError;
  end;

  with FDM_DataEntry.dsEAccAddSub do
  begin
    OnStateChange:= nil;
    OnStateChange:= FOnStateChanged;
  end;
end;

procedure TfrmEAccSale.tbsKalaShow(Sender: TObject);
begin
  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);
  SelectEmpty(FDM_DataEntry.qrEAccSale, 'ACCSALES_T');
  dbedGdsCode.SetFocus;
end;

procedure TfrmEAccSale.CF_Goods(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByName('GDS_DESC').AsString      := FindGdsFDesc(FieldByName('GDS_CODE').AsString);
    FieldByName('MOIN_DESC').AsString     := FindMoinName(FieldByName('MOIN_CODE').AsString);
    FieldByName('TAF_DESC').AsString      := FindTafsilyName(FieldByName('TAF_CODE').AsString);
    FieldByName('MOIN_DESC_EX').AsString  := FindMoinName(FieldByName('MOIN_CODE_EX').AsString);
    FieldByName('TAF_DESC_EX').AsString   := FindCenName(FieldByName('TAF_CODE_EX').AsString);
    FieldByName('ONLINEMONE_DESC').AsString     := FindMoinName(FieldByName('ONLINEMONE_CODE').AsString);
    FieldByName('ONLINEMONEEX_DESC').AsString     := FindMoinName(FieldByName('ONLINEMOIN_CODE_EX').AsString);
  end;
end;

procedure TfrmEAccSale.FOnGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text:= MbDb2St(Sender.AsString, MbCurrentCharSetCode);
end;

procedure TfrmEAccSale.GoodsDelete;
begin
  if IsLock0 then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if MbMessage(DeleteConfirm, mtWarning, [mbYes,mbNo], mbNo) = mrNo then Exit;

  if not MbDb.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_DataEntry.qrTmp, SQL do
    begin
      Clear;
      Add('DELETE FROM PSSALES.ACCSALES_T');
      Add('WHERE GDS_CODE  = :GDS_CODE');
      Add('  AND MOIN_YEAR = :FYEAR');
      ParamByName('GDS_CODE').AsString:= FDM_DataEntry.qrEAccSale.FieldByName('GDS_CODE').AsString;
      ParamByName('FYEAR').AsInteger:= System_YY;
      SQL:= MbSqlConvert(SQL);
      ExecSQL;
    end;

    MbDB.Commit(FDB);
    SelectEmpty(FDM_DataEntry.qrEAccSale, 'ACCSALES_T');
    dbedGdsCode.SetFocus;
  except
    MbDB.RollBack(FDB);
    MbError(DeleteError);
  end;
end;

procedure TfrmEAccSale.GoodsSave;
begin
  if IsLock0 then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if not GdsCheckBeforeSave then
    Abort;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    FDM_DataEntry.qrEAccSale.ApplyUpdates;

    MbDB.Commit(FDB);
    SelectEmpty(FDM_DataEntry.qrEAccSale, 'ACCSALES_T');
    dbedGdsCode.SetFocus;
  except
    MbDB.RollBack(FDB);
    MbError(RegisterError);
  end;
end;

procedure TfrmEAccSale.FormShow(Sender: TObject);
begin
  PageControl.ActivePage := tbsCust;
  PageControl.ActivePage := tbsKala;
end;

procedure TfrmEAccSale.dbedGdsCodeExit(Sender: TObject);
begin
  with FDM_DataEntry.qrEAccSale do
  begin
    Edit;
    FieldByName('MOIN_YEAR').AsInteger:= System_YY;
  end;

  with FDM_DataEntry.qrEAccSale do
  begin
    if not (FieldByName('GDS_CODE').AsString = '') then
    begin
      if not ExistGds(FieldByName('GDS_CODE').AsString) then
      begin
        MbError(InvalidGds);
        dbedGdsCode.SetFocus;
        Exit;
      end;
    end
    else Exit;
  end;

  IsLock0:= False;
  AutoSelect(FDB, FDM_DataEntry.qrEAccSale, 'ACCSALES_T', 2, IsLock0);
end;

procedure TfrmEAccSale.dbedGdsCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    sbGdsCode.Click;
end;

procedure TfrmEAccSale.dbedGdsMoinCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    sbGdsMoinCode.Click;
end;

procedure TfrmEAccSale.PageControlChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  case PageControl.ActivePage.PageIndex  of
    0 : AllowChange := CheckChanges(FDM_DataEntry.qrEAccSale, FDM_DataEntry.qrEAccSale, FDM);
    1 : AllowChange := CheckChanges(FDM_DataEntry.qrEAccCust, FDM_DataEntry.qrEAccCust, FDM);
    2 : AllowChange := CheckChanges(FDM_DataEntry.qrEAccAddSub, FDM_DataEntry.qrEAccAddSub, FDM);
  end;
end;

procedure TfrmEAccSale.FOnStateChanged(Sender: TObject);
begin
  with FDM_DataEntry do
  begin
    case PageControl.ActivePage.PageIndex  of
      0: G_StateChange(qrEAccSale, qrEAccSale, btnPost, btnDelete);
      1: G_StateChange(qrEAccCust, qrEAccCust, btnPost, btnDelete);
      2: G_StateChange(qrEAccAddSub, qrEAccAddSub, btnPost, btnDelete);
    end;
  end;
end;

procedure TfrmEAccSale.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  case PageControl.ActivePage.PageIndex of
    0: CanClose := CheckChanges(FDM_DataEntry.qrEAccSale, FDM_DataEntry.qrEAccSale, FDM);
    1: CanClose := CheckChanges(FDM_DataEntry.qrEAccCust, FDM_DataEntry.qrEAccCust, FDM);
    2: CanClose := CheckChanges(FDM_DataEntry.qrEAccAddSub, FDM_DataEntry.qrEAccAddSub, FDM);
  end;
end;

procedure TfrmEAccSale.FUpdateError(DataSet: TDataSet; E: EDatabaseError;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
  MbError(ExpHandleM(E));
  Abort;
end;

procedure TfrmEAccSale.CF_Customer(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByName('CUSTNAME').AsString     := FindCusName(FieldByName('CUSTNO').AsString);
    FieldByName('MOIN_DESC').AsString    := FindMoinName(FieldByName('MOIN_CODE').AsString);
    FieldByName('TAF_DESC').AsString     := FindTafsilyName(FieldByName('TAF_CODE').AsString);
    FieldByName('SEC_TAF_DESC').AsString := FindCenName(FieldByName('SEC_TAF_CODE').AsString);
  end;
end;

procedure TfrmEAccSale.CustDelete;
begin
  if IsLock1 then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if MbMessage(DeleteConfirm, mtWarning, [mbYes,mbNo], mbNo) = mrNo then Exit;

  if not MbDb.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_DataEntry.qrTmp, SQL do
    begin
      Clear;
      Add('DELETE FROM PSSALES.ACCCUST_T');
      Add('WHERE CUSTNO    = :CUSTNO');
      Add('  AND MOIN_YEAR = :FYEAR');
      ParamByName('CUSTNO').AsString:= FDM_DataEntry.qrEAccCust.FieldByName('CUSTNO').AsString;
      ParamByName('FYEAR').AsInteger:= System_YY;
      SQL:= MbSqlConvert(SQL);
      ExecSQL;
    end;

    MbDB.Commit(FDB);
    SelectEmpty(FDM_DataEntry.qrEAccCust, 'ACCCUST_T');
    dbedCustNo.SetFocus;
  except
    MbDB.RollBack(FDB);
    MbError(DeleteError);
  end;
end;

procedure TfrmEAccSale.CustSave;
begin
  if IsLock1 then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if not CustCheckBeforeSave then
    Abort;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    FDM_DataEntry.qrEAccCust.ApplyUpdates;

    MbDB.Commit(FDB);
    SelectEmpty(FDM_DataEntry.qrEAccCust, 'ACCCUST_T');
    dbedCustNo.SetFocus;
  except
    MbDB.RollBack(FDB);
    MbError(RegisterError);
  end;
end;

procedure TfrmEAccSale.tbsCustShow(Sender: TObject);
begin
  SelectEmpty(FDM_DataEntry.qrEAccCust, 'ACCCUST_T');
  dbedCustNo.SetFocus;
end;

procedure TfrmEAccSale.sbCustNoClick(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomer(Code) then
  begin
    dbedCustNo.SetFocus;
    with FDM_DataEntry.qrEAccCust do
    begin
      Edit;
      FieldByName('CUSTNO').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEAccSale.sbCuMoinCodeClick(Sender: TObject);
var
  Code: string;
begin
  if HelpMoin(Code) then
  begin
    dbedCuMoinCode.SetFocus;
    with FDM_DataEntry.qrEAccCust do
    begin
      Edit;
      FieldByName('MOIN_CODE').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEAccSale.dbedCustNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    sbCustNo.Click;
end;

procedure TfrmEAccSale.dbedCuMoinCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F1 then
    sbCuMoinCode.Click;
end;

procedure TfrmEAccSale.dbedCustNoExit(Sender: TObject);
begin
  with FDM_DataEntry.qrEAccCust do
  begin
    Edit;
    FieldByName('MOIN_YEAR').AsInteger:= System_YY;
  end;

  with FDM_DataEntry.qrEAccCust do
  begin
    if not (FieldByName('CUSTNO').AsString = '') then
    begin
      if not ExistCustomer(FieldByName('CUSTNO').AsString) then
      begin
        MbError(InvalidCustCode);
        dbedCustNo.SetFocus;
        Exit;
      end;
    end
    else Exit;
  end;

  IsLock1:= False;
  AutoSelect(FDB, FDM_DataEntry.qrEAccCust, 'ACCCUST_T', 2, IsLock1);
end;

procedure TfrmEAccSale.dbedCuMoinCodeExit(Sender: TObject);
begin
{$IFNDEF KABIDI}
  with FDM_DataEntry.qrEAccCust do
  begin
    if not (FieldByName('MOIN_CODE').Value = Null) then
      if not ExistMoin(FieldByName('MOIN_CODE').AsString) then
      begin
        MbError(InvalidMoin);
        dbedCuMoinCode.SetFocus;
        Exit;
      end;
  end;
{$ENDIF}

end;

function TfrmEAccSale.GdsCheckBeforeSave: Boolean;
begin
  Result:= True;
  with FDM_DataEntry.qrEAccSale do
  begin
    if FieldbyName('GDS_CODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedGdsCode.SetFocus;
      Result:= False;
      Exit;
    end;
    if not (FieldByName('MOIN_CODE').AsString = '') then
    begin
      if HasTafRelMoin(FieldByName('MOIN_CODE').AsString) and
              (FieldByName('TAF_CODE').AsString = '') then
      begin
        MbError(MoinHasTaf);
        dbedGdsTafCode.SetFocus;
        Result:= False;
      end;
    end;
  end;
end;

function TfrmEAccSale.CustCheckBeforeSave: Boolean;
begin
  Result:= True;
  with FDM_DataEntry.qrEAccCust do
  begin
    if FieldbyName('CUSTNO').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedCustNo.SetFocus;
      Result:= False;
      Exit;
    end;

    if FieldbyName('MOIN_CODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedCuMoinCode.SetFocus;
      Result:= False;
      Exit;
    end;

    if not (FieldByName('MOIN_CODE').AsString = '') then
    begin
      if HasTafRelMoin(FieldByName('MOIN_CODE').AsString) and
              (FieldByName('TAF_CODE').AsString = '') then
      begin
        MbError(MoinHasTaf);
        dbedCuTafCode.SetFocus;
        Result:= False;
      end;
    end;

  end;
end;

procedure TfrmEAccSale.sbAdCodeClick(Sender: TObject);
var
  Code: string;
begin
  if HelpKasr(Code) then
  begin
    with FDM_DataEntry.qrEAccAddSub do
    begin
      Edit;
      FieldByName('ADCODE').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEAccSale.sbAdMoinCodeClick(Sender: TObject);
var
  Code: string;
begin
  if HelpMoin(Code) then
  begin
    dbedAdMoinCode.SetFocus;
    with FDM_DataEntry.qrEAccAddSub do
    begin
      Edit;
      FieldByName('MOIN_CODE').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEAccSale.dbedAdCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    sbAdCode.Click;
end;

procedure TfrmEAccSale.dbedAdMoinCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F1 then
    sbAdMoinCode.Click;
end;

function TfrmEAccSale.AddSubCheckBeforeSave: Boolean;
begin
  Result:= True;
  with FDM_DataEntry.qrEAccAddSub do
  begin
    if FieldbyName('ADCODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedAdCode.SetFocus;
      Result:= False;
      Exit;
    end;

    if FieldbyName('MOIN_CODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedAdMoinCode.SetFocus;
      Result:= False;
      Exit;
    end;
{    if not (FieldByName('MOIN_CODE').AsString = '') then
    begin
      if HasTafRelMoin(FieldByName('MOIN_CODE').AsString) and
              (FieldByName('TAF_CODE').AsString = '') then
      begin
        MbError(MoinHasTaf);
        dbedAdtafCode.SetFocus;
        Result:= False;
      end;
    end;
 }
  end;
end;

procedure TfrmEAccSale.AddSubDelete;
begin
  if IsLock2 then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if MbMessage(DeleteConfirm, mtWarning, [mbYes,mbNo], mbNo) = mrNo then Exit;

  if not MbDb.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_DataEntry.qrTmp, SQL do
    begin
      Clear;
      Add('DELETE FROM PSSALES.ACCADDSUB_T');
      Add('WHERE ADCODE    = :ADCODE');
      Add('  AND MOIN_YEAR = :FYEAR');
      ParamByName('ADCODE').AsString:= FDM_DataEntry.qrEAccAddSub.FieldByName('ADCODE').AsString;
      ParamByName('FYEAR').AsInteger:= System_YY;
      SQL:= MbSqlConvert(SQL);
      ExecSQL;
    end;

    MbDB.Commit(FDB);
    SelectEmpty(FDM_DataEntry.qrEAccAddSub, 'ACCADDSUB_T');
    dbedAdCode.SetFocus;
  except
    MbDB.RollBack(FDB);
    MbError(DeleteError);
  end;
end;

procedure TfrmEAccSale.AddSubSave;
begin
  if IsLock2 then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if not AddSubCheckBeforeSave then
    Abort;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    FDM_DataEntry.qrEAccAddSub.ApplyUpdates;

    MbDB.Commit(FDB);
    SelectEmpty(FDM_DataEntry.qrEAccAddSub, 'ACCADDSUB_T');
    dbedAdCode.SetFocus;
  except
    MbDB.RollBack(FDB);
    MbError(RegisterError);
  end;
end;

procedure TfrmEAccSale.CF_AddSub(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByName('ADDESC').AsString:= FindAddFName(FieldByName('ADCODE').AsString);
    FieldByName('MOIN_DESC').AsString:= FindMoinName(FieldByName('MOIN_CODE').AsString);
    FieldByName('TAF_DESC').AsString  := FindTafsilyName(FieldByName('TAF_CODE').AsString);
  end;
end;

procedure TfrmEAccSale.tbsAdCodeShow(Sender: TObject);
begin
  SelectEmpty(FDM_DataEntry.qrEAccAddSub, 'ACCADDSUB_T');
  dbedAdCode.SetFocus;
end;

procedure TfrmEAccSale.dbedAdCodeExit(Sender: TObject);
begin
  with FDM_DataEntry.qrEAccAddSub do
  begin
    Edit;
    FieldByName('MOIN_YEAR').AsInteger:= System_YY;
  end;

  if not (dbedAdCode.Text = '') then
  begin
    if not ExistAddCode(dbedAdCode.Text) then
    begin
      MbError(InvalidAddSub);
      dbedAdCode.SetFocus;
      Exit;
    end;
  end
  else Exit;

  IsLock2:= False;
  AutoSelect(FDB, FDM_DataEntry.qrEAccAddSub, 'ACCADDSUB_T', 2, IsLock2);
end;

procedure TfrmEAccSale.dbedAdMoinCodeExit(Sender: TObject);
begin
{$IFNDEF KABIDI}
  if  (dbedAdMoinCode.Text = '') then Exit;
  if not ExistMoin(dbedAdMoinCode.Text) then
  begin
    MbError(InvalidMoin);
    dbedAdMoinCode.SetFocus;
    Exit;
  end;
{$ENDIF}
end;

procedure TfrmEAccSale.sbLastClick(Sender: TObject);
var
  BtnType: Integer;
begin
  case PageControl.ActivePage.PageIndex of
    0:
    begin
      FDM_DataEntry.qrEAccSale.DisableControls;
      try
        with FDM_DataEntry do
        begin
          if not CheckChanges(qrEAccSale, qrEAccSale, FDB) then
            Exit;
          IsLock0:= False;
          BtnType:= AutoNavigate(FDB, qrEAccSale, 'ACCSALES_T', 2, Ord(_Last), IsLock0);
          ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
        end;
      finally
        FDM_DataEntry.qrEAccSale.EnableControls;
      end;
    end;

    1:
    begin
      FDM_DataEntry.qrEAccCust.DisableControls;
      try
        with FDM_DataEntry do
        begin
          if not CheckChanges(qrEAccCust, qrEAccCust, FDB) then
            Exit;
          IsLock1:= False;
          BtnType:= AutoNavigate(FDB, qrEAccCust, 'ACCCUST_T', 2, Ord(_Last), IsLock1);
          ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
        end;
      finally
        FDM_DataEntry.qrEAccCust.EnableControls;
      end;
    end;

    2:
    begin
      FDM_DataEntry.qrEAccAddSub.DisableControls;
      try
        with FDM_DataEntry do
        begin
          if not CheckChanges(qrEAccAddSub, qrEAccAddSub, FDB) then
            Exit;
          IsLock2:= False;
          BtnType:= AutoNavigate(FDB, qrEAccAddSub, 'ACCADDSUB_T', 2, Ord(_Last), IsLock2);
          ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
        end;
      finally
        FDM_DataEntry.qrEAccAddSub.EnableControls;
      end;
    end;
  end;

  btnPost.Enabled:= False;
  btnDelete.Enabled:= True;
end;

procedure TfrmEAccSale.sbNextClick(Sender: TObject);
var
  BtnType: Integer;
begin
  case PageControl.ActivePage.PageIndex of
    0:
    begin
      FDM_DataEntry.qrEAccSale.DisableControls;
      try
        with FDM_DataEntry do
        begin
          if not CheckChanges(qrEAccSale, qrEAccSale, FDB) then
            Exit;
          IsLock0:= False;
          BtnType:= AutoNavigate(FDB, qrEAccSale, 'ACCSALES_T', 2, Ord(_Next), IsLock0);
          ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
        end;
      finally
        FDM_DataEntry.qrEAccSale.EnableControls;
      end;
    end;

    1:
    begin
      FDM_DataEntry.qrEAccCust.DisableControls;
      try
        with FDM_DataEntry do
        begin
          if not CheckChanges(qrEAccCust, qrEAccCust, FDB) then
            Exit;
          IsLock1:= False;
          BtnType:= AutoNavigate(FDB, qrEAccCust, 'ACCCUST_T', 2, Ord(_Next), IsLock1);
          ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
        end;
      finally
        FDM_DataEntry.qrEAccCust.EnableControls;
      end;
    end;

    2:
    begin
      FDM_DataEntry.qrEAccAddSub.DisableControls;
      try
        with FDM_DataEntry do
        begin
          if not CheckChanges(qrEAccAddSub, qrEAccAddSub, FDB) then
            Exit;
          IsLock2:= False;
          BtnType:= AutoNavigate(FDB, qrEAccAddSub, 'ACCADDSUB_T', 2, Ord(_Next), IsLock2);
          ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
        end;
      finally
        FDM_DataEntry.qrEAccAddSub.EnableControls;
      end;
    end;
  end;

  btnPost.Enabled:= False;
  btnDelete.Enabled:= True;
end;

procedure TfrmEAccSale.sbPrevClick(Sender: TObject);
var
  BtnType: Integer;
begin
  case PageControl.ActivePage.PageIndex of
    0:
    begin
      FDM_DataEntry.qrEAccSale.DisableControls;
      try
        with FDM_DataEntry do
        begin
          if not CheckChanges(qrEAccSale, qrEAccSale, FDB) then
            Exit;
          IsLock0:= False;
          BtnType:= AutoNavigate(FDB, qrEAccSale, 'ACCSALES_T', 2, Ord(_Prev), IsLock0);
          ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
        end;
      finally
        FDM_DataEntry.qrEAccSale.EnableControls;
      end;
    end;

    1:
    begin
      FDM_DataEntry.qrEAccCust.DisableControls;
      try
        with FDM_DataEntry do
        begin
          if not CheckChanges(qrEAccCust, qrEAccCust, FDB) then
            Exit;
          IsLock1:= False;
          BtnType:= AutoNavigate(FDB, qrEAccCust, 'ACCCUST_T', 2, Ord(_Prev), IsLock1);
          ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
        end;
      finally
        FDM_DataEntry.qrEAccCust.EnableControls;
      end;
    end;

    2:
    begin
      FDM_DataEntry.qrEAccAddSub.DisableControls;
      try
        with FDM_DataEntry do
        begin
          if not CheckChanges(qrEAccAddSub, qrEAccAddSub, FDB) then
            Exit;
          IsLock2:= False;
          BtnType:= AutoNavigate(FDB, qrEAccAddSub, 'ACCADDSUB_T', 2, Ord(_Prev), IsLock2);
          ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
        end;
      finally
        FDM_DataEntry.qrEAccAddSub.EnableControls;
      end;
    end;
  end;

  btnPost.Enabled:= False;
  btnDelete.Enabled:= True;
end;

procedure TfrmEAccSale.sbFirstClick(Sender: TObject);
var
  BtnType: Integer;
begin
  case PageControl.ActivePage.PageIndex of
    0:
    begin
      FDM_DataEntry.qrEAccSale.DisableControls;
      try
        with FDM_DataEntry do
        begin
          if not CheckChanges(qrEAccSale, qrEAccSale, FDB) then
            Exit;
          IsLock0:= False;
          BtnType:= AutoNavigate(FDB, qrEAccSale, 'ACCSALES_T', 2, Ord(_First), IsLock0);
          ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
        end;
      finally
        FDM_DataEntry.qrEAccSale.EnableControls;
      end;
    end;

    1:
    begin
      FDM_DataEntry.qrEAccCust.DisableControls;
      try
        with FDM_DataEntry do
        begin
          if not CheckChanges(qrEAccCust, qrEAccCust, FDB) then
            Exit;
          IsLock1:= False;
          BtnType:= AutoNavigate(FDB, qrEAccCust, 'ACCCUST_T', 2, Ord(_First), IsLock1);
          ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
        end;
      finally
        FDM_DataEntry.qrEAccCust.EnableControls;
      end;
    end;

    2:
    begin
      FDM_DataEntry.qrEAccAddSub.DisableControls;
      try
        with FDM_DataEntry do
        begin
          if not CheckChanges(qrEAccAddSub, qrEAccAddSub, FDB) then
            Exit;
          IsLock2:= False;
          BtnType:= AutoNavigate(FDB, qrEAccAddSub, 'ACCADDSUB_T', 2, Ord(_First), IsLock2);
          ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
        end;
      finally
        FDM_DataEntry.qrEAccAddSub.EnableControls;
      end;
    end;
  end;

  btnPost.Enabled:= False;
  btnDelete.Enabled:= True;
end;

procedure TfrmEAccSale.sbTafsilyGdsClick(Sender: TObject);
var
  Code : String;
begin
  if HelpTafsily(Code, FDM_DataEntry.qrEAccSale.FieldByName('MOIN_CODE').AsString) then
  begin
    dbedGdsTafCode.SetFocus;
    with FDM_DataEntry.qrEAccSale do
    begin
      Edit;
      FieldByName('TAF_CODE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;

end;

procedure TfrmEAccSale.sbTafsilyCuClick(Sender: TObject);
var
  Code: String;
begin
  if HelpTafsily(Code, FDM_DataEntry.qrEAccCust.FieldByName('MOIN_CODE').AsString) then
  begin
    dbedCuTafCode.SetFocus;
    with FDM_DataEntry.qrEAccCust do
    begin
      Edit;
      FieldByName('TAF_CODE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;

end;

procedure TfrmEAccSale.dbedCuTafCodeExit(Sender: TObject);
begin
{$IFNDEF KABIDI}
  if dbedCuTafCode.Text = '' then Exit;
  if not  HasTafRelMoin(dbedCuMoinCode.Text) then
  begin
    MbError(InavlidTafRel);
    dbedCuTafCode.SetFocus;
    FDM_DataEntry.qrEAccCust.FieldByName('TAF_CODE').AsString:= '';
    Exit;
  end
  else if  not ExistTafsily(dbedCuTafCode.Text,FDM_DataEntry.qrEAccCust.FieldByName('MOIN_CODE').AsString,_intMoin) then
  begin
    MbError(InvalidCode);
    dbedCuTafCode.SetFocus;
  end;
{$ENDIF}
end;

procedure TfrmEAccSale.PageControlChange(Sender: TObject);
begin
  sbFirst.Enabled:= True;
  sbNext.Enabled:= True;
  sbPrev.Enabled:= True;
  sbLast.Enabled:= True;
end;

procedure TfrmEAccSale.dbedGdsMoinCodeExit(Sender: TObject);
begin
{$IFNDEF KABIDI}
  if (dbedGdsMoinCode.Text = '') then Exit;
  with FDM_DataEntry.qrEAccSale do
  begin
    if not ExistMoin(FieldByName('MOIN_CODE').AsString) then
    begin
      MbError(InvalidMoin);
      dbedGdsMoinCode.SetFocus;
      Exit;
    end;
  end;
{$ENDIF}
end;

procedure TfrmEAccSale.dbedGdsTafCodeExit(Sender: TObject);
begin
{$IFNDEF KABIDI}
  if dbedGdsTafCode.Text = '' then Exit;
    if not  HasTafRelMoin(FDM_DataEntry.qrEAccSale.FieldByName('MOIN_CODE').AsString) then
    begin
      MbError(InavlidTafRel);
      dbedGdsTafCode.SetFocus;
      FDM_DataEntry.qrEAccSale.FieldByName('TAF_CODE').AsString := '';
      Exit;
    end
    else if not ExistTafsily(dbedGdsTafCode.Text,FDM_DataEntry.qrEAccSale.FieldByName('MOIN_CODE').AsString,_intMoin) then
    begin
      MbError(InvalidCode);
      dbedGdsTafCode.SetFocus;
    end;
{$ENDIF}
end;

procedure TfrmEAccSale.SpeedButton1Click(Sender: TObject);
var
  Code: string;
begin
  if HelpMoin(Code) then
  begin
    dbedPackMoin.SetFocus;
    with FDM_DataEntry.qrEAccSale do
    begin
      Edit;
      FieldByName('MOIN_CODE_EX').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEAccSale.dbedPackMoinExit(Sender: TObject);
begin
{$IFNDEF KABIDI}
  if (dbedPackMoin.Text = '') then Exit;
  with FDM_DataEntry.qrEAccSale do
  begin
    if not ExistMoin(FieldByName('MOIN_CODE_EX').AsString) then
    begin
      MbError(InvalidMoin);
      dbedPackMoin.SetFocus;
      Exit;
    end;
  end;
{$ENDIF}
end;

procedure TfrmEAccSale.dbedPackMoinKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    SpeedButton1.Click;
end;

procedure TfrmEAccSale.dbedPackCenExit(Sender: TObject);
begin
{$IFNDEF KABIDI}
  if (dbedPackCen.Text = '') then Exit;
  with FDM_DataEntry.qrEAccSale do
  begin
    if not ExistCenter(FieldByName('TAF_CODE_EX').AsString) then
    begin
      MbError(InvalidMoin);
      dbedPackCen.SetFocus;
      Exit;
    end;
  end;
{$ENDIF}
end;

procedure TfrmEAccSale.dbedPackCenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    SpeedButton2.Click;
end;

procedure TfrmEAccSale.SpeedButton2Click(Sender: TObject);
var
  Code: string;
begin
  if HelpCenter(Code) then
  begin
    dbedPackCen.SetFocus;
    with FDM_DataEntry.qrEAccSale do
    begin
      Edit;
      FieldByName('TAF_CODE_EX').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEAccSale.SpeedButton3Click(Sender: TObject);
var
  Code: string;
begin
  if HelpCenter(Code) then
  begin
    DBEdit1.SetFocus;
    with FDM_DataEntry.qrEAccCust do
    begin
      Edit;
      FieldByName('SEC_TAF_CODE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEAccSale.SpeedButton4Click(Sender: TObject);
var
  Code: string;
begin
  if HelpMoin(Code) then
  begin
    dbedGdsMoinCode.SetFocus;
    with FDM_DataEntry.qrEAccSale do
    begin
      Edit;
      FieldByName('ONLINEMONE_CODE').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;

end;

procedure TfrmEAccSale.SpeedButton5Click(Sender: TObject);
var
  Code: string;
begin
  if HelpMoin(Code) then
  begin
    dbedGdsMoinCode.SetFocus;
    with FDM_DataEntry.qrEAccSale do
    begin
      Edit;
      FieldByName('ONLINEMOIN_CODE_EX').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;

end;

procedure TfrmEAccSale.DBEdit3Exit(Sender: TObject);
begin
  if (DBEdit3.Text = '') then Exit;
  with FDM_DataEntry.qrEAccSale do
  begin
    if not ExistMoin(FieldByName('ONLINEMONE_CODE').AsString) then
    begin
      MbError(InvalidMoin);
      DBEdit3.SetFocus;
      Exit;
    end;
  end;
end;

procedure TfrmEAccSale.DBEdit4Exit(Sender: TObject);
begin
  if (DBEdit4.Text = '') then Exit;
  with FDM_DataEntry.qrEAccSale do
  begin
    if not ExistMoin(FieldByName('ONLINEMOIN_CODE_EX').AsString) then
    begin
      MbError(InvalidMoin);
      DBEdit4.SetFocus;
      Exit;
    end;
  end;
end;

procedure TfrmEAccSale.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    SpeedButton4.Click;
end;

procedure TfrmEAccSale.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    SpeedButton5.Click;
end;

end.
