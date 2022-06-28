{$I Direct.Inc}
unit ECnt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus,DbTables, DMUContract, ppEndUsr, ppDB, ppDBPipe, ppDBBDE, ppBands,
  ppClass, ppCtrls, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport,{$I MbUses.Inc};

type
  TFrmECnt = class(TMbForm)
    panButton: TPanel;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    stbMain: TStatusBar;
    btnPost: TBitBtn;
    btnDelete: TBitBtn;
    sbExit: TSpeedButton;
    Panel2: TPanel;
    Label7: TLabel;
    btnNoControl: TBitBtn;
    btnControl: TBitBtn;
    edTotArzCost: TEdit;
    PMen: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    edTotCost: TEdit;
    Panel3: TPanel;
    Label6: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    sbCntCode: TSpeedButton;
    Label4: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SbCust: TSpeedButton;
    dbedCntCode: TDBEdit;
    dbedCustName: TDBEdit;
    dbedCntSubj: TDBEdit;
    dbedCuseCo: TDBEdit;
    dbedCustAdr: TDBEdit;
    dbedCustTel: TDBEdit;
    dbcmbCntType: TDBComboBox;
    dbedCntDate: TDBEdit;
    dbedSntStat: TDBEdit;
    dbedCustNo: TDBEdit;
    dbgrCnt: TDBGrid;
    GroupBox1: TGroupBox;
    dbgrValidity: TDBGrid;
    Panel6: TPanel;
    Label17: TLabel;
    edNetPrice: TEdit;
    btnAccept: TButton;
    BitBtn1: TBitBtn;
    Label16: TLabel;
    dbedORD_DELV_NO: TDBEdit;
    BitBtn2: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure sbExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbedCntCodeExit(Sender: TObject);
    procedure dbcmbCntTypeChange(Sender: TObject);
    procedure SbCustClick(Sender: TObject);
    procedure dbgrCntEnter(Sender: TObject);
    procedure dbgrCntColEnter(Sender: TObject);
    procedure dbgrCntEditButtonClick(Sender: TObject);
    procedure dbgrCntKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnControlClick(Sender: TObject);
    procedure btnNoControlClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure sbCntCodeClick(Sender: TObject);
    procedure dbedCntCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sbLastClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure btnAcceptClick(Sender: TObject);
    procedure dbedCntDateExit(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnContClick(Sender: TObject);
    procedure dbedCuCodeEnter(Sender: TObject);
    procedure dbedCuCodeExit(Sender: TObject);
    procedure dbedCustNoExit(Sender: TObject);
    procedure dbgrCntColExit(Sender: TObject);
    procedure dbgrValidityColEnter(Sender: TObject);
    procedure dbgrValidityEditButtonClick(Sender: TObject);
    procedure dbgrValidityKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);

  private
    IsLock,
    DelFlag, CanCalc: Boolean;
    SeqControlCnt: TCuDBGrid;
    FAddGrid: TCuDBGrid;
    CuCode: string;
    MyTemp: string;
    GdsFlag: Boolean;
    procedure InitSeqCtrl;
    procedure InitAddSubGrid;
    procedure CntTypGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure CntTypSetText(Sender: TField; const Text: String);
    procedure CF_MstCnt(DataSet: TDataSet);
    procedure CF_DetCnt(DataSet: TDataSet);
    procedure DetBeforePost(DataSet: TDataSet);
    procedure CntStatGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure GdsCodeValidate(Sender: TField);
    procedure ProfValidate(Sender: TField);
    procedure GdsCodeChange(Sender: TField);
    procedure DetAfterOpen(DataSet: TDataSet);
    procedure CuCodeValidate(Sender: TField);
    procedure CntCodeValidate(Sender: TField);
    procedure CntQtyValidate(Sender: TField);
    procedure CntPriceValidate(Sender: TField);
    procedure ShowDetail;
    procedure FillDetailAsDefault;
    procedure CheckButton;
    procedure DisableCntControls;
    procedure EnableCntControls;
    procedure MasterOnNewRecord(DataSet: TDataSet);
    procedure DetOnNewRecord(DataSet: TDataSet);
    procedure DelCntDet;
    procedure InsCntDet;
    procedure ComboBoxChange;
    procedure FStateChange(Sender: TObject);
    procedure FUpdateError(DataSet: TDataSet; E: EDatabaseError; UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure DeleteGrid;
    procedure RefreshSum;
    procedure DetAfterPost(DataSet: TDataSet);
    function HasFinal: Boolean;
    function CanModify: Boolean;
    function CntCheckBeforeSave: Boolean;
    function PrfNumInOrder(APrfNum: string): Boolean;
    function  IsCurrency: Boolean;
    procedure CNT_ARZ_PRICEChange(Sender: TField);
    function  GetCus_Rial(ArzCode, ArzPrice : String):Double;
    procedure PAfterScroll(DataSet: TDataSet);
    procedure CNT_ARZ_PRICEValidate(Sender: TField);
    procedure FAddOnStateChanged(Sender: TObject);

    //AddSub
    procedure CF_Validity(DataSet: TDataSet);
    procedure AddOnNewRecord(DataSet: TDataSet);
    procedure AddAfterOpen(DataSet: TDataSet);
    procedure AddCodeValidate(Sender: TField);
    procedure AddValValidate(Sender: TField);
    procedure AddBeforePost(DataSet: TDataSet);
    procedure AddAfterScroll(DataSet: TDataSet);
    procedure ADKindChange(Sender: TField);
    function CalculateNetCost(const AKind: Integer): Double;
    function KasrQuery: Double;
    function EzafehQuery: Double;
    function GetPercentPrice(AdCode: string; APrice: Double): Double;
    procedure AddAfterDelete(DataSet: TDataSet);
    function  GetSeqVal: integer;
    procedure CreateOrdDelv(FSerial : integer);
    procedure DistroyOrdDelv;
    function  SelectOrd_Delv_No: integer ;
    procedure UpdateOrd_Delv_No;
    procedure EmptyOrd_delv_No;
    function  DoesHavaleHas: boolean;
    procedure PACK_TYPEOnGetText(Sender: TField; var Text: String; DisplayText: Boolean); //ê—ÊÂ »‰œÌ
    procedure PACK_TYPEOnSetText(Sender: TField; const Text: String); //ê—ÊÂ »‰œÌ
    procedure DelValidity;
    procedure InsValidity;
  public
    FDM_Contract: TDM_Contract;
    DbHandle: TMbHandle;
    FCntCode,
    FGdsCode : String;
  end;

var
  FrmECnt: TFrmECnt;

implementation

uses MainUnit, Vars, UMessage, Utility, Functions, Help, ECntLaw, DMUDataBase;

{$R *.DFM}

procedure TFrmECnt.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13)  then
  begin
    SelectNext(ActiveControl, True, True);
    Key := #0;
  end;
end;

procedure TFrmECnt.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmECnt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TFrmECnt.FormShow(Sender: TObject);
begin
  IsLock:= False;
  DelFlag:= True;
  CanCalc:= True;
  SelectEmpty(FDM_Contract.qrEContract, 'IDCONTACT_T');
  SelectEmpty(FDM_Contract.qrEContractDet, 'IDCONTACR_T');
  SelectEmpty(FDM_Contract.qrEOffValidity, 'VALIDITY_T');
  dbedCntCode.SetFocus;
end;

procedure TFrmECnt.InitSeqCtrl;
begin
  SeqControlCnt:= TCuDBGrid.Create(Self, dbgrCnt, 'CNTROW', True, True, False);

  SeqControlCnt.AddSum(['TOTCOST', 'TOTARZCOST']);
  SeqControlCnt.SetSumControl['TOTCOST']:= edTotCost;
  SeqControlCnt.SetSumControl['TOTARZCOST']:= edTotArzCost;

  SeqControlCnt.SetRowDuplicate(['GDS_CODE']);
end;

procedure TFrmECnt.FormCreate(Sender: TObject);
begin
  FDM_Contract:= TDM_Contract(MbDM.GetDM(FDM));
  SetStatusBar(stbMain);
  SetFormColor(Self,_FormColor);

  FDM_Contract.qrGdsInfo.Close;
  FDM_Contract.qrGdsInfo.Open;
  with FDM_Contract.qrEContract do
  begin
    OnCalcFields:= CF_MstCnt;
    FieldByName('CNTTYP').OnGetText:= CntTypGetText;
    FieldByName('CNTTYP').OnSetText:= CntTypSetText;
    FieldByName('CNTSTAT').OnGetText:= CntStatGetText;
    FieldbyName('CNTCODE').OnValidate:= CntCodeValidate;
    FieldByName('PRFNUM').OnValidate:= ProfValidate;
    OnUpdateError:= FUpdateError;
    OnNewRecord:= MasterOnNewRecord;
  end;

  with FDM_Contract.dsEContract do
  begin
    OnStateChange:= nil;
    OnStateChange:= FStateChange;
  end;

  with FDM_Contract.qrEContractDet do
  begin
    OnCalcFields:= CF_DetCnt;
    AfterPost:= DetAfterPost;
    BeforePost:= DetBeforePost;
    AfterOpen:= DetAfterOpen;
    FieldByName('GDS_CODE').OnValidate:= GdsCodeValidate;
    FieldByName('GDS_CODE').OnChange:= GdsCodeChange;
    FieldByName('CU_CODE').OnValidate:= CuCodeValidate;
    FieldByName('CNTQTY').OnValidate:= CntQtyValidate;
    FieldByName('CNTPRICE').OnValidate:= CntPriceValidate;
    FieldByName('CNT_ARZ_PRICE').OnChange:= CNT_ARZ_PRICEChange;
    FieldByName('CNT_ARZ_PRICE').OnValidate:= CNT_ARZ_PRICEValidate;
    AfterScroll  := pAfterScroll;
    OnUpdateError:= FUpdateError;
    OnNewRecord:= DetOnNewRecord;
    FieldByName('PACK_TYPE').OnGetText:= PACK_TYPEOnGetText;
    FieldByName('PACK_TYPE').OnSetText:= PACK_TYPEOnSetText;
  end;

  with FDM_Contract.dsEContractDet do
  begin
    OnStateChange:= nil;
    OnStateChange:= FStateChange;
  end;

  with FDM_Contract.qrEOffValidity do
  begin
    OnCalcFields:= CF_Validity;
    AfterScroll := AddAfterScroll;
    AfterOpen   := AddAfterOpen;
    AfterDelete := AddAfterDelete;
    OnNewRecord := AddOnNewRecord;
    BeforePost  := AddBeforePost;
    FieldByName('ADCODE').OnValidate := AddCodeValidate;
    FieldByName('ADVAL').OnValidate  := AddValValidate;

    OnUpdateError := FUpdateError;
  end;

  with FDM_Contract.dsEOffValidity do
  begin
    OnStateChange:= nil;
    OnStateChange:= FAddOnStateChanged;
  end;

  InitSeqCtrl;
  InitAddSubGrid;
end;

procedure TFrmECnt.dbedCntCodeExit(Sender: TObject);
begin
  if dbedCntCode.Text = '' then
  begin
    MbError(CntCodeIsEmpty);
    dbedCntCode.SetFocus;
    Exit;
  end;

  with FDM_Contract.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT OFNUM                    ');
    Add('  FROM OFFERTIT_T                ');
    Add(' WHERE OFNUM  = :OFNUM         ');
    ParamByName('OFNUM').AsString    := dbedCntCode.Text;
    SQL:= MbSqlConvert(SQL);
    Open;
    if not FDM_Contract.qrETemp.IsEmpty then
    begin
      MbError('«Ì‰ ‘„«—Â ﬁ»·« œ— ÅÌ‘‰Â«œ ›—Ê‘ «” ›«œÂ ‘œÂ «” .');
      dbedCntCode.SetFocus;
      exit;
    end;
  end;

  EnableCntControls;
  IsLock:= False;
  AutoSelect(FDB, FDM_Contract.qrEContract, 'IDCONTACT_T', 1, IsLock);

  with FDM_Contract.qrEContract do
  begin
    if FieldByName('CNTDTE').Value = Null then
    begin
      Edit;
      FieldByName('CNTDTE').AsString:= MbUserDate;
    end;

    if dbcmbCntType.Text = '' then
    begin
      Edit;
      FieldByName('CNTTYP').AsInteger:= _intIntSale;
    end;

    if FieldByName('CNTSTAT').Value = Null then
    begin
      Edit;
      FieldByName('CNTSTAT').AsInteger:= _intNotConfirmed;
    end;
  end;

  ComboBoxChange;
  ShowDetail;
  FDM_Contract.qrEContractDet.CachedUpdates:= True;
  FDM_Contract.qrEOffValidity.CachedUpdates:= True;

  if ExistCnt(dbedCntCode.Text, dbcmbCntType.ItemIndex + 1) then
  begin
    dbcmbCntType.Enabled:= False;


    if not CanModify then
      DisableCntControls
    else
      EnableCntControls;
  end
  else
    dbcmbCntType.Enabled:=True;
  CheckButton;

end;

procedure TFrmECnt.CntTypGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intIntSale: Text:= _stIntSale;
    _intExtSale: Text:= _stExtSale;
  end;
end;

procedure TFrmECnt.CntTypSetText(Sender: TField; const Text: String);
begin
  if Text = _stIntSale then
    Sender.AsInteger:= _intIntSale;

  if Text = _stExtSale then
    Sender.AsInteger:= _intExtSale;
end;

procedure TFrmECnt.CF_MstCnt(DataSet: TDataSet);
begin
  if dbcmbCntType.Text = '' then
    Exit;

  with FDM_Contract.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT C.CUSTNAME, C.ECONOMIC_CODE, C.CUSTTEL,    ');
    Add('       C.CUSTADD                           ');
    Add('  FROM IDCUSTOMER_T C              ');
    Add(' WHERE C.CUSTNO = :PCusNo                  ');

    ParamByName('PCusNo').AsString:= DataSet.FieldByName('CUSTNO').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;

    DataSet.FieldByName('CF_CUSTNAME').AsString:= FieldByName('CUSTNAME').AsString;
    DataSet.FieldByName('ECONOMIC_CODE').AsString:= FieldByName('ECONOMIC_CODE').AsString;
    DataSet.FieldByName('CUSTTEL').AsString:= FieldByName('CUSTTEL').AsString;
    DataSet.FieldByName('CUSTADR').AsString:= FieldByName('CUSTADD').AsString;
  end;
end;


procedure TFrmECnt.dbcmbCntTypeChange(Sender: TObject);
begin
  ComboBoxChange;
end;

procedure TFrmECnt.CntStatGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intNotConfirmed: Text:= _stNotConfirmed;
    _intConfirmed: Text:= _stConfirmed;
  end;
end;

procedure TFrmECnt.dbgrCntEnter(Sender: TObject);
begin
  dbgrCnt.SelectedIndex:= 1;
end;

procedure TFrmECnt.dbgrCntColEnter(Sender: TObject);
begin
  with dbgrCnt do
  begin
    if SelectedIndex in [0, 2, 3] then
      SelectedIndex:= 1;

    if SelectedIndex in [7,9] then
      SelectedIndex:= 6;

    if CUCODE = '' Then
    begin
      if SelectedIndex = 4 then
        SelectedIndex:= 5;
    end
    else
    begin
      if SelectedIndex = 5 then
        SelectedIndex:= 4;
    end;

  end;    
end;

procedure TFrmECnt.CF_DetCnt(DataSet: TDataSet);
begin
  if SeqControlCnt.CanCalculate then
  begin

    with FDM_Contract.qrETemp, SQL do
    begin
      Clear;
      Add('SELECT GDS_DESCF, GDS_DESCL');
      Add('  FROM PSSALES.GOODS       ');
      Add(' WHERE GDS_CODE = :GDS_CODE');
      ParamByName('GDS_CODE').AsString:= DataSet.FieldByName('GDS_CODE').AsString;
      SQL:= MbSqlConvert(SQL);
      Open;

      DataSet.FieldByName('GDS_DESCF').AsString:= FieldByName('GDS_DESCF').AsString;
      DataSet.FieldByName('GDS_DESCL').AsString:= FieldByName('GDS_DESCL').AsString;
    end;

    if not (DataSet.FieldByName('CU_CODE').AsString = '') then
      DataSet.FieldByName('CU_NAME').AsString:= FindArzName(DataSet.FieldByName('CU_CODE').AsString);

  end;

  if (not (DataSet.FieldByName('CNTPRICE').Value = Null)) and
     (not (DataSet.FieldByName('CNTQTY').Value = Null)) then
  begin
    {DataSet.FieldByName('TOTCOST').AsFloat:= DataSet.FieldByName('CNTPRICE').AsFloat *
                                             DataSet.FieldByName('CNTQTY').AsFloat}

     DataSet.FieldByName('TOTCOST').AsFloat:= (DataSet.FieldByName('CNTPRICE').AsFloat *DataSet.FieldByName('CNTQTY').AsFloat)-
                                              ((DataSet.FieldByName('CNTPRICE').AsFloat *DataSet.FieldByName('CNTQTY').AsFloat)*
                                               DataSet.FieldByName('PREPAY').AsFloat /100)


  end;

  with FDM_Contract.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT SUM(NVL(ORD_FINALQTY,0)) ORD_FINALQTY ');
    Add('  FROM ORD_M_T M,ORD_D_T D                   ');
    Add(' WHERE M.ORD_CODE  = D.ORD_CODE              ');
    Add('   AND M.ORD_YEAR  = D.ORD_YEAR              ');
    Add('   AND D.GDS_CODE  = :GDS_CODE               ');
    Add('   AND ORDCNT_CODE = :ORD_CODE               ');
    ParamByName('GDS_CODE').AsString:= FDM_Contract.qrEContractDet.FieldByName('GDS_CODE').AsString;
    ParamByName('ORD_CODE').AsString:= FDM_Contract.qrEContract.FieldByName('CNTCODE').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;

    DataSet.FieldByName('CF_FINALQTY').AsString:= FieldByName('ORD_FINALQTY').AsString;
  end;

  if (not (DataSet.FieldByName('CNT_ARZ_PRICE').Value = Null)) and
     (not (DataSet.FieldByName('CNTQTY').Value = Null)) then
  begin
    DataSet.FieldByName('TOTARZCOST').AsFloat:= DataSet.FieldByName('CNT_ARZ_PRICE').AsFloat *
                                                DataSet.FieldByName('CNTQTY').AsFloat
  end; 
end;

procedure TFrmECnt.CntPriceValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
    if (Sender.AsFloat > 9999999999999.99) or (Sender.AsFloat < 0) then
    begin
      MbError(RangeErr);
      Abort;
    end;
end;

procedure TFrmECnt.CntQtyValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
    if (Sender.AsFloat > 9999999999) or (Sender.AsFloat < 0) then
    begin
      MbError(RangeErr);
      Abort;
    end;
end;

procedure TFrmECnt.CuCodeValidate(Sender: TField);
begin
  if (Sender.AsFloat > 99) or (Sender.AsFloat < 0) then
  begin
    MbError(RangeErr);
    Abort;
  end;

  if not (Sender.AsString = '') then
    if not ExistArz(Sender.AsString) then
    begin
      MbError(InvalidArz);
      Abort;
    end;
end;

procedure TFrmECnt.GdsCodeValidate(Sender: TField);
var
  PackType,GdsInfoM :Integer;
  PackCost : Double;
begin
  if not (Sender.AsString = '') then
  begin
    if not ExistGds(Sender.AsString) then
    begin
      MbError(InvalidGds);
      Abort;
    end;
  end;

  PackType := GetPackType(Sender.AsString);
  if PackType <> 0 then
  begin
    Sender.DataSet.Edit;
    Sender.DataSet.FieldByName('PACK_TYPE').AsInteger:= PackType;
  end;

  GdsInfoM := GetGdsInfoM(Sender.AsString);
  if PackType <> 0 then
  begin
    Sender.DataSet.Edit;
    Sender.DataSet.FieldByName('GDS_INFO').AsInteger:= GdsInfoM;
  end;

  PackCost := GetCostPack(Sender.AsString);
  if (PackType <> 0)  then
  begin
    if (Sender.DataSet.FieldByName('PCOST').AsFloat = 0) then
    begin
      Sender.DataSet.Edit;
      Sender.DataSet.FieldByName('PCOST').AsFloat:= PackCost;
    end;  
  end;
end;

procedure TFrmECnt.dbgrCntEditButtonClick(Sender: TObject);
var
  Code: string;
begin
  if TQuery(dbgrCnt.DataSource.DataSet).CachedUpdates = False then Exit;

  if dbgrCnt.SelectedField.FieldName = 'GDS_CODE' then
  begin
    if HelpGds(Code) then
    begin
      with FDM_Contract.qrEContractDet do
      begin
        Edit;
        FieldByName('GDS_CODE').AsString:= Code;
      end;
      dbgrCnt.SelectedIndex:= 4;
      Exit;
    end;
  end;

  if dbgrCnt.SelectedField.FieldName = 'CU_CODE' then
  begin
    if HelpArz(Code) then
    begin
      with FDM_Contract.qrEContractDet do
      begin
        Edit;
        FieldByName('CU_CODE').AsString:= Code;
      end;
      dbgrCnt.SelectedIndex:= 6;
      Exit;
    end;
  end;
end;

procedure TFrmECnt.dbgrCntKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    dbgrCntEditButtonClick(nil);
end;

procedure TFrmECnt.ShowDetail;
begin
  FDM_Contract.qrEContractDet.DisableControls;
  try
    with FDM_Contract.qrEContractDet, SQL do
    begin
      Clear;
      Add('SELECT     *                  ');
      Add('  FROM     PSSALES.IDCONTACR_T');
      Add('  WHERE    CNTCODE = :CNTCODE ');
      Add('  ORDER BY CNTROW             ');
      ParamByName('CNTCODE').AsString:= FDM_Contract.qrEContract.FieldByName('CNTCODE').AsString;
      SQL:= MbSqlConvert(SQL);
      Open;
      CuCode:= FieldByName('CU_CODE').AsString;
    end;
  finally
    FDM_Contract.qrEContractDet.EnableControls;
  end;

  FDM_Contract.qrEOffValidity.DisableControls;
  try
    with FDM_Contract.qrEOffValidity, SQL do
    begin
      Clear;
      Add('SELECT   *                 ');
      Add('  FROM   PSSALES.VALIDITY_T');
      Add(' WHERE   ADNUM1 = :ADNUM1  ');
      Add('ORDER BY ADCODE            ');
      ParamByName('ADNUM1').AsString:= FDM_Contract.qrEContract.FieldByName('CNTCODE').AsString;
      SQL:= MbSqlConvert(SQL);
      Open;
    end;
  finally
    FDM_Contract.qrEOffValidity.EnableControls;
  end;
end;

procedure TFrmECnt.FillDetailAsDefault;
var
  DataSet, FQuery: TQuery;
begin
  DataSet:= FDM_Contract.qrEContractDet;
  FQuery:= TQuery.Create(Self);
  try
    with FQuery, SQL do
    begin
      DataBaseName:= MbDB.DataBaseName[FDB];
      Clear;
      Add('SELECT  GDS_CODE, PROQTY, PROPRICE, CU_CODE');
      Add('  FROM  PSSALES.PROFORMAR_T                ');
      Add('  WHERE PRFNUM = :PRFNUM                   ');
      ParamByName('PRFNUM').AsString:= FDM_Contract.qrEContract.FieldByName('PRFNUM').AsString;
      SQL:= MbSqlConvert(SQL);
      Open;

      CuCode:= FieldByName('CU_CODE').AsString;
      First;
      DataSet.DisableControls;
      try
        while not EOF do
        begin
          DataSet.Insert;
          DataSet.Edit;
          if  not (DataSet.State  in [dsInsert,dsEdit]) then
            DataSet.Edit;
          DataSet.FieldByName('GDS_CODE').AsString:= FieldByName('GDS_CODE').AsString;
          if not(DataSet.State in [dsInsert,dsEdit]) then
            DataSet.Edit;
          DataSet.FieldByName('CNTQTY').AsString  := FieldByName('PROQTY').AsString;
          DataSet.FieldByName('CNTPRICE').AsString:= FieldByName('PROPRICE').AsString;
          DataSet.FieldByName('CU_CODE').AsString := FieldByName('CU_CODE').AsString;

          Next;
        end;
      finally
        FDM_Contract.qrEContractDet.First;
        FDM_Contract.qrEContractDet.EnableControls;
      end;
    end;
  finally
    FQuery.Free;
  end;
end;

procedure TFrmECnt.CheckButton;
begin
  if (FDM_Contract.qrEContract.FieldByName('CNTSTAT').AsInteger = _intNotConfirmed) or
     (FDM_Contract.qrEContract.FieldByName('CNTSTAT').AsString = '') then
  begin
    btnControl.Visible:= True;
    btnNoControl.Visible:= False;
  end
  else
  begin
    btnControl.Visible:= False;
    btnNoControl.Visible:= True;
    if HasFinal then
      btnNoControl.Enabled:= False
    else
      btnNoControl.Enabled:= True;
  end;
end;

procedure TFrmECnt.btnControlClick(Sender: TObject);
var
  Serial : integer;
begin
  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if not ExistCnt(dbedCntCode.Text, dbcmbCntType.ItemIndex + 1) then
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
      Add('UPDATE  PSSALES.IDCONTACT_T');
      Add('  SET   CNTSTAT = :CNTSTAT ');
      Add('  WHERE CNTCODE = :CNTCODE ');
      ParamByName('CNTSTAT').AsInteger:= _intConfirmed;
      ParamByName('CNTCODE').AsString:= FDM_Contract.qrEContract.FieldByName('CNTCODE').AsString;
      SQL:= MbSqlConvert(SQL);
      ExecSQL;
      Serial := GetSeqVal;

      if dbedORD_DELV_NO.Text = '' then
      begin
        FDM_Contract.qrEContract.Edit;
        FDM_Contract.qrEContract.FieldByName('Ord_Delv_No').AsInteger := Serial;//SelectOrd_Delv_No;
      end;
      CreateOrdDelv(serial);
      UpdateOrd_Delv_No;
    end;

    MbDB.Commit(FDB);
  except
    MbDB.RollBack(FDB);
  end;

  btnControl.Visible:= False;
  btnNoControl.Visible:= True;
  DisableCntControls;

  FDM_Contract.qrEContract.DisableControls;
  try
    dbedCntCodeExit(nil);
    if dbedORD_DELV_NO.Text = '' then
      UpdateOrd_Delv_No;

  finally
    FDM_Contract.qrEContract.EnableControls;
  end;
  dbedCntCode.SetFocus;
end;

procedure TFrmECnt.DisableCntControls;
begin
  dbedCntDate.Enabled:= False;
  dbcmbCntType.Enabled:= False;
  dbedCntSubj.Enabled:= False;
  dbedCustNo.Enabled :=False;

  TQuery(dbgrCnt.DataSource.DataSet).CachedUpdates:= False;
  TQuery(dbgrValidity.DataSource.DataSet).CachedUpdates:= False;

  btnPost.Enabled:= False;
  btnDelete.Enabled:= False;

  btnAccept.Enabled:= True;

  SbCust.Enabled :=False;
  dbgrCnt.Enabled :=False;

end;

procedure TFrmECnt.EnableCntControls;
begin
  dbedCntDate.Enabled:= True;
  if not ExistCnt(dbedCntCode.Text, dbcmbCntType.ItemIndex + 1) then
    dbcmbCntType.Enabled:= True;
  dbedCntSubj.Enabled:= True;

  TQuery(dbgrCnt.DataSource.DataSet).CachedUpdates:= True;
  TQuery(dbgrValidity.DataSource.DataSet).CachedUpdates:= True;

  btnPost.Enabled:= True;
  btnDelete.Enabled:= True;

  btnAccept.Enabled:= False;
  dbedCustNo.Enabled :=True;
  SbCust.Enabled :=True;
  dbgrCnt.Enabled :=True;
end;

procedure TFrmECnt.btnNoControlClick(Sender: TObject);
begin
  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if not ExistCnt(dbedCntCode.Text, dbcmbCntType.ItemIndex + 1) then
  begin
    MbError(MustSaveRec);
    Exit;
  end;
(*
  if not DoesHavaleHas then
  begin
    MbError(CanNotDelete);
    Exit;
  end;
*)
  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_Contract.qrETemp, SQL do
    begin
      Clear;
      Add('UPDATE  PSSALES.IDCONTACT_T');
      Add('  SET   CNTSTAT = :CNTSTAT ');
      Add('  WHERE CNTCODE = :CNTCODE ');
      ParamByName('CNTSTAT').AsInteger:= _intNotConfirmed;
      ParamByName('CNTCODE').AsString:= FDM_Contract.qrEContract.FieldByName('CNTCODE').AsString;
      SQL:= MbSqlConvert(SQL);
      ExecSQL;

      DistroyOrdDelv;
      EmptyOrd_delv_No;
    end;

    MbDB.Commit(FDB);
  except
    MbDB.RollBack(FDB);
  end;

  btnNoControl.Visible:= False;
  btnControl.Visible:= True;
  EnableCntControls;

  FDM_Contract.qrEContract.DisableControls;
  try
    dbedCntCodeExit(nil);
    EmptyOrd_delv_No;
  finally
    FDM_Contract.qrEContract.EnableControls;
  end;

  dbedCntCode.SetFocus;
end;

procedure TFrmECnt.btnPostClick(Sender: TObject);
begin
  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if FDM_Contract.qrEContractDet.IsEmpty then
  begin
    MbError(RecHasRel);
    dbgrCnt.SetFocus;
    dbgrCnt.SelectedIndex:= 1;
    Exit;
  end;

  if not CntCheckBeforeSave then
    Abort;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_Contract.qrEContract do
    begin
      ApplyUpdates;
    end;

    DelCntDet;
    InsCntDet;

    //AddSub
    DelValidity;
    InsValidity;
(*
    with FDM_Contract.qrEOffValidity do
    begin
      CalculateNetCost(_OnSave);
      ApplyUpdates;
    end;
    //--------------
*)
    MbDB.Commit(FDB);

    SelectEmpty(FDM_Contract.qrEContract, 'IDCONTACT_T');
    SelectEmpty(FDM_Contract.qrEContractDet, 'IDCONTACR_T');
    SelectEmpty(FDM_Contract.qrEOffValidity, 'VALIDITY_T');
    dbedCntCode.SetFocus;
    btnPost.Enabled:= False;
  except
    MbDB.RollBack(FDB);
  end;
end;

procedure TFrmECnt.DelCntDet;
begin
  with FDM_contract.qrETemp, SQL do
  begin
    Clear;
    Add('DELETE  FROM PSSALES.IDCONTACR_T');
    Add('  WHERE CNTCODE = :CNTCODE      ');
    ParamByName('CNTCODE').AsString:= FDM_contract.qrEContract.FieldByName('CNTCODE').AsString;
    SQL := MbSqlConvert(SQL);
    ExecSql;
  end;
end;

procedure TFrmECnt.InsCntDet;
begin
  FDM_Contract.qrEContractDet.DisableControls;
  try
    FDM_Contract.qrEContractDet.First;

    while not FDM_Contract.qrEContractDet.Eof do
    begin
      with FDM_Contract.qrETemp, SQL do
      begin
        DataBaseName:= MbDB.DataBaseName[FDB];
        Clear;

        Add('INSERT INTO PSSALES.IDCONTACR_T (CNTCODE, CNTROW, CU_CODE, GDS_CODE, CNTQTY, CNTPRICE, CNT_ARZ_PRICE ,PREPAY,PACK_TYPE,GDS_INFO,CNT_FINALQTY,PCOST)');
        Add('  VALUES  (:CNTCODE, :CNTROW, :CU_CODE, :GDS_CODE, :CNTQTY, :CNTPRICE, :CNT_ARZ_PRICE, :PREPAY,:PACK_TYPE,:GDS_INFO,:CNT_FINALQTY,:PCOST)               ');
        ParamByName('CNTCODE').AsString  := FDM_Contract.qrEContract.FieldByName('CNTCODE').AsString;
        ParamByName('CNTROW').AsString   := FDM_Contract.qrEContractDet.FieldByName('CNTROW').AsString;
        ParamByName('GDS_CODE').AsString := FDM_Contract.qrEContractDet.FieldByName('GDS_CODE').AsString;
        ParamByName('CNTQTY').AsString   := FDM_Contract.qrEContractDet.FieldByName('CNTQTY').AsString;
        ParamByName('CNTPRICE').AsString := FDM_Contract.qrEContractDet.FieldByName('CNTPRICE').AsString;
        ParamByName('CNT_ARZ_PRICE').AsString := FDM_Contract.qrEContractDet.FieldByName('CNT_ARZ_PRICE').AsString;
//        ParamByName('CU_CODE').AsString  := FDM_Contract.qrEContractDet.FieldByName('CU_CODE').AsString;
        ParamByName('CU_CODE').AsString  := CuCode;
        ParamByName('PREPAY').AsString := FDM_Contract.qrEContractDet.FieldByName('PREPAY').AsString;
        ParamByName('PACK_TYPE').AsString := FDM_Contract.qrEContractDet.FieldByName('PACK_TYPE').AsString;
        ParamByName('GDS_INFO').AsString := FDM_Contract.qrEContractDet.FieldByName('GDS_INFO').AsString;
        ParamByName('PCOST').AsString := FDM_Contract.qrEContractDet.FieldByName('PCOST').AsString;
        ParamByName('CNT_FINALQTY').AsString := FDM_Contract.qrEContractDet.FieldByName('CNT_FINALQTY').AsString;

        SQL := MbSqlConvert(SQL);
        ExecSql;
      end;

      FDM_Contract.qrEContractDet.Next;
    end;
  finally
    FDM_Contract.qrEContractDet.EnableControls;
  end;
end;

function TFrmECnt.CanModify: Boolean;
begin
  with FDM_Contract.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT CNTSTAT            ');
    Add('  FROM PSSALES.IDCONTACT_T');
    Add(' WHERE CNTCODE = :CNTCODE ');
    ParamByName('CNTCODE').AsString:= FDM_Contract.qrEContract.FieldByName('CNTCODE').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result:= (FieldByName('CNTSTAT').AsInteger = _intNotConfirmed);
    Close;
  end;
end;

function TFrmECnt.CntCheckBeforeSave: Boolean;
begin
  Result:= True;
  with FDM_Contract.qrEContract do
  begin
    if FieldByName('CNTDTE').Value = Null then
    begin
      MbError(NotDataComplete);
      dbedCntDate.SetFocus;
      Result:= False;
      Exit;
    end;

    if FieldbyName('CNTSUBJ').Value = Null then
    begin
      MbError(NotDataComplete);
      dbedCntSubj.SetFocus;
      Result:= False;
      Exit;
    end;

    if FieldByName('CUSTNO').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedCustNo.SetFocus;
      Result:= False;
      Exit;
    end;
  end;//With
end;

procedure TFrmECnt.sbCntCodeClick(Sender: TObject);
var
  Code: string;
begin
  if HelpCnt(Code) then
  begin
    dbedCntCode.SetFocus;
    with FDM_Contract.qrEContract do
    begin
      Edit;
      FieldByName('CNTCODE').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmECnt.dbedCntCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    sbCntCode.Click;
end;

procedure TFrmECnt.ComboBoxChange;
begin
  with FDM_Contract.qrEContract do
  begin
    case dbcmbCntType.ItemIndex + 1 of
      _intIntSale:
      begin
        Edit;
        FieldByName('PRFNUM').AsString:= '';
      end;
    end;
  end;
end;

procedure TFrmECnt.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= CheckChanges(FDM_Contract.qrEContract, FDM_Contract.qrEContractDet, FDM);
end;

procedure TFrmECnt.sbLastClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_Contract.qrEContract.DisableControls;
  try
    with FDM_Contract do
    begin
      if not CheckChanges(qrEContract, qrEContractDet, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEContract, 'IDCONTACT_T', 1, Ord(_Last), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_Contract.qrEContract.EnableControls;
  end;

  IsLock:= False;
  AutoSelect(FDB, FDM_Contract.qrEContract, 'IDCONTACT_T', 1, IsLock);
  ShowDetail;

  if not CanModify then
    DisableCntControls
  else
    EnableCntControls;

  CheckButton;
end;

procedure TFrmECnt.sbNextClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_Contract.qrEContract.DisableControls;
  try
    with FDM_Contract do
    begin
      if not CheckChanges(qrEContract, qrEContractDet, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEContract, 'IDCONTACT_T', 1, Ord(_Next), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_Contract.qrEContract.EnableControls;
  end;

  IsLock:= False;
  AutoSelect(FDB, FDM_Contract.qrEContract, 'IDCONTACT_T', 1, IsLock);
  ShowDetail;

  if not CanModify then
    DisableCntControls
  else
    EnableCntControls;

  CheckButton;
end;

procedure TFrmECnt.sbPrevClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_Contract.qrEContract.DisableControls;
  try
    with FDM_Contract do
    begin
      if not CheckChanges(qrEContract, qrEContractDet, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEContract, 'IDCONTACT_T', 1, Ord(_Prev), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_Contract.qrEContract.EnableControls;
  end;

  IsLock:= False;
  AutoSelect(FDB, FDM_Contract.qrEContract, 'IDCONTACT_T', 1, IsLock);
  ShowDetail;

  if not CanModify then
    DisableCntControls
  else
    EnableCntControls;

  CheckButton;
end;

procedure TFrmECnt.sbFirstClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_Contract.qrEContract.DisableControls;
  try
    with FDM_Contract do
    begin
      if not CheckChanges(qrEContract, qrEContractDet, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEContract, 'IDCONTACT_T', 1, Ord(_First), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_Contract.qrEContract.EnableControls;
  end;

  IsLock:= False;
  AutoSelect(FDB, FDM_Contract.qrEContract, 'IDCONTACT_T', 1, IsLock);
  ShowDetail;

  if not CanModify then
    DisableCntControls
  else
    EnableCntControls;

  CheckButton;
end;

procedure TFrmECnt.btnAcceptClick(Sender: TObject);
begin
  btnNoControl.Enabled:= False;
  MainForm.acEGHCnt.Execute;
end;

procedure TFrmECnt.dbedCntDateExit(Sender: TObject);
begin
  if FDM_Contract.qrEContract.FieldByName('CNTDTE').AsString = '' then Exit;

  if not MsDateIsValid1(FDM_Contract.qrEContract.FieldByName('CNTDTE').AsString, False) then
  begin
    MbMessage(' «—ÌŒ €Ì— „Ã«“', mtError, [mbOk], mbOk);
    dbedCntDate.SetFocus;
    dbedCntDate.Text := MbUserDate;
    dbedCntDate.SelStart := 0;
    Exit;
  end;
end;

procedure TFrmECnt.N1Click(Sender: TObject);
begin
  FDM_Contract.qrEContractDet.Insert;
end;

procedure TFrmECnt.N2Click(Sender: TObject);
begin
  FDM_Contract.qrEContractDet.Delete;
end;

procedure TFrmECnt.FStateChange(Sender: TObject);
begin
  with FDM_Contract do
    G_StateChange(qrEContract, qrEContractDet, btnPost, btnDelete);
end;

procedure TFrmECnt.FUpdateError(DataSet: TDataSet; E: EDatabaseError;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
  MbError(ExpHandleM(E));
  Abort;
end;

procedure TFrmECnt.btnDeleteClick(Sender: TObject);
var
  FQuery: TQuery;
  Code: string;
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

    Code:= FDM_Contract.qrEContract.FieldByName('CNTCODE').AsString;
    FQuery:= TQuery.Create(Self);
    try
      FQuery.DataBaseName:= MbDB.DataBaseName[FDB];
      try
        with FQuery, SQL do
        begin
          Clear;
          Add('DELETE FROM PSSALES.VALIDITY_T');
          Add('WHERE');
          Add('     ADNUM1 = :ADNUM1');
          ParamByName('ADNUM1').AsString:= Code;
          SQL:= MbSqlConvert(SQL);
          ExecSql;

          Clear;
          Add('DELETE  FROM PSSALES.IDCONTACR_T');
          Add('  WHERE CNTCODE = :CNTCODE      ');
          ParamByName('CNTCODE').AsString:= Code;
          SQL:= MbSqlConvert(SQL);
          ExecSql;

          Clear;
          Add('DELETE  FROM PSSALES.IDCONTACT_T');
          Add('  WHERE CNTCODE = :CNTCODE      ');
          ParamByName('CNTCODE').AsString:= Code;
          SQL:= MbSqlConvert(SQL);
          ExecSql;
        end;

        SelectEmpty(FDM_Contract.qrEContract, 'IDCONTACT_T');
        SelectEmpty(FDM_Contract.qrEContractDet, 'IDCONTACR_T');
        SelectEmpty(FDM_Contract.qrEOffValidity, 'VALIDITY_T');
        dbedCntCode.SetFocus;
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

function TFrmECnt.HasFinal: Boolean;
begin
  with FDM_Contract.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT CNTCODE            ');
    Add('  FROM PSSALES.FINALCTNT_T');
    Add(' WHERE CNTCODE = :CNTCODE ');
    ParamByName('CNTCODE').AsString:= FDM_Contract.qrEContract.FieldByName('CNTCODE').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result:= not IsEmpty;
    Close;
  end;
end;

procedure TFrmECnt.DeleteGrid;
begin
  with dbgrCnt.DataSource.DataSet do
  begin
    DisableControls;
    try
      First;
      while not Eof do
      begin
        Delete;

        Next;
      end;
    finally
      EnableControls;
    end;
  end;
end;

procedure TFrmECnt.CntCodeValidate(Sender: TField);
begin
  if dbcmbCntType.Text = '' then
    with FDM_Contract.qrEContract do
    begin
      Edit;
      FieldbyName('CNTTYP').AsInteger:= _intIntSale;
    end;
end;

procedure TFrmECnt.btnContClick(Sender: TObject);
begin
  btnNoControl.Enabled:= False;
  MainForm.acECntLaw.Execute;
end;

function TFrmECnt.PrfNumInOrder(APrfNum: string): Boolean;
var
  FQuery: TQuery;
begin
  FQuery:= TQuery.Create(Self);
  try
    with FQuery, SQL do
    begin
      DataBaseName:= MbDB.DataBaseName[FDB];
      Clear;
      Add('SELECT PRFNUM            ');
      Add('  FROM PSSALES.ORDERTIT_T');
      Add(' WHERE PRFNUM = :PRFNUM  ');
      ParamByName('PRFNUM').AsString:= APrfNum;
      SQL:= MbSqlConvert(SQL);
      Open;
      Result:= not IsEmpty;
      Close;
    end;
  finally
    FQuery.Free;
  end;
end;

procedure TFrmECnt.dbedCuCodeEnter(Sender: TObject);
begin
  CuCode:= '';
  MyTemp:= FDM_Contract.qrEContractDet.FieldByName('CU_CODE').AsString;
  if (Sender as TDBEdit).DataSource.DataSet.IsEmpty then
    (Sender as TDBEdit).DataSource.DataSet.Insert;
end;

procedure TFrmECnt.dbedCuCodeExit(Sender: TObject);
var
  BM: TBookMark;
  Code:string;
begin
  if FDM_Contract.qrEContractDet.FieldByName('CU_CODE').AsString = '' then
  begin
    CUCODE := '';
    Exit;
  end;

  if TQuery(dbgrCnt.DataSource.DataSet).CachedUpdates = False then Exit;
  if FDM_Contract.qrEContractDet.IsEmpty then Exit;
  if MyTemp = FDM_Contract.qrEContractDet.FieldByName('CU_CODE').AsString then Exit;
end;

procedure TFrmECnt.DetOnNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('CU_CODE').AsString:= CuCode;
  if CuCode = '' then
  begin
    DataSet.FieldByName('CNT_ARZ_PRICE').AsString:= '';
    DataSet.FieldByName('TOTARZCOST').AsString:= '';
  end;
end;

procedure TFrmECnt.DetAfterPost(DataSet: TDataSet);
begin
end;

procedure TFrmECnt.RefreshSum;
begin
end;

function TFrmECnt.IsCurrency: Boolean;
begin
  Result:= not (FDM_Contract.qrEContractDet.FieldByName('CU_CODE').AsString = '');
end;

procedure TFrmECnt.DetBeforePost(DataSet: TDataSet);
begin
  with DataSet do
  begin
    if FieldByName('GDS_CODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrCnt.SetFocus;
      dbgrCnt.SelectedIndex:= 1;
      Abort;
    end;

    if FieldByName('CNTPRICE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrCnt.SetFocus;
      dbgrCnt.SelectedIndex:= 5;
      Abort;
    end;

    if FieldByName('CNTQTY').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrCnt.SetFocus;
      dbgrCnt.SelectedIndex:= 6;
      Abort;
    end;

    if FieldByName('PACK_TYPE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrCnt.SetFocus;
      dbgrCnt.SelectedIndex:= 10;
      Abort;
    end;
  end;
end;

procedure TFrmECnt.GdsCodeChange(Sender: TField);
var
  Rate: Double;
begin
  if (Sender.AsString = '') or (GdsFlag = False) then
    Exit;
  if GetGoodRate(Sender.AsString, Rate) then
  begin
    GdsFlag:= True;
    if IsCurrency then
      Rate:= Rate / StrToFloatDef(GetTaseer(Sender.DataSet.FieldByName('CU_CODE').AsString), 1)
    else
      Rate:= Round(Rate);

    Sender.DataSet.Edit;
    Sender.DataSet.FieldByName('CNTPRICE').AsFloat:= Rate;
  end;
end;

procedure TFrmECnt.DetAfterOpen(DataSet: TDataSet);
begin
  GdsFlag:= True;
end;

procedure TFrmECnt.SbCustClick(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomer(Code) then
  begin
    dbedCustNo.SetFocus;
    with FDM_Contract.qrEContract do
    begin
      Edit;
      FieldByName('CUSTNO').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmECnt.dbedCustNoExit(Sender: TObject);
begin
  with FDM_Contract.qrEContract do
  begin
    if not (FieldByName('CUSTNO').AsString = '') then
    begin
      if not ExistCustomer(FieldByName('CUSTNO').AsString) then
      begin
        MbError(InvalidCustCode);
        dbedCustNO.SetFocus;
        Exit;
      end;
    end;
  end;
end;

procedure TFrmECnt.CNT_ARZ_PRICEChange(Sender: TField);
begin
  Sender.DataSet.Edit;
  if Sender.DataSet.FieldByName('CNT_ARZ_PRICE').AsString <> '' then
    Sender.DataSet.FieldByName('CNTPRICE').AsFloat:= GetCus_Rial(CuCode,Sender.DataSet.FieldByName('CNT_ARZ_PRICE').AsString) ;
end;

function TFrmECnt.GetCus_Rial(ArzCode, ArzPrice : String): Double;
var
  FQuery: TQuery;
begin
  FQuery:= TQuery.Create(Self);
  try
    with FQuery, SQL do
    begin
      DataBaseName:= MbDB.DataBaseName[FDB];
      Clear;
      Add('SELECT  CU_RIAL        ');
      Add('  FROM  CASH.CURENCY_T ');
      Add('  WHERE CU_CODE = :CODE');
      ParamByName('CODE').AsString:= ArzCode;
      SQL:=MbSqlConvert(SQl);
      Open;
      Result:= FieldByName('CU_RIAL').AsFloat * StrToIntDef(ArzPrice,0);
      Close;
    end;
  finally
    FQuery.Free;
  end;
end;

procedure TFrmECnt.PAfterScroll(DataSet: TDataSet);
begin
end;

procedure TFrmECnt.CNT_ARZ_PRICEValidate(Sender: TField);
begin
end;

procedure TFrmECnt.dbgrCntColExit(Sender: TObject);
begin
  if (FDM_Contract.qrEContractDet.FieldByName('CNT_ARZ_PRICE').AsString <> '') and
     (FDM_Contract.qrEContractDet.FieldByName('CNTPRICE').AsString = '') then
    FDM_Contract.qrEContractDet.FieldByName('CNTPRICE').AsFloat:= GetCus_Rial(CuCode,FDM_Contract.qrEContractDet.FieldByName('CNT_ARZ_PRICE').AsString) ;
end;

procedure TFrmECnt.ProfValidate(Sender: TField);
begin
  if Sender.AsString <> '' Then
   with FDM_Contract.qrETemp, SQL do
   begin
     Clear;
     Add('SELECT P.CUSTNO, P.PRJCODE    ');
     Add('  FROM PSSALES.PROFORMAT_T P, ');
     Add('       PSSALES.IDCUSTOMER_T C ');
     Add(' WHERE P.PRFNUM = :PRFNUM     ');
     ParamByName('PRFNUM').AsString:= Sender.AsString;
     SQL:= MbSqlConvert(SQL);
     Open;
     FDM_Contract.qrEContract.FieldByName('CUSTNO').AsString:= FieldByName('CUSTNO').AsString;
     FDM_Contract.qrEContract.FieldByName('PRJCODE').AsString:= FieldByName('PRJCODE').AsString;
   end;
end;

procedure TFrmECnt.dbgrValidityColEnter(Sender: TObject);
begin
  with FDM_Contract.qrEOffValidity do
  begin
    if (dbgrValidity.SelectedField = FieldByName('ADDDESC')) or
       (dbgrValidity.SelectedField = FieldByName('ADDTYPE')) then
      dbgrValidity.SelectedField:= FieldByName('ADVAL');

    if dbgrValidity.SelectedField = FieldByName('ADKIND') then
      dbgrValidity.SelectedField:= FieldByName('ADCODE');

    if dbgrValidity.SelectedField = FieldByName('ADVAL') then
      if (FieldByName('ADKIND').AsString = _stPercent) then
        dbgrValidity.SelectedIndex:= dbgrValidity.SelectedIndex - 1;
  end;
end;

procedure TFrmECnt.dbgrValidityEditButtonClick(Sender: TObject);
var
  Code: string;
begin
  if TQuery(dbgrValidity.DataSource.DataSet).CachedUpdates = False then
    Exit;

  if dbgrValidity.SelectedField.FieldName = 'ADCODE' then
  begin
    if HelpKasr(Code) then
    begin
      with FDM_Contract.qrEOffValidity do
      begin
        Edit;
        FieldByName('ADCODE').AsString:= Code;
      end;

      dbgrValidity.SelectedIndex:= 4;
      Exit;
    end;
  end;
end;

procedure TFrmECnt.dbgrValidityKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    dbgrValidityEditButtonClick(nil);
end;

procedure TFrmECnt.AddCodeValidate(Sender: TField);
var
  D: Double;
  Temp: string;
begin
  if not (Sender.AsString = '') then
  begin
    if not (ExistAddCode(Sender.AsString)) then
    begin
      MbError(InvalidAddSub);
      Abort;
    end;

    with FDM_Contract.qrEOffValidity do
    begin
      FieldByName('ADVAL').AsString:= '';
      Temp:= FindAddPrice(Sender.AsString, StrToFloatDef(StringReplace(edTotCost.Text, ',', '', [rfReplaceAll]), 0));
      if not IsCurrency then
      begin
        if not (Temp = '') then
        begin
          D:= StrToFloatDef(Temp , 0);
          FieldByName('ADVAL').AsFloat:= Round(D);
        end;
      end
      else
        FieldByName('ADVAL').AsString:= Temp;
    end;
  end;

end;

procedure TFrmECnt.AddValValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
  begin
    if (Sender.AsFloat > 9999999999999) or (Sender.AsFloat < 0) then
    begin
      MbError(RangeErr);
      Abort;
    end;
  end;
end;

procedure TFrmECnt.FAddOnStateChanged(Sender: TObject);
begin
  with FDM_Contract do
    G_StateChange(qrEOffValidity, qrEOffValidity, btnPost, btnDelete);
end;

function TFrmECnt.CalculateNetCost(const AKind: Integer): Double;
var
  BM: TBookMark;
  iAfterScroll,
  iBeforePost: TDataSetNotifyEvent;
  Temp, Debate, KasrVal: Double;
begin
  BM:= FDM_Contract.qrEOffValidity.GetBookMark;
  iAfterScroll:= FDM_Contract.qrEOffValidity.AfterScroll;
  iBeforePost:= FDM_Contract.qrEOffValidity.BeforePost;

  FDM_Contract.qrEOffValidity.AfterScroll:= nil;
  FDM_Contract.qrEOffValidity.BeforePost:= nil;
  FDM_Contract.qrEOffValidity.DisableControls;
  try
    with FDM_Contract.qrEOffValidity do
    begin
      if AKind = _OnSave then
      begin
        First;
        KasrVal:= 0;
        while not Eof do
        begin
          if FieldByName('ADDTYPE').AsString = _stSub then
            KasrVal:= KasrVal + FieldByName('ADVAL').AsFloat;

          Next;
        end;

        Debate:= SeqControlCnt.GetSum('TOTCOST') - KasrVal;

        First;
        while not Eof do
        begin
          Edit;

          FieldByName('ADNUM1').AsString:= FDM_Contract.qrEContract.FieldByName('CNTCODE').AsString;

          if FieldByName('ADKIND').AsString = _stPercent then
            FieldByName('ADVAL').AsFloat:= GetPercentPrice(FieldByName('ADCODE').AsString, SeqControlCnt.GetSum('TOTCOST'));

          Next;
        end;

        Result:= -1;
      end;

      if AKind = _OnOpen then
      begin
        Temp:= SeqControlCnt.GetSum('TOTCOST');
        First;
        while not Eof do
        begin
          if FieldByName('ADDTYPE').AsString = _stAdd then
            Temp:= Temp + FieldByName('ADVAL').AsFloat
          else
          if FieldByName('ADDTYPE').AsString = _stSub then
            Temp:= Temp - FieldByName('ADVAL').AsFloat;

          Next;
        end;

        Result:= Temp;
      end;
    end;
  finally
    if FDM_Contract.qrEOffValidity.State in dsEditModes then
      FDM_Contract.qrEOffValidity.Post;

    FDM_Contract.qrEOffValidity.GotoBookMark(BM);
    if not (BM = nil) then
      FDM_Contract.qrEOffValidity.FreeBookMark(BM);

    FDM_Contract.qrEOffValidity.AfterScroll:= iAfterScroll;
    FDM_Contract.qrEOffValidity.BeforePost:= iBeforePost;
    FDM_Contract.qrEOffValidity.EnableControls;
  end;

end;

procedure TFrmECnt.AddAfterOpen(DataSet: TDataSet);
begin
  edNetPrice.Text:= Format('%.n', [CalculateNetCost(_OnOpen)]);
end;

procedure TFrmECnt.AddAfterScroll(DataSet: TDataSet);
begin
  with DataSet do
  begin
    if dbgrValidity.SelectedField = FieldByName('ADVAL') then
      if (FieldByName('ADKIND').AsString = _stPercent) then
        dbgrValidity.SelectedIndex:= dbgrValidity.SelectedIndex - 1;
  end;
end;

procedure TFrmECnt.AddBeforePost(DataSet: TDataSet);
begin
  with DataSet do
  begin
    if FieldByName('ADCODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrValidity.SetFocus;
      dbgrValidity.SelectedIndex:= 0;
      Abort;
    end;

    if (FieldByName('ADVAL').AsString = '') then
    begin
      MbError(NotDataComplete);
      dbgrValidity.SetFocus;
      dbgrValidity.SelectedIndex:= 4;
      Abort;
    end;
  end;
end;

procedure TFrmECnt.AddOnNewRecord(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByName('ADNUM1').AsString:= FDM_Contract.qrEContract.FieldByName('CNTCODE').AsString;
    FieldByName('ADNUM2').AsString:= '0';
    FieldByName('ADNUM3').AsString:= '0';
    FieldByName('ADNUM4').AsString:= '0';
    FieldByName('ADNUM5').AsString:= '0';
  end;
end;

procedure TFrmECnt.ADKindChange(Sender: TField);
begin
end;

procedure TFrmECnt.CF_Validity(DataSet: TDataSet);
begin
  with DataSet do
  begin
    if FAddGrid.CanCalculate then
    begin
      FieldByName('ADDDESC').AsString:= FindAddFName(FieldByName('ADCODE').AsString);
      FieldByName('ADDTYPE').AsString:= FindAddType(FieldByName('ADCODE').AsString);

      if CanCalc then
        FieldByName('ADKIND').AsString:= FindAddKind(FieldByName('ADCODE').AsString);
    end;
  end;
end;

function TFrmECnt.EzafehQuery: Double;
begin
  with FDM_Contract.qrETemp , SQL do
  begin
    Close;
    Clear;
    Add('SELECT SUM(ADVAL) EZAFEHVAL               ');
    Add('FROM   VALIDITY_T ,ADDSUB_T               ');
    Add('WHERE  ADTYPE  = 1                        ');
    Add('AND    ADNUM1  =:ADNUM1                   ');
    Add('AND    VALIDITY_T.ADCODE = ADDSUB_T.ADCODE');
    ParamByName('ADNUM1').AsString := dbedCntCode.Text;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result := FieldByName('EZAFEHVAL').AsFloat;
  end;
end;

function TFrmECnt.KasrQuery: Double;
begin
  with FDM_Contract.qrETemp , SQL do
  begin
    Close;
    Clear;
    Add('SELECT SUM(ADVAL) KASRVAL                 ');
    Add('FROM   VALIDITY_T ,ADDSUB_T               ');
    Add('WHERE  ADTYPE  = 2                        ');
    Add('AND    ADNUM1  =:ADNUM1                   ');
    Add('AND    VALIDITY_T.ADCODE = ADDSUB_T.ADCODE');
    ParamByName('ADNUM1').AsString := dbedCntCode.Text;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result := FieldByName('KASRVAL').AsFloat;
  end;
end;

function TFrmECnt.GetPercentPrice(AdCode: string; APrice: Double): Double;
begin
  with FDM_Contract.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT VALDEF          ');
    Add('  FROM PSSALES.ADDSUB_T');
    Add(' WHERE ADCODE = :ADCODE');
    ParamByName('ADCODE').AsString:= AdCode;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result:= (FieldByName('VALDEF').AsFloat / 100) * APrice;
    Close;
  end;
end;

procedure TFrmECnt.AddAfterDelete(DataSet: TDataSet);
begin
  btnPost.Enabled:= True and MabnaInfo.HasAccess(btnPost.Tag);
end;

procedure TFrmECnt.InitAddSubGrid;
begin
  FAddGrid:= TCuDBGrid.Create(Self, dbgrValidity, '', True, True, False);
  FAddGrid.SetRowDuplicate(['ADCODE']);
end;

function TFrmECnt.GetSeqVal: integer;
begin
  with FDM_Contract.qrETemp, SQL do
  begin
    Close;
    Clear;
    Add('SELECT Max(Nvl(ORD_CODE,0)) VAL');
    Add('  FROM ORD_M_T                       ');
    Add(' WHERE ORD_YEAR = :ORD_YEAR');
    ParamByName('ORD_YEAR').AsInteger     := System_YY;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result := (FieldByName('VAL').AsInteger+1) ;
    Close;
  end;
(*
  with FDM_Contract.qrETemp, SQL do
  begin
    Close;
    Clear;
    Add('SELECT INVENTORY.SERNOF.NEXTVAL VAL');
    Add('  FROM DUAL                       ');
    SQL:= MbSqlConvert(SQL);
    Open;
    Result := (FieldByName('VAL').AsInteger) ;
    Close;
  end;
*)
end;

procedure TFrmECnt.CreateOrdDelv(FSerial : integer);
begin
  with FDM_Contract.qrETemp, SQL do
  begin
    Clear;
    Add('INSERT INTO ORD_M_T (     ');
    Add('  ORD_CODE, ORD_YEAR, ORD_DATE, ORDOF_NUM, ORDCNT_CODE, ORD_PLACE,  ');
    Add('  ORD_CNTDATE, ORDCUST_CODE, ORD_VALUE, ORD_TYPE, ORD_DESC)         ');
    Add('VALUES (:ORD_CODE, :ORD_YEAR, :ORD_DATE, Null, :ORDCNT_CODE,  ');
    Add('  :ORD_PLACE, Null, :ORDCUST_CODE, :ORD_VALUE, :ORD_TYPE,   ');
    Add('  :ORD_DESC)                                                        ');
    ParamByName('ORD_CODE').AsInteger     := FSerial;
    ParamByName('ORD_YEAR').AsInteger     := System_YY;
    ParamByName('ORD_DATE').AsString      := FDM_Contract.qrEContract.FieldByName('CNTDTE').AsString;
    ParamByName('ORDCNT_CODE').AsString   := FDM_Contract.qrEContract.FieldByName('CNTCODE').AsString;
    ParamByName('ORD_PLACE').AsString     := FDM_Contract.qrEContract.FieldByName('CUSTADR').AsString;
    ParamByName('ORDCUST_CODE').AsString  := FDM_Contract.qrEContract.FieldByName('CUSTNO').AsString;
    ParamByName('ORD_VALUE').AsFloat      := StrToFloat(StringReplace(edTotCost.Text, ',' , '' ,[rfReplaceAll]));
    ParamByName('ORD_TYPE').AsInteger     := _intOrdType1;
    ParamByName('ORD_DESC').AsString      := '”›«—‘  ÕÊÌ· „—»Êÿ »Â ﬁ—«—œ«œ ‘„«—Â'+' '+FDM_Contract.qrEContract.FieldByName('CNTCODE').AsString;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;


    Clear;
    Add('INSERT INTO ORD_D_T (');
    Add('   ORD_CODE, ORD_YEAR, ORD_SEQ, GDS_CODE, PACK_TYPE, ORD_QTY, PACK_QTY,ORD_FINALQTY,GDS_INFO)');
    Add('  (SELECT  :ORD_CODE, :ORD_YEAR,CNTROW,GDS_CODE, PACK_TYPE, CNTQTY ,CNTQTY,CNT_FINALQTY,GDS_INFO');
    Add('     FROM  IDCONTACR_T                           ');
    Add('     WHERE CNTCODE = :CNTCODE)                              ');
    ParamByName('ORD_CODE').AsInteger  := FSerial;
    ParamByName('ORD_YEAR').AsInteger  := System_YY;
//    ParamByName('PACK_TYPE').AsInteger := _intPackType1;
    ParamByName('CNTCODE').AsString      := FDM_Contract.qrEContract.FieldByName('CNTCODE').AsString;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;
  end;

(*
  with FDM_Contract.qrETemp, SQL do
  begin
    Clear;
    Add('INSERT INTO  INVENTORY.DOC_M(DOC_M_SERIAL, STK_CODE, FRM_CODE,       ');
    Add('                               DOC_M_SALEORNO,DOC_M_YEAR,DOC_M_STKSER, ');
    Add('                               DOC_M_CODE, DOC_M_DATE, DOC_M_STAT,     ');
    Add('                               ACT_CODE, CUT_CODE)                     ');
    Add('  VALUES (:DOC_M_SERIAL, :STK_CODE, :FRM_CODE, :DOC_M_SALEORNO,        ');
    Add('          :DOC_M_YEAR, :DOC_M_STKSER, :DOC_M_CODE, :DOC_M_DATE,        ');
    Add('          :DOC_M_STAT, :ACT_CODE, :CUT_CODE)                           ');
    ParamByName('DOC_M_SERIAL').AsInteger := FSerial;
    ParamByName('STK_CODE').AsInteger     := FetchGdsType(FDM_Contract.qrEContractDet.FieldByName('GDS_CODE').AsString);
    ParamByName('FRM_CODE').AsInteger     := _OrdDelFormcode;
    ParamByName('DOC_M_SALEORNO').AsString:= FDM_Contract.qrEContract.FieldByName('CNTCODE').AsString;
    ParamByName('DOC_M_YEAR').AsInteger   := System_YY;
    ParamByName('DOC_M_STKSER').AsInteger := _OrdDelStkSerCode;
    ParamByName('DOC_M_CODE').AsString    := FDM_Contract.qrEContract.FieldByName('ORD_DELV_NO').AsString;
    ParamByName('DOC_M_DATE').AsString    := MbUserDate;
    ParamByName('DOC_M_STAT').AsInteger   := _OrdDelPost;
    ParamByName('ACT_CODE').AsInteger     := _OrdDelActCode;
    ParamByName('CUT_CODE').AsString      := FDM_Contract.qrEContract.FieldByName('CUSTNO').AsString;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;

    Clear;
    Add('UPDATE  INVENTORY.DOC_M           ');
    Add('  SET   DOC_M_STAT = :DOC_M_STAT    ');
    Add('  WHERE DOC_M_SERIAL = :DOC_M_SERIAL');
    ParamByName('DOC_M_SERIAL').AsInteger := FSerial;
    ParamByName('DOC_M_STAT').AsInteger   := _OrdDelOK;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;

    Clear;
    Add('UPDATE  INVENTORY.DOC_M           ');
    Add('  SET   DOC_M_STAT = :DOC_M_STAT    ');
    Add('  WHERE DOC_M_SERIAL = :DOC_M_SERIAL');
    ParamByName('DOC_M_SERIAL').AsInteger := FSerial;
    ParamByName('DOC_M_STAT').AsInteger   := _OrdDelConfirm;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;

    Clear;
    Add('INSERT INTO  INVENTORY.DOC_D(DOC_M_SERIAL, GDS_CODE,  ');
    Add('                               DOC_M_YEAR, DOC_D_REQQTY)');
    Add('  (SELECT  :DOC_M_SERIAL, GDS_CODE, :DOC_M_YEAR, CNTQTY ');
    Add('     FROM  PSSALES.IDCONTACR_T                          ');
    Add('     WHERE CNTCODE = :CNTCODE)                          ');
    ParamByName('DOC_M_SERIAL').AsInteger:= FSerial;
    ParamByName('DOC_M_YEAR').AsInteger  := System_YY;
    ParamByName('CNTCODE').AsString      := FDM_Contract.qrEContract.FieldByName('CNTCODE').AsString;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;
  end;
*)  
end;

procedure TFrmECnt.DistroyOrdDelv;
begin
  with FDM_Contract.qrETemp, SQL do
  begin
    Clear;
    Add('DELETE  ORD_D_T                                        ');
    Add(' WHERE ORD_CODE  = (SELECT ORD_CODE                    ');
    Add('                      FROM ORD_M_T                     ');
    Add('                     WHERE ORDCNT_CODE = :ORDCNT_CODE  ');
    Add('                       AND ORD_YEAR    = :ORD_YEAR)    ');
    Add('   AND ORD_YEAR   = :ORD_YEAR   ');
    ParamByName('ORDCNT_CODE').AsInteger     := FDM_Contract.qrEContract.FieldByName('ORD_DELV_NO').AsInteger;
    ParamByName('ORD_YEAR').AsInteger   := System_YY;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;

    Clear;
    Add('DELETE  ORD_M_T            ');
    Add(' WHERE ORDCNT_CODE     = :ORDCNT_CODE     ');
    Add('   AND ORD_YEAR   = :ORD_YEAR   ');
    ParamByName('ORDCNT_CODE').AsInteger     := FDM_Contract.qrEContract.FieldByName('ORD_DELV_NO').AsInteger;
    ParamByName('ORD_YEAR').AsInteger   := System_YY;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;
  end;
(*
  with FDM_Contract.qrETemp, SQL do
  begin
    Clear;
    Add('UPDATE  INVENTORY.DOC_M           ');
    Add('  SET   DOC_M_STAT = :DOC_M_STAT    ');
    Add('  WHERE FRM_CODE     = :FRM_CODE    ');
    Add('    AND DOC_M_YEAR   = :DOC_M_YEAR  ');
    Add('    AND DOC_M_STKSER = :DOC_M_STKSER');
    Add('    AND DOC_M_CODE   = :DOC_M_CODE  ');
    ParamByName('DOC_M_STAT').AsInteger  := _OrdDelOK;
    ParamByName('FRM_CODE').AsInteger    := _OrdDelFormcode;
    ParamByName('DOC_M_YEAR').AsInteger  := System_YY;
    ParamByName('DOC_M_STKSER').AsInteger:= _OrdDelStkSerCode;
    ParamByName('DOC_M_CODE').AsInteger  := FDM_Contract.qrEContract.FieldByName('ORD_DELV_NO').AsInteger;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;

    Clear;
    Add('UPDATE  INVENTORY.DOC_M           ');
    Add('  SET   DOC_M_STAT = :DOC_M_STAT    ');
    Add('  WHERE FRM_CODE     = :FRM_CODE    ');
    Add('    AND DOC_M_YEAR   = :DOC_M_YEAR  ');
    Add('    AND DOC_M_STKSER = :DOC_M_STKSER');
    Add('    AND DOC_M_CODE   = :DOC_M_CODE  ');
    ParamByName('DOC_M_STAT').AsInteger  := _OrdDelPost;
    ParamByName('FRM_CODE').AsInteger    := _OrdDelFormcode;
    ParamByName('DOC_M_YEAR').AsInteger  := System_YY;
    ParamByName('DOC_M_STKSER').AsInteger:= _OrdDelStkSerCode;
    ParamByName('DOC_M_CODE').AsInteger  := FDM_Contract.qrEContract.FieldByName('ORD_DELV_NO').AsInteger;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;

    Clear;
    Add('DELETE  INVENTORY.DOC_D                                   ');
    Add('  WHERE DOC_M_SERIAL  = (SELECT DOC_M_SERIAL                ');
    Add('                          FROM INVENTORY.DOC_M            ');
    Add('                         WHERE FRM_CODE     = :FRM_CODE     ');
    Add('                           AND DOC_M_YEAR   = :DOC_M_YEAR   ');
    Add('                           AND DOC_M_STKSER = :DOC_M_STKSER ');
    Add('                           AND DOC_M_CODE   = :DOC_M_CODE)  ');
    ParamByName('FRM_CODE').AsInteger     := _OrdDelFormcode;
    ParamByName('DOC_M_YEAR').AsInteger   := System_YY;
    ParamByName('DOC_M_STKSER').AsInteger := _OrdDelStkSerCode;
    ParamByName('DOC_M_CODE').AsInteger   := FDM_Contract.qrEContract.FieldByName('ORD_DELV_NO').AsInteger;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;

    Clear;
    Add('DELETE  INVENTORY.DOC_M            ');
    Add('  WHERE FRM_CODE     = :FRM_CODE     ');
    Add('    AND DOC_M_YEAR   = :DOC_M_YEAR   ');
    Add('    AND DOC_M_STKSER = :DOC_M_STKSER ');
    Add('    AND DOC_M_CODE   = :DOC_M_CODE   ');
    ParamByName('FRM_CODE').AsInteger     := _OrdDelFormcode;
    ParamByName('DOC_M_YEAR').AsInteger   := System_YY;
    ParamByName('DOC_M_STKSER').AsInteger := _OrdDelStkSerCode;
    ParamByName('DOC_M_CODE').AsInteger   := FDM_Contract.qrEContract.FieldByName('ORD_DELV_NO').AsInteger;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;
  end;
*)  
end;

function TFrmECnt.SelectOrd_Delv_No: integer;
begin
(*
  with FDM_Contract.qrETemp, SQL do
  begin
    Sql.Clear;
    Sql.Add('SELECT  MAX(DOC_M_CODE) MAXCODE');
    Sql.Add('  FROM  INVENTORY.DOC_M      ');
    Sql.Add('  WHERE FRM_CODE = :FRMCODE    ');
    Sql.Add('  AND   DOC_M_YEAR = :SYEAR    ');
    Sql.Add('  AND   DOC_M_STKSER = :STKSER ');
    ParamByName('STKSER').AsInteger  := _OrdDelStkSerCode;
    ParamByName('SYEAR').AsInteger   := System_YY;
    ParamByName('FRMCODE').AsInteger := _OrdDelFormcode;
    SqL:= MbSqlConvert(SqL);
    Open;
    Result := FieldByName('MAXCODE').AsInteger + 1;
  end;
*)  
end;

function TFrmECnt.DoesHavaleHas: boolean;
begin

  with FDM_Contract.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT  COUNT(*) CNT                                          ');
    Add('  FROM  DOC_M                                                 ');
    Add('  WHERE DOC_M_LNSERIAL = (SELECT DOC_M_SERIAL                 ');
    Add('                            FROM INVENTORY.DOC_M            ');
    Add('                           WHERE FRM_CODE     = :FRM_CODE     ');
    Add('                             AND DOC_M_YEAR   = :DOC_M_YEAR   ');
    Add('                             AND DOC_M_STKSER = :DOC_M_STKSER ');
    Add('                             AND DOC_M_CODE   = :DOC_M_CODE)  ');
    ParamByName('FRM_CODE').AsInteger    := _OrdDelFormcode;
    ParamByName('DOC_M_YEAR').AsInteger  := System_YY;
    ParamByName('DOC_M_STKSER').AsInteger:= _OrdDelStkSerCode;
    ParamByName('DOC_M_CODE').AsInteger  := FDM_Contract.qrEContract.FieldByName('ORD_DELV_NO').AsInteger;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result:= (FieldByName('CNT').AsInteger = 0);
    Close;
  end;
end;

procedure TFrmECnt.UpdateOrd_Delv_No;
begin
  with FDM_Contract.qrETemp, SQL do
  begin
    Clear;
    Add('UPDATE  PSSALES.IDCONTACT_T        ');
    Add('  SET   ORD_DELV_NO = :ORD_DELV_NO ');
    Add('  WHERE CNTCODE = :CNTCODE         ');
    ParamByName('ORD_DELV_NO').AsInteger:= FDM_Contract.qrEContract.FieldByName('ORD_DELV_NO').AsInteger;
    ParamByName('CNTCODE').AsString     := FDM_Contract.qrEContract.FieldByName('CNTCODE').AsString;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;
  end;
end;

procedure TFrmECnt.EmptyOrd_delv_No;
begin
  with FDM_Contract.qrETemp, SQL do
  begin
    Clear;
    Add('UPDATE  PSSALES.IDCONTACT_T ');
    Add('  SET   ORD_DELV_NO = NULL  ');
    Add('  WHERE CNTCODE = :CNTCODE  ');
    ParamByName('CNTCODE').AsString  := FDM_Contract.qrEContract.FieldByName('CNTCODE').AsString;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;
  end;
end;

procedure TFrmECnt.MasterOnNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('CNTTYP').AsInteger:= 1;
end;

procedure TFrmECnt.PACK_TYPEOnGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intPackType1 : Text:= _stPackType1;
    _intPackType2 : Text:= _stPackType2;
    _intPackType3 : Text:= _stPackType3;
    _intPackType4 : Text:= _stPackType4;
    _intPackType5 : Text:= _stPackType5;
  end;
end;

procedure TFrmECnt.PACK_TYPEOnSetText(Sender: TField; const Text: String);
begin
  if Text = _stPackType1 then
    Sender.AsInteger:= _intPackType1;
  if Text = _stPackType2 then
    Sender.AsInteger:= _intPackType2;
  if Text = _stPackType3 then
    Sender.AsInteger:= _intPackType3;
  if Text = _stPackType4 then
    Sender.AsInteger:= _intPackType4;
  if Text = _stPackType5 then
    Sender.AsInteger:= _intPackType5;
end;

procedure TFrmECnt.DelValidity;
begin
  with FDM_contract.qrETemp, SQL do
  begin
    Clear;
    Add('DELETE  FROM VALIDITY_T');
    Add('  WHERE ADNUM1 = :ADNUM1      ');
    ParamByName('ADNUM1').AsString:= FDM_contract.qrEContract.FieldByName('CNTCODE').AsString;
    SQL := MbSqlConvert(SQL);
    ExecSql;
  end;
end;

procedure TFrmECnt.InsValidity;
begin
  FDM_Contract.qrEOffValidity.DisableControls;
  try
    FDM_Contract.qrEOffValidity.First;

    while not FDM_Contract.qrEOffValidity.Eof do
    begin
      with FDM_Contract.qrETemp, SQL do
      begin
        DataBaseName:= MbDB.DataBaseName[FDB];
        Clear;

        Add('INSERT INTO VALIDITY_T (                                              ');
        Add('  ADCODE, ADNUM1, ADNUM2, ADNUM3, ADNUM4, ADNUM5, ADVAL, ADARZVAL,    ');
        Add('  PART)                                                               ');
        Add('VALUES (:ADCODE, :ADNUM1, :ADNUM2, :ADNUM3, :ADNUM4, :ADNUM5, :ADVAL, ');
        Add('  :ADARZVAL, :PART)                                                   ');
        ParamByName('ADCODE').AsString   := FDM_Contract.qrEOffValidity.FieldByName('ADCODE').AsString;
        ParamByName('ADNUM1').AsString   := FDM_Contract.qrEOffValidity.FieldByName('ADNUM1').AsString;
        ParamByName('ADNUM2').AsInteger  := 0;
        ParamByName('ADNUM3').AsInteger  := 0;
        ParamByName('ADNUM4').AsInteger  := 0;
        ParamByName('ADNUM5').AsInteger  := 0;
        ParamByName('ADVAL').AsFloat     := FDM_Contract.qrEOffValidity.FieldByName('ADVAL').AsFloat;
        ParamByName('ADARZVAL').AsString := '';
        ParamByName('PART').AsString     := '';
        SQL := MbSqlConvert(SQL);
        ExecSql;
      end;

      FDM_Contract.qrEOffValidity.Next;
    end;
  finally
    FDM_Contract.qrEOffValidity.EnableControls;
  end;
end;

procedure TFrmECnt.BitBtn2Click(Sender: TObject);
begin
  FCntCode:= FDM_Contract.qrEContract.FieldByName('CNTCODE').AsString;
  FGdsCode:= FDM_Contract.qrEContractDet.FieldByName('GDS_CODE').AsString;

  MainForm.acDOrderList.Execute;
end;

end.
