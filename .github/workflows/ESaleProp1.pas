{$I Direct.Inc}
unit ESaleProp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus,DbTables, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppDB,
  ppDBPipe, ppDBBDE, ppComm, ppRelatv, ppProd, ppReport , DMUIntSales,
  myChkBox, ppStrtch, ppMemo, ppRichTx, ppEndUsr, ppVar, {$I MbUses.Inc};

const
  _OnSave = 1;
  _OnOpen = 2;

type
  TFrmESaleProp = class(TMbForm)
    panButton: TPanel;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    stbMain: TStatusBar;
    Panel1: TPanel;
    btnPost: TBitBtn;
    btnDelete: TBitBtn;
    sbExit: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbedOFNum: TDBEdit;
    sbList: TSpeedButton;
    dbedReqID: TDBEdit;
    Panel2: TPanel;
    Label11: TLabel;
    btnNoControl: TBitBtn;
    btnControl: TBitBtn;
    dbgrValidity: TDBGrid;
    Label10: TLabel;
    dbedBIDate: TDBEdit;
    dbedOFDte: TDBEdit;
    dbedOFDlvDte: TDBEdit;
    dbedReqDte: TDBEdit;
    Label16: TLabel;
    dbedStat: TDBEdit;
    Panel4: TPanel;
    dbgrOffer: TDBGrid;
    Panel5: TPanel;
    Label7: TLabel;
    edGrossPrice: TEdit;
    Label5: TLabel;
    Panel6: TPanel;
    Label17: TLabel;
    edNetPrice: TEdit;
    bbPreview: TBitBtn;
    bbPrint: TBitBtn;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText13: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppPageStyle1: TppPageStyle;
    ppShape1: TppShape;
    ppLine2: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppShape6: TppShape;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel24: TppLabel;
    ppLine21: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLabel25: TppLabel;
    lbl1: TppLabel;
    lblNo1: TppLabel;
    lblDsc1: TppLabel;
    lblVal1: TppLabel;
    lbl2: TppLabel;
    lblNo2: TppLabel;
    lblDsc2: TppLabel;
    lblVal2: TppLabel;
    lblVal3: TppLabel;
    lblDsc3: TppLabel;
    lblNo3: TppLabel;
    lbl3: TppLabel;
    lbl4: TppLabel;
    lbl5: TppLabel;
    lblNo4: TppLabel;
    lblDsc4: TppLabel;
    lblVal4: TppLabel;
    lblVal5: TppLabel;
    lblDsc5: TppLabel;
    lblNo5: TppLabel;
    ppLabel100: TppLabel;
    ppLabel98: TppLabel;
    pplbdbcalc1: TppLabel;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine8: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    myDBCheckBox2: TmyDBCheckBox;
    myDBCheckBox3: TmyDBCheckBox;
    ppLabel21: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppDBText18: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel29: TppLabel;
    ppDBText3: TppDBText;
    ppLine10: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppLabel28: TppLabel;
    myDBCheckBox4: TmyDBCheckBox;
    ppLabel30: TppLabel;
    myDBCheckBox5: TmyDBCheckBox;
    ppLabel32: TppLabel;
    myDBCheckBox6: TmyDBCheckBox;
    ppLabel33: TppLabel;
    ppLabel73: TppLabel;
    ppLabel76: TppLabel;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel20: TppLabel;
    ppLabel31: TppLabel;
    ppLabel27: TppLabel;
    ppLabel26: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel81: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLabel12: TppLabel;
    ppDBText5: TppDBText;
    ppLabel16: TppLabel;
    Splitter1: TSplitter;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    spDesign: TSpeedButton;
    ppDesigner: TppDesigner;
    Panel3: TPanel;
    Label6: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label8: TLabel;
    Label18: TLabel;
    sbCurr: TSpeedButton;
    sbCustNo: TSpeedButton;
    sbPrjCode: TSpeedButton;
    dbedEcCode: TDBEdit;
    dbedPrjName: TDBEdit;
    dbedCustName: TDBEdit;
    dbedOFComm: TDBEdit;
    dbedCuCode: TDBEdit;
    dbedCuName: TDBEdit;
    dbmOFDesc: TDBMemo;
    dbedPrjCode: TDBEdit;
    dbedCustNO: TDBEdit;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    Label9: TLabel;
    dbedCustAdr: TDBEdit;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppDBText14: TppDBText;
    ppLine11: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppShape2: TppShape;
    ppBDEPipeline1: TppBDEPipeline;
    Label12: TLabel;
    dbedORD_DELV_NO: TDBEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure sbExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbedOFNumExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbedOFDteExit(Sender: TObject);
    procedure dbedBIDateExit(Sender: TObject);
    procedure dbgrOfferEnter(Sender: TObject);
    procedure dbgrOfferEditButtonClick(Sender: TObject);
    procedure dbgrOfferColEnter(Sender: TObject);
    procedure dbgrOfferKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgrValidityEditButtonClick(Sender: TObject);
    procedure dbgrValidityColEnter(Sender: TObject);
    procedure dbgrValidityKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPostClick(Sender: TObject);
    procedure btnControlClick(Sender: TObject);
    procedure btnNoControlClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sbListClick(Sender: TObject);
    procedure dbedOFNumKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbPreviewClick(Sender: TObject);
    procedure ppDBText3GetText(Sender: TObject; var Text: String);
    procedure ppFooterBand1BeforePrint(Sender: TObject);
    procedure ppDBCalc2Calc(Sender: TObject);
    procedure ppDBText17GetText(Sender: TObject; var Text: String);
    procedure ppDBCalc2GetText(Sender: TObject; var Text: String);
    procedure ppDBText10GetText(Sender: TObject; var Text: String);
    procedure spDesignClick(Sender: TObject);
    procedure sbCustNoClick(Sender: TObject);
    procedure sbPrjCodeClick(Sender: TObject);
    procedure sbCurrClick(Sender: TObject);
    procedure dbedCustNOExit(Sender: TObject);
    procedure dbedPrjCodeExit(Sender: TObject);
  private
    qrTmp: TQuery;
    CuCode: string;
    FOfNum: string;
    MyTemp: string;
    FDM_IntSales: TDM_IntSales;
    SeqControlOff: TCuDBGrid;
    FAddGrid: TCuDBGrid;
    AddDelFlag,
    CanInsert, CanCalc, IsLock: Boolean;
    GdsFlag: Boolean;
    procedure FOnStateChanged(Sender: TObject);
    procedure FAddOnStateChanged(Sender: TObject);
    procedure InitSeqCtrl;
    procedure InitAddSubGrid;
    procedure CheckButton;
    procedure DisableIntControls;
    procedure EnableIntControls;
    procedure FUpdateError(DataSet: TDataSet; E: EDatabaseError; UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure PostRecord(var ATemp: string);
    Function  PrintQuery : Boolean;
    procedure AddQuery;
    function CanModify: Boolean;
    function OffCheckBeforeSave: Boolean;
    function GetPercentPrice(AdCode: string; APrice: Double): Double;
    function IsCurrency: Boolean;

    //Master
    procedure CF_MstOffer(DataSet: TDataSet);
    procedure StatGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure OFDLVDTEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure OFDLVDTESetText(Sender: TField; const Text: String);

    //Detail
    procedure ShowOffDetail;
    procedure CF_DetOffer(DataSet: TDataSet);
    procedure DetBeforePost(DataSet: TDataSet);
    procedure DetOnNewRecord(DataSet: TDataSet);
    procedure GdsCodeValidate(Sender: TField);
    procedure GdsCodeChange(Sender: TField);
    procedure DetAfterOpen(DataSet: TDataSet);
    procedure PriceValidate(Sender: TField);
    procedure QtyValidate(Sender: TField);
    procedure DelOffDet;
    procedure InsOffDet;

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
    function  GetSeqVal: integer;
    procedure CreateOrdDelv(FSerial : integer);
    procedure DistroyOrdDelv;
    function  DoesHavaleHas: boolean;
    function  SelectOrd_Delv_No: integer ;
    procedure UpdateOrd_Delv_No;
    procedure EmptyOrd_delv_No;
  public
    DbHandle: TMbHandle;
  published
    property FDM;
  end;

var
  FrmESaleProp: TFrmESaleProp;
  FPageCount :Integer;
implementation

uses MainUnit, HCustom, HBidVch, HSalesProp, Utility, UMessage,
  Vars, Help, Functions, DMUDataBase;

{$R *.DFM}

procedure TFrmESaleProp.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) And (ActiveControl <> dbgrOffer) then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmESaleProp.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmESaleProp.FormCreate(Sender: TObject);
begin
  FDM_IntSales:= TDM_IntSales(MbDM.GetDM(FDM));
  SetStatusBar(stbMain);
  qrTmp:= TQuery.Create(Self);
  qrTmp.DataBaseName:= MbDB.DataBaseName[FDB];

//- Master ----------------------------------------
  with FDM_IntSales.qrEIntOffer do
  begin
    OnCalcFields:= CF_MstOffer;
    OnUpdateError:= FUpdateError;
    FieldByName('OFSTAT').OnGetText   := StatGetText;
    FieldByName('OFDLVDTE').OnGetText := OFDLVDTEGetText;
    FieldByName('OFDLVDTE').OnSetText := OFDLVDTESetText;
  end;

  with FDM_IntSales.dsEIntOffer do
  begin
    OnStateChange:= nil;
    OnStateChange:= FOnStateChanged;
  end;

//- Detail ----------------------------------------
  with FDM_IntSales.qrEIntOfferDet do
  begin
    OnCalcFields  := nil;
    OnCalcFields  := CF_DetOffer;
    BeforePost    := DetBeforePost;
    AfterOpen     := DetAfterOpen;
    OnNewRecord   := DetOnNewRecord;
    OnUpdateError := FUpdateError;
    FieldByName('GDS_CODE').OnValidate := GdsCodeValidate;
    FieldByName('GDS_CODE').OnChange := GdsCodeChange;
    FieldByName('OFPRICE').OnValidate  := PriceValidate;
    FieldByName('OFQTY').OnValidate    := QtyValidate;
  end;

  with FDM_IntSales.dsEIntOfferDet do
  begin
    OnStateChange:= nil;
    OnStateChange:= FOnStateChanged;
  end;

//- AddSub ----------------------------------------
  with FDM_IntSales.qrEOffValidity do
  begin
    OnCalcFields  := CF_Validity;
    OnNewRecord   := AddOnNewRecord;
    AfterOpen     := AddAfterOpen;
    BeforePost    := AddBeforePost;
    AfterScroll   := AddAfterScroll;
    OnUpdateError := FUpdateError;

    FieldByName('ADCODE').OnValidate := AddCodeValidate;
    FieldByName('ADVAL').OnValidate  := AddValValidate;
//    FieldByName('ADKIND').OnChange   := ADKindChange;
  end;

  with FDM_IntSales.dsEOffValidity do
  begin
    OnStateChange:= nil;
    OnStateChange:= FAddOnStateChanged;
  end;

  InitSeqCtrl;
  InitAddSubGrid;
end;

procedure TFrmESaleProp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TFrmESaleProp.InitSeqCtrl;
begin
  SeqControlOff:= TCuDBGrid.Create(Self, dbgrOffer, 'OFSEQ', True, True, False);
  SeqControlOff.AddSum(['TOTCOST']);
  SeqControlOff.SetSumControl['TOTCOST']:= edGrossPrice;
  SeqControlOff.SetRowDuplicate(['GDS_CODE']);
end;

procedure TFrmESaleProp.dbedOFNumExit(Sender: TObject);
var
  OFState: Integer;
begin
  edGrossPrice.Text:= '';
  edNetPrice.Text:= '';
//Comment By Niaz Karbasi On 85-03-17
{
  if not (FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString = '') then
  begin
    if not ExistOffID(FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString, OfState) then
    begin
      MbError(EmptyFormID);
      dbedOFNum.SetFocus;
      Exit;
    end
    else
    begin
      if not MbDB.InTransaction[FDB] then
        MbDB.RollBack(FDB);
      MbDB.StartTransaction(FDB);

      IsLock:= False;
      AutoSelect(FDB, FDM_IntSales.qrEIntOffer, 'OFFERTIT_T', 1, IsLock);

      ShowOffDetail;

      if not CanModify then
        DisableIntControls
      else
        EnableIntControls;
    end;
  end
  else
  begin
    EnableIntControls;

    IsLock:= False;
    SelectEmpty(FDM_IntSales.qrEIntOffer, 'OFFERTIT_T');
    SelectEmpty(FDM_IntSales.qrEIntOfferDet, 'OFFERDTL_T');
    SelectEmpty(FDM_IntSales.qrEOffValidity, 'VALIDITY_T');
    edGrossPrice.Text:= '';
//    dbedReqId.SetFocus;
  end;
}

//Added By Niaz Karbasi On 85-03-17
  if dbedOFNum.Text = '' then
  begin
    MbError(OfNumIsEmpty);
    dbedOFNum.SetFocus;
    Exit;
  end;

  EnableIntControls;
  IsLock:= False;
  AutoSelect(FDB, FDM_IntSales.qrEIntOffer, 'OFFERTIT_T', 1, IsLock);

  ShowOffDetail;
  if ExistOffID(FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString, OfState) then
  begin
    if not CanModify then
      DisableIntControls
    else
      EnableIntControls;
  end;

  CheckButton;
end;

procedure TFrmESaleProp.ShowOffDetail;
begin
  with FDM_IntSales.qrEIntOfferDet, SQL do
  begin
    Clear;
    Add('SELECT   *                 ');
    Add('  FROM   PSSALES.OFFERDTL_T');
    Add(' WHERE   OFNUM = :OFNUM    ');
    Add('ORDER BY OFSEQ             ');
    ParamByName('OFNUM').AsString:= FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;
    CuCode:= FieldByName('CU_CODE').AsString;
  end;

  with FDM_IntSales.qrEOffValidity, SQL do
  begin
    Clear;
    Add('SELECT   *                 ');
    Add('  FROM   PSSALES.VALIDITY_T');
    Add(' WHERE   ADNUM2 = :ADNUM2  ');
    Add('ORDER BY ADCODE            ');
    ParamByName('ADNUM2').AsString:= FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;
  end;

{  if not IsCurrency then
    edGrossPrice.Text:= Trim(Format('%.0n', [SeqControlOff.Sum['TOTCOST'] * 1.0]))
  else
    edGrossPrice.Text:= Trim(Format('%20.2n', [SeqControlOff.Sum['TOTCOST'] * 1.0]));
 }
end;

procedure TFrmESaleProp.FormShow(Sender: TObject);
begin
  IsLock:= False;
  CanCalc:= True;
  CanInsert:= True;
  AddDelFlag:= True;
  SelectEmpty(FDM_IntSales.qrEIntOffer, 'OFFERTIT_T');
  SelectEmpty(FDM_IntSales.qrEIntOfferDet, 'OFFERDTL_T');
  SelectEmpty(FDM_IntSales.qrEOffValidity, 'VALIDITY_T');
  dbedOFNum.SetFocus;
end;

procedure TFrmESaleProp.FormDestroy(Sender: TObject);
begin
//  SeqControlOff.Free;
  qrTmp.Free;
end;

procedure TFrmESaleProp.dbedOFDteExit(Sender: TObject);
begin
  if FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString = '' then Exit;

  if not MsDateIsValid(FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString, False) then
  begin
    MbMessage(InvalidDate, mtError, [mbOk], mbOk);
    dbedOFDte.SetFocus;
    dbedOFDte.Text := MbUserDate;
    dbedOFDte.SelStart := 0;
    Exit;
  end;
end;

procedure TFrmESaleProp.dbedBIDateExit(Sender: TObject);
begin
  if FDM_IntSales.qrEIntOffer.FieldByName('OFVALDTE').AsString = '' then Exit;

  if not MsDateIsValid(FDM_IntSales.qrEIntOffer.FieldByName('OFVALDTE').AsString, False) then
  begin
    MbMessage(InvalidDate, mtError, [mbOk], mbOk);
    dbedBIDate.SetFocus;
    FDM_IntSales.qrEIntOffer.FieldByName('OFVALDTE').AsString:= '';
    dbedBIDate.SelStart := 0;
    Exit;
  end;
end;

procedure TFrmESaleProp.dbgrOfferEnter(Sender: TObject);
begin
{  if (Sender as TDBGrid).DataSource.DataSet.IsEmpty then
    (Sender as TDBGrid).DataSource.DataSet.Insert;
 }
  dbgrOffer.SelectedIndex:= 1;
end;

procedure TFrmESaleProp.dbgrOfferEditButtonClick(Sender: TObject);
var
  Code: string;
begin
  if TQuery(dbgrOffer.DataSource.DataSet).CachedUpdates = False then Exit;

  if dbgrOffer.SelectedField.FieldName = 'GDS_CODE' then
  begin
    if HelpGds(Code) then
    begin
      with FDM_IntSales.qrEIntOfferDet do
      begin
        Edit;
        FieldByName('GDS_CODE').AsString:= Code;
      end;

      dbgrOffer.SelectedIndex:= 5;
      Exit;
    end;
  end;

  if dbgrOffer.SelectedField.FieldName = 'CU_CODE' then
  begin
    if HelpArz(Code) then
    begin
      with FDM_IntSales.qrEIntOfferDet do
      begin
        Edit;
        FieldByName('CU_CODE').AsString:= Code;
      end;

      dbgrOffer.SelectedIndex:= 7;
      Exit;
    end;
  end;
end;

procedure TFrmESaleProp.dbgrOfferColEnter(Sender: TObject);
begin
  if dbgrOffer.SelectedIndex in [0, 4] then
    dbgrOffer.SelectedIndex:= 1;

  if dbgrOffer.SelectedIndex in [2, 3] then
    dbgrOffer.SelectedIndex:= 5;

  if dbgrOffer.SelectedIndex in [7] then
    dbgrOffer.SelectedIndex:= 6;
end;

procedure TFrmESaleProp.CF_DetOffer(DataSet: TDataSet);
var
  Temp: Double;
begin
  if SeqControlOff.CanCalculate then
  begin
    with qrTmp, SQL do
    begin
      Clear;
      Add('SELECT GDS_DESCF, GDS_DESCL, UNT_DESC');
      Add('  FROM PSSALES.GOODS                 ');
      Add(' WHERE GDS_CODE = :GDS_CODE          ');
      ParamByName('GDS_CODE').AsString:= DataSet.FieldByName('GDS_CODE').AsString;
      SQL:= MbSqlConvert(SQL);
      Open;

      DataSet.FieldByName('GDS_DESCF').AsString := FieldByName('GDS_DESCF').AsString;
      DataSet.FieldByName('GDS_DESCL').AsString := FieldByName('GDS_DESCL').AsString;
      DataSet.FieldByName('UNT_DESC').AsString  := FieldByName('UNT_DESC').AsString;
    end;

    DataSet.FieldByName('CU_NAME').AsString:= FindArzName(DataSet.FieldByName('CU_CODE').AsString);
  end;

  with DataSet do
  begin
    if (not (FieldByName('OFQTY').AsString = '')) and (not (FieldByName('OFPRICE').AsString = '')) then
    begin
      if not IsCurrency then
      begin
        Temp:= Round(FieldByName('OFQTY').AsFloat * FieldByName('OFPRICE').AsFloat);
        FieldByName('TOTCOST').AsFloat:= Temp;
      end
      else
        FieldByName('TOTCOST').AsString:= FloatToStr(FieldByName('OFQTY').AsFloat * FieldByName('OFPRICE').AsFloat);
    end;
  end;
end;

procedure TFrmESaleProp.dbgrOfferKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    dbgrOfferEditButtonClick(nil);
end;

procedure TFrmESaleProp.GdsCodeValidate(Sender: TField);
begin
  if not CanInsert then
    Exit;

  if not (Sender.AsString = '') then
  begin
    if not ExistGds(Sender.AsString) then
    begin
      MbError(InvalidGds);
      Abort;
    end;
  end;
end;

procedure TFrmESaleProp.PriceValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
    if (Sender.AsFloat > 9999999999999.99) or (Sender.AsFloat < 0) then
    begin
      MbError(RangeErr);
      Abort;
    end;
end;

procedure TFrmESaleProp.QtyValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
    if (Sender.AsFloat > 9999999999) or (Sender.AsFloat < 0) then
    begin
      MbError(RangeErr);
      Abort;
    end;
end;

procedure TFrmESaleProp.dbgrValidityEditButtonClick(Sender: TObject);
var
  Code: string;
begin
  if TQuery(dbgrValidity.DataSource.DataSet).CachedUpdates = False then Exit;

  if dbgrValidity.SelectedField.FieldName = 'ADCODE' then
  begin
    if HelpKasr(Code) then
    begin
      with FDM_IntSales.qrEOffValidity do
      begin
        Edit;
        FieldByName('ADCODE').AsString:= Code;
      end;

      dbgrValidity.SelectedIndex:= 4;
      Exit;
    end;
  end;
end;

procedure TFrmESaleProp.AddCodeValidate(Sender: TField);
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

    with FDM_IntSales.qrEOffValidity do
    begin
      FieldByName('ADVAL').AsString:= '';
      Temp:= FindAddPrice(Sender.AsString, StrToFloatDef(StringReplace(edGrossPrice.Text, ',', '', [rfReplaceAll]), 0));
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

procedure TFrmESaleProp.CF_Validity(DataSet: TDataSet);
begin
  with DataSet do
  begin
{    if FindAddType(FieldByName('ADCODE').AsString) = _stAdd then
      FieldByName('CF_SUM').AsFloat:= FieldByName('ADVAL').AsFloat
    else
    if FindAddType(FieldByName('ADCODE').AsString) = _stSub then
      FieldByName('CF_SUM').AsFloat:= Nvl(FieldByName('ADVAL').AsFloat) * (-1);
 }
    if FAddGrid.CanCalculate then
    begin
      FieldByName('ADDDESC').AsString:= FindAddFName(FieldByName('ADCODE').AsString);
      FieldByName('ADDTYPE').AsString:= FindAddType(FieldByName('ADCODE').AsString);

      if CanCalc then
        FieldByName('ADKIND').AsString:= FindAddKind(FieldByName('ADCODE').AsString);
    end;
  end;
end;

procedure TFrmESaleProp.AddValValidate(Sender: TField);
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

procedure TFrmESaleProp.AddBeforePost(DataSet: TDataSet);
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

    if (FieldByName('ADVAL').AsString = '') and (FieldByName('ADKIND').AsString <> _stDePercent) then
    begin
      MbError(NotDataComplete);
      dbgrValidity.SetFocus;
      dbgrValidity.SelectedIndex:= 4;
      Abort;
    end;

{    if FieldByName('ADKIND').AsString = _stPercent then
    begin
      if not IsCurrency then
        Temp:= IntToStr(Round(GetPercentPrice(FieldByName('ADCODE').AsString,
                             StrToFloat(StringReplace(edGrossPrice.Text, ',' , '' ,[rfReplaceAll])))))
      else
        Temp:= FloatToStr(GetPercentPrice(FieldByName('ADCODE').AsString,
                             StrToFloat(StringReplace(edGrossPrice.Text, ',' , '' ,[rfReplaceAll]))));

      if not (FieldByName('ADVAL').AsString = Temp) then
      begin
        MbError('C??C? EU??? ?E?U ???I ?IC?I');
        dbgrValidity.SetFocus;
        dbgrValidity.SelectedIndex:= 4;
        Edit;
        FieldByName('ADVAL').AsString:= Temp;
        Abort;
      end;
    end;
 }
  end;
end;

procedure TFrmESaleProp.dbgrValidityColEnter(Sender: TObject);
begin
  with FDM_IntSales.qrEOffValidity do
  begin
    if (dbgrValidity.SelectedField = FieldByName('ADDDESC')) or
       (dbgrValidity.SelectedField = FieldByName('ADDTYPE')) then
      dbgrValidity.SelectedField:= FieldByName('ADVAL');

    if dbgrValidity.SelectedField = FieldByName('ADKIND') then
      dbgrValidity.SelectedField:= FieldByName('ADCODE');

    if dbgrValidity.SelectedField = FieldByName('ADVAL') then
      if (FieldByName('ADKIND').AsString = _stPercent) or
         (FieldByName('ADKIND').AsString = _stDePercent) then
        dbgrValidity.SelectedIndex:= dbgrValidity.SelectedIndex - 1;
  end;
end;

procedure TFrmESaleProp.dbgrValidityKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    dbgrValidityEditButtonClick(nil);
end;

procedure TFrmESaleProp.btnPostClick(Sender: TObject);
var
  Temp: string;
begin
  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if FDM_IntSales.qrEIntOfferDet.IsEmpty then
  begin
    MbError(RecHasRel);
    dbgrOffer.SetFocus;
    dbgrOffer.SelectedIndex:= 1;
    Exit;
  end;

  if not OffCheckBeforeSave then
    Abort;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
//Comment By Niaz Karbasi On 85-03-17
{    if FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString = '' then
      Temp:= GetSequence('OFFER_SEQ')
    else}
      Temp:= FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;

    PostRecord(Temp);

    edGrossPrice.Text:= '';
    edNetPrice.Text:= '';
  except
    on E: Exception do
    begin
      if (Pos('20501', E.Message) > 0) or (Pos('20503', E.Message) > 0) then
      begin
//Comment By Niaz Karbasi On 85-03-17      
//        Temp:= GetSequence('OFFER_SEQ');
        PostRecord(Temp);
      end
      else
      begin
        MbError(ExpHandleM(E));
        MbDB.RollBack(FDB);
      end;
    end;
  end;
end;

procedure TFrmESaleProp.PostRecord(var ATemp: string);
var
  TmpStr: string;
  DoMessage: Boolean;
begin
  DoMessage:= FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString = '';
  try
    with FDM_IntSales.qrEIntOffer do
    begin
      Edit;
      FieldByName('OFNUM').AsString:= ATemp;
      FieldByName('OFSTAT').AsInteger:= _intNotConfirmed;

      ApplyUpdates;
    end;

    DelOffDet;
    InsOffDet;

    //AddSub
    with FDM_IntSales.qrEOffValidity do
    begin
      CalculateNetCost(_OnSave);
      ApplyUpdates;
    end;

    //----------------
    MbDB.Commit(FDB);
//Comment By Niaz Karbasi On 85-03-17    
{
    if DoMessage then
    begin
      TmpStr:= Format(SalePropSaved, [ATemp]);
      MbMessage(TmpStr, mtInformation, [mbOk], mbOk);
    end;
}
    SelectEmpty(FDM_IntSales.qrEIntOffer, 'OFFERTIT_T');
    SelectEmpty(FDM_IntSales.qrEIntOfferDet, 'OFFERDTL_T');
    SelectEmpty(FDM_IntSales.qrEOffValidity, 'VALIDITY_T');
    dbedOFNum.SetFocus;
    btnPost.Enabled:= False;
  except
    raise;
  end;
end;

procedure TFrmESaleProp.DelOffDet;
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('DELETE FROM PSSALES.OFFERDTL_T');
    Add('WHERE');
    Add('     OFNUM = :OFNUM');
    ParamByName('OFNUM').AsString :=
        FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
    SQL := MbSqlConvert(SQL);
    ExecSql;
  end;
end;

procedure TFrmESaleProp.InsOffDet;
begin
  FDM_IntSales.qrEIntOfferDet.DisableControls;
  try
    FDM_IntSales.qrEIntOfferDet.First;

    while not FDM_IntSales.qrEIntOfferDet.Eof do
    begin
      with FDM_IntSales.qrETemp, SQL do
      begin
        Clear;
        Add('INSERT INTO PSSALES.OFFERDTL_T');
        Add('  (OFNUM, OFSEQ, CU_CODE, GDS_CODE, OFQTY, OFPRICE)');
        Add('VALUES');
        Add('  (:OFNUM, :OFSEQ, :CU_CODE, :GDS_CODE, :OFQTY, :OFPRICE)');
        ParamByName('OFNUM').AsString    := FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
        ParamByName('OFSEQ').AsString   := FDM_IntSales.qrEIntOfferDet.FieldByName('OFSEQ').AsString;
        ParamByName('CU_CODE').AsString  := CuCode;
        ParamByName('GDS_CODE').AsString := FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString;
        ParamByName('OFQTY').AsString   := FDM_IntSales.qrEIntOfferDet.FieldByName('OFQTY').AsString;
        ParamByName('OFPRICE').AsString := FDM_IntSales.qrEIntOfferDet.FieldByName('OFPRICE').AsString;

        SQL := MbSqlConvert(SQL);
        ExecSql;
      end;

      FDM_IntSales.qrEIntOfferDet.Next;
    end;
  finally
    FDM_IntSales.qrEIntOfferDet.EnableControls;
  end;
end;

procedure TFrmESaleProp.CheckButton;
begin
  if (FDM_IntSales.qrEIntOffer.FieldByName('OFSTAT').AsInteger = _intNotConfirmed) or
     (FDM_IntSales.qrEIntOffer.FieldByName('OFSTAT').AsString = '') then
  begin
    btnControl.Visible:= True;
    btnNoControl.Visible:= False;
  end
  else
  begin
    btnControl.Visible:= False;
    btnNoControl.Visible:= True;
  end;
end;

procedure TFrmESaleProp.btnControlClick(Sender: TObject);
Var OfStete, Serial: Integer;
begin
  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if not ExistOffID(dbedOFNum.Text,OfStete) then
  begin
    MbError(MustSaveRec);
    Exit;
  end;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_IntSales.qrETemp, SQL do
    begin
      Clear;
      Add('UPDATE PSSALES.OFFERTIT_T');
      Add('SET ');
      Add('   OFSTAT = :OFSTAT');
      Add('WHERE');
      Add('     OFNUM = :OFNUM');
      ParamByName('OFSTAT').AsInteger:= _intConfirmed;
      ParamByName('OFNUM').AsString:= FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
      SQL:= MbSqlConvert(SQL);
      ExecSQL;
      
      Serial := GetSeqVal;
      if dbedORD_DELV_NO.Text = '' then
      begin
        FDM_IntSales.qrEIntOffer.Edit;
        FDM_IntSales.qrEIntOffer.FieldByName('Ord_Delv_No').AsInteger := SelectOrd_Delv_No;
      end;
//        Delv_Ord := FDM_IntSales.qrEIntOffer.FieldByName('Ord_Delv_No').AsInteger;
      CreateOrdDelv(serial);
      UpdateOrd_Delv_No;      
    end;

    MbDB.Commit(FDB);
  except
    MbDB.RollBack(FDB);
  end;

  btnControl.Visible:= False;
  btnNoControl.Visible:= True;
  DisableIntControls;

  dbedOFNumExit(nil);
  if dbedORD_DELV_NO.Text = '' then
    UpdateOrd_Delv_No;
end;

procedure TFrmESaleProp.btnNoControlClick(Sender: TObject);
Var OfStete : Integer;
begin
  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if not ExistOffID(dbedOFNum.Text,OfStete) then
  begin
    MbError(MustSaveRec);
    Exit;
  end;

  if not DoesHavaleHas then
  begin
    MbError(CanNotDelete);
    Exit;
  end;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_IntSales.qrETemp, SQL do
    begin
      Clear;
      Add('UPDATE PSSALES.OFFERTIT_T');
      Add('SET ');
      Add('   OFSTAT = :OFSTAT');
      Add('WHERE');
      Add('     OFNUM = :OFNUM');
      ParamByName('OFSTAT').AsInteger:= _intNotConfirmed;
      ParamByName('OFNUM').AsString:= FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
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
  EnableIntControls;

  dbedOFNumExit(nil);
  EmptyOrd_delv_No;  
end;

function TFrmESaleProp.CanModify: Boolean;
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT OFSTAT            ');
    Add('  FROM PSSALES.OFFERTIT_T');
    Add(' WHERE OFNUM = :OFNUM    ');
    ParamByName('OFNUM').AsString:= FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result:= (FieldByName('OFSTAT').AsInteger = _intNotConfirmed);
    Close;
  end;
end;

procedure TFrmESaleProp.DisableIntControls;
begin
  dbedReqID.Enabled:= False;
  dbedReqDte.Enabled:= False;
  dbedOFDte.Enabled:= False;
  dbedBIDate.Enabled:= False;
  dbedOFDlvDte.Enabled:= False;
  dbedOFComm.Enabled:= False;
  dbedCustNO.Enabled:= False;
  sbCustNo.Enabled:= False;
  dbedPrjCode.Enabled:= False;
  sbPrjCode.Enabled:= False;
  dbmOFDesc.Enabled:= False;

  TQuery(dbgrOffer.DataSource.DataSet).CachedUpdates:= False;

  TQuery(dbgrValidity.DataSource.DataSet).CachedUpdates:= False;

  btnPost.Enabled:= False;
  btnDelete.Enabled:= False;
end;

procedure TFrmESaleProp.EnableIntControls;
begin
  dbedReqID.Enabled:= True;
  dbedReqDte.Enabled:= True;
  dbedOFDte.Enabled:= True;
  dbedBIDate.Enabled:= True;
  dbedOFDlvDte.Enabled:= True;
  dbedOFComm.Enabled:= True;
  dbedCustNO.Enabled:= True;
  sbCustNo.Enabled:= True;
  dbedPrjCode.Enabled:= True;
  sbPrjCode.Enabled:= True;
  dbmOFDesc.Enabled:= True;

  TQuery(dbgrOffer.DataSource.DataSet).CachedUpdates:= True;

  TQuery(dbgrValidity.DataSource.DataSet).CachedUpdates:= True;

  BtnPost.Enabled := (MabnaInfo.HasAccess(BtnPost.Tag));
//  btnPost.Enabled:= True;
  btnDelete.Enabled := (MabnaInfo.HasAccess(BtnDelete.Tag));
//  btnDelete.Enabled:= True;
end;

procedure TFrmESaleProp.btnDeleteClick(Sender: TObject);
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

    Code:= FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
    FQuery:= TQuery.Create(Self);
    try
      FQuery.DataBaseName:= MbDB.DataBaseName[FDB];
      try
        with FQuery, SQL do
        begin
          Clear;
          Add('DELETE  FROM PSSALES.VALIDITY_T');
          Add('  WHERE ADNUM2 = :ADNUM2       ');
          ParamByName('ADNUM2').AsString:= Code;
          SQL:= MbSqlConvert(SQL);
          ExecSql;

          Clear;
          Add('DELETE  FROM PSSALES.OFFERDTL_T');
          Add('  WHERE OFNUM = :OFNUM         ');
          ParamByName('OFNUM').AsString:= Code;
          SQL:= MbSqlConvert(SQL);
          ExecSql;

          Clear;
          Add('DELETE  FROM PSSALES.OFFERTIT_T');
          Add('  WHERE OFNUM = :OFNUM         ');
          ParamByName('OFNUM').AsString:= Code;
          SQL:= MbSqlConvert(SQL);
          ExecSql;
        end;

        SelectEmpty(FDM_IntSales.qrEIntOffer, 'OFFERTIT_T');
        SelectEmpty(FDM_IntSales.qrEIntOfferDet, 'OFFERDTL_T');
        SelectEmpty(FDM_IntSales.qrEOffValidity, 'VALIDITY_T');
        dbedOFNum.SetFocus;
        MbDB.Commit(FDB);
        edGrossPrice.Text:= '';
        edNetPrice.Text:= '';
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

procedure TFrmESaleProp.sbLastClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_IntSales.qrEIntOffer.DisableControls;
  try
    with FDM_IntSales do
    begin
      if not CheckChanges(qrEIntOffer, qrEIntOfferDet, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEIntOffer, 'OFFERTIT_T', 1, Ord(_Last), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_IntSales.qrEIntOffer.EnableControls;
  end;

  ShowOffDetail;

  if not CanModify then
    DisableIntControls
  else
    EnableIntControls;

  CheckButton;
end;

procedure TFrmESaleProp.sbNextClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_IntSales.qrEIntOffer.DisableControls;
  try
    with FDM_IntSales do
    begin
      if not CheckChanges(qrEIntOffer, qrEIntOfferDet, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEIntOffer, 'OFFERTIT_T', 1, Ord(_Next), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_IntSales.qrEIntOffer.EnableControls;
  end;

  ShowOffDetail;

  if not CanModify then
    DisableIntControls
  else
    EnableIntControls;

  CheckButton;
end;

procedure TFrmESaleProp.sbPrevClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_IntSales.qrEIntOffer.DisableControls;
  try
    with FDM_IntSales do
    begin
      if not CheckChanges(qrEIntOffer, qrEIntOfferDet, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEIntOffer, 'OFFERTIT_T', 1, Ord(_Prev), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_IntSales.qrEIntOffer.EnableControls;
  end;

  ShowOffDetail;

  if not CanModify then
    DisableIntControls
  else
    EnableIntControls;

  CheckButton;
end;

procedure TFrmESaleProp.sbFirstClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_IntSales.qrEIntOffer.DisableControls;
  try
    with FDM_IntSales do
    begin
      if not CheckChanges(qrEIntOffer, qrEIntOfferDet, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEIntOffer, 'OFFERTIT_T', 1, Ord(_First), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_IntSales.qrEIntOffer.EnableControls;
  end;

  ShowOffDetail;

  if not CanModify then
    DisableIntControls
  else
    EnableIntControls;

  CheckButton;
end;

procedure TFrmESaleProp.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if FDM_IntSales.qrEIntOffer.Modified or FDM_IntSales.qrEIntOffer.UpdatesPending or (FDM_IntSales.qrEIntOffer.State in dsEditModes) or
     FDM_IntSales.qrEIntOfferDet.Modified or FDM_IntSales.qrEIntOfferDet.UpdatesPending or (FDM_IntSales.qrEIntOfferDet.State in dsEditModes) or
     FDM_IntSales.qrEOffValidity.Modified or FDM_IntSales.qrEOffValidity.UpdatesPending or (FDM_IntSales.qrEOffValidity.State in dsEditModes) then
  begin
    if ConfirmPost then
      CanClose:= True
    else
      CanClose:= False;
  end;

  if CanClose then
  begin
    if MbDB.InTransaction[FDB] then
      MbDB.RollBack(FDB);
  end;
end;

procedure TFrmESaleProp.FUpdateError(DataSet: TDataSet; E: EDatabaseError;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
  MbError(ExpHandleM(E));
  Abort;
end;

procedure TFrmESaleProp.FOnStateChanged(Sender: TObject);
begin
  with FDM_IntSales do
    G_StateChange(qrEIntOffer, qrEIntOfferDet, btnPost, btnDelete);
end;

procedure TFrmESaleProp.sbListClick(Sender: TObject);
var
  Code: string;
begin
  if HelpSalesProp(Code) then
  begin
    dbedOFNum.SetFocus;
    with FDM_IntSales.qrEIntOffer do
    begin
      Edit;
      FieldByName('OFNUM').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmESaleProp.dbedOFNumKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    sbList.Click;
end;

function TFrmESaleProp.OffCheckBeforeSave: Boolean;
begin
  Result:= True;
  with FDM_IntSales.qrEIntOffer do
  begin
    if FieldByName('CUST_REQNO').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedReqID.SetFocus;
      Result:= False;
      Exit;
    end;

    if FieldByName('CUST_REQDATE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedReqDte.SetFocus;
      Result:= False;
      Exit;
    end;

    if FieldByName('OFDATE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedOFDte.SetFocus;
      Result:= False;
      Exit;
    end;

    if FieldByName('OFVALDTE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedBIDate.SetFocus;
      Result:= False;
      Exit;
    end;

    if FieldByName('OFDLVDTE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedOFDlvDte.SetFocus;
      Result:= False;
      Exit;
    end;


    if FieldByName('CUSTNO').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedCustNO.SetFocus;
      Result:= False;
      Exit;
    end;

    if FieldByName('PRJCODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedPrjCode.SetFocus;
      Result:= False;
      Exit;
    end;

    if FieldByName('OFCOMM').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedOFComm.SetFocus;
      Result:= False;
      Exit;
    end;
  end;
end;

procedure TFrmESaleProp.FAddOnStateChanged(Sender: TObject);
begin
  with FDM_IntSales do
    G_StateChange(qrEOffValidity, qrEOffValidity, btnPost, btnDelete);
end;

procedure TFrmESaleProp.StatGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intNotConfirmed : Text:= _stNotConfirmed;
    _intConfirmed    : Text:= _stConfirmed;
  end;
end;

function TFrmESaleProp.GetPercentPrice(AdCode: string;
  APrice: Double): Double;
begin
  with FDM_IntSales.qrETemp, SQL do
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

procedure TFrmESaleProp.DetOnNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('CU_CODE').AsString:= CuCode;
end;

procedure TFrmESaleProp.bbPreviewClick(Sender: TObject);
  var OfState : Integer;
begin
  if (not (FDM_IntSales.qrEIntOffer.State in [dsBrowse])) or
     (not (FDM_IntSales.qrEIntOfferDet.State in [dsBrowse])) or
     (not (FDM_IntSales.qrEOffValidity.State in [dsBrowse])) then
  begin
    MbError(MustSaveRec);
    Exit;
  end;

  If PrintQuery Then
    MbPrompt(NoReport)
  else
  begin
    if FileExists(ReportPath+'ROFFER.RTM') then
    begin
      ppReport1.Template.FileName:= ReportPath+'ROFFER.RTM';
      ppReport1.SaveAsTemplate:= True;
      ppReport1.Template.LoadFromFile;
    end;
    if Sender = bbPreview then
      ppReport1.DeviceType := 'Screen'
    else
      ppReport1.DeviceType := 'Printer';
    ppReport1.Print;
  end;
end;

Function TFrmESaleProp.PrintQuery : Boolean;
begin
  with FDM_IntSales.qrRSaleProp , sql do
  begin
    Close;
    Clear;
    Add('SELECT H.OFNUM, OFDATE, OFVALDTE, OFDLVDTE,  ');
    Add('       C.CUSTADD, H.CUSTNO, C.CUSTNAME,      ');
    Add('       H.CUST_REQNO, H.CUST_REQDATE,         ');
    Add('       H.PRJCODE, PRJDESC, OFCOMM,D.GDS_CODE,');
    Add('       GDS_DESCF, GDS_DESCL,G.GDS_UNTS,      ');
    Add('       UNT_DESC, OFQTY, OFPRICE,OFDESC,      ');
    Add('       (NVL(OFPRICE,0)*NVL(OFQTY,0)) TOTLSUM ');
    Add('  FROM OFFERTIT_T H, OFFERDTL_T D,           ');
    Add('       GOODS G, IDCUSTOMER_T C,              ');
    Add('       PROJECT_T P                           ');
    Add(' WHERE H.OFNUM    =:OFNUM                    ');
    Add('   AND H.OFNUM    = D.OFNUM                  ');
    Add('   AND H.CUSTNO   = C.CUSTNO                 ');
    Add('   AND H.PRJCODE  = P.PRJCODE(+)             ');
    Add('   AND D.GDS_CODE = G.GDS_CODE(+)            ');
    ParamByName('OFNUM').AsString := dbedOFNum.Text;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result := IsEmpty;
  end;
end;

procedure TFrmESaleProp.AddQuery;
var
 i,m: Integer;
 flag:boolean;
begin
  I:= 1;

  if StrToFloat(GetEditText(pplbdbcalc1.text)) = StrToFloat(GetEditText(edGrossPrice.Text)) then
  begin
    with FDM_IntSales.qrRAdd , SQL do
    begin
      Close;
      Clear;
      Add('SELECT   V.ADCODE, ADVAL, ADNUM2, ADFNAME, ADTYPE ');
      Add('  FROM   VALIDITY_T V , ADDSUB_T A                ');
      Add(' WHERE   ADNUM2   =:ADNUM2                        ');
      Add('   AND   V.ADCODE = A.ADCODE                      ');
      Add('GROUP BY V.ADCODE, ADVAL, ADNUM2, ADFNAME, ADTYPE ');
      ParamByName('ADNUM2').AsString := dbedOFNum.Text;
      SQL:= MbSqlConvert(SQL);
      Open;
      First;
      flag:=false;
      while not Eof do
      begin
        flag:=true;
        Case FieldByNAme('ADTYPE').AsInteger of
          _intAdd   : TppLabel(Self.FindComponent('lbl'+IntToStr(I))).Caption := _stAdd;
          _intSub   : TppLabel(Self.FindComponent('lbl'+IntToStr(I))).Caption := _stSub;
        end;
        ((Self.FindComponent('lblNo'+IntToStr(I))) as TppLabel).Caption := FieldByNAme('ADCODE').AsString;
        TppLabel(Self.FindComponent('lblDsc'+IntToStr(I))).Caption := MbDb2St(FieldByNAme('ADFNAME').AsString,MbCurrentCharSetCode);

        if not IsCurrency then
          TppLabel(Self.FindComponent('lblVal'+IntToStr(I))).Caption := SetCammaEdit(FieldByName('ADVAL').AsFloat)
        else
          TppLabel(Self.FindComponent('lblVal'+IntToStr(I))).Caption := Format('%10.3n', [FieldByName('ADVAL').AsFloat * 1.0]);

        I:= I + 1;
        Next;
      end;

    end;

  end;

   for m:=i to 5 do
   begin
     TppLabel(Self.FindComponent('lbl'+IntToStr(m))).Caption := ' ';
     ((Self.FindComponent('lblNo'+IntToStr(m))) as TppLabel).Caption := ' ' ;
     TppLabel(Self.FindComponent('lblDsc'+IntToStr(m))).Caption := ' ';
     TppLabel(Self.FindComponent('lblVal'+IntToStr(m))).Caption := ' ';
   end;
end;

function TFrmESaleProp.KasrQuery:Double;
begin
  with FDM_IntSales.qrETemp , SQL do
  begin
    Close;
    Clear;
    Add('SELECT SUM(ADVAL) KASRVAL                 ');
    Add('  FROM VALIDITY_T ,ADDSUB_T               ');
    Add(' WHERE ADTYPE  = 2                        ');
    Add('   AND ADNUM2  =:ADNUM2                   ');
    Add('   AND VALIDITY_T.ADCODE = ADDSUB_T.ADCODE');
    ParamByName('ADNUM2').AsString := dbedOFNum.Text;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result := FieldByName('KASRVAL').AsFloat;
  end;
end;

function TFrmESaleProp.EzafehQuery:Double;
begin
  with FDM_IntSales.qrETemp , SQL do
  begin
    Close;
    Clear;
    Add('SELECT SUM(ADVAL) EZAFEHVAL               ');
    Add('  FROM VALIDITY_T ,ADDSUB_T               ');
    Add(' WHERE ADTYPE  = 1                        ');
    Add('   AND ADNUM2  =:ADNUM2                   ');
    Add('   AND VALIDITY_T.ADCODE = ADDSUB_T.ADCODE');
    ParamByName('ADNUM2').AsString := dbedOFNum.Text;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result := FieldByName('EZAFEHVAL').AsFloat;
  end;
end;

procedure TFrmESaleProp.ppDBText3GetText(Sender: TObject;
  var Text: String);
begin
  Text:= MbDb2St(Text, MbCurrentCharSetCode);
end;

procedure TFrmESaleProp.ppFooterBand1BeforePrint(Sender: TObject);
begin
  AddQuery;
end;

procedure TFrmESaleProp.ppDBCalc2Calc(Sender: TObject);
begin
  pplbdbcalc1.text:=ppdbcalc2.text;
{  ppLabel98.Text :=SetCammaEdit(strtoFloat(GetEditText(ppdbcalc2.text))+ EzafehQuery - KasrQuery );
  ppLabel100.Text:=MbStringNumber(strtoFloat(GetEditText(ppdbcalc2.text))+ EzafehQuery - KasrQuery);}
  if StrToFloat(GetEditText(pplbdbcalc1.text)) = StrToFloat(GetEditText(edGrossPrice.Text)) then
   begin
    ppLabel98.Text:= edNetPrice.Text;
    if not IsCurrency then
      ppLabel100.Text:= MbStringNumber(Round(StrToFloat(StringReplace(edNetPrice.Text, ',' , '' ,[rfReplaceAll]))))
    else
      ppLabel100.Text:= '';
   end
   else
   begin
    ppLabel98.Text := '';
    ppLabel100.Text:= '';
   end;

end;

function TFrmESaleProp.IsCurrency: Boolean;
begin
  Result:= not (FDM_IntSales.qrEIntOfferDet.FieldByName('CU_CODE').AsString = '');
end;

procedure TFrmESaleProp.ppDBText17GetText(Sender: TObject;
  var Text: String);
begin
  if not IsCurrency then
    Text:= SetCammaEdit(StrToFloat(StringReplace(Text, ',' , '' ,[rfReplaceAll])));
end;

procedure TFrmESaleProp.ppDBCalc2GetText(Sender: TObject;
  var Text: String);
begin
  if not IsCurrency then
    Text:= SetCammaEdit(StrToFloat(StringReplace(Text, ',' , '' ,[rfReplaceAll])));
end;

procedure TFrmESaleProp.ppDBText10GetText(Sender: TObject;
  var Text: String);
begin
  Text := Mbdb2St(Text,MbCurrentCharSetCode);
end;

procedure TFrmESaleProp.OFDLVDTEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text:= MbDb2St(Sender.AsString, MbCurrentCharSetCode);
end;

procedure TFrmESaleProp.OFDLVDTESetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:= MbSt2Db(Text, MbCurrentCharSetCode);
end;

procedure TFrmESaleProp.ADKindChange(Sender: TField);
begin
 if FindAddKind(Sender.DataSet.FieldByName('ADCODE').AsString) = _stDePercent then
  begin
    CanCalc:= False;
    try
      Sender.DataSet.FieldByName('ADVAL').AsString:= '';
    finally
      CanCalc:= True;
    end;
  end;
end;

procedure TFrmESaleProp.InitAddSubGrid;
begin
  FAddGrid:= TCuDBGrid.Create(Self, dbgrValidity, '', True, True, False);
{  FAddGrid.AddSum(['CF_SUM']);
  FAddGrid.SetSumControl['CF_SUM']:= edNetPrice;}
  FAddGrid.SetRowDuplicate(['ADCODE']);
end;

procedure TFrmESaleProp.AddOnNewRecord(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByName('ADNUM1').AsString:= '0';
    FieldByName('ADNUM2').AsString:= FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
    FieldByName('ADNUM3').AsString:= '0';
    FieldByName('ADNUM4').AsString:= '0';
    FieldByName('ADNUM5').AsString:= '0';
  end;
end;

procedure TFrmESaleProp.DetBeforePost(DataSet: TDataSet);
begin
  with DataSet do
  begin
    if FieldByName('GDS_CODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrOffer.SetFocus;
      dbgrOffer.SelectedIndex:= 1;
      Abort;
    end;

    if FieldByName('OFPRICE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrOffer.SetFocus;
      dbgrOffer.SelectedIndex:= 5;
      Abort;
    end;

    if FieldByName('OFQTY').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrOffer.SetFocus;
      dbgrOffer.SelectedIndex:= 6;
      Abort;
    end;
  end;
end;

procedure TFrmESaleProp.AddAfterScroll(DataSet: TDataSet);
begin
  with DataSet do
  begin
    if dbgrValidity.SelectedField = FieldByName('ADVAL') then
      if (FieldByName('ADKIND').AsString = _stPercent) or
         (FieldByName('ADKIND').AsString = _stDePercent) then
        dbgrValidity.SelectedIndex:= dbgrValidity.SelectedIndex - 1;
  end;
end;

function TFrmESaleProp.CalculateNetCost(const AKind: Integer): Double;
var
  BM: TBookMark;
  iAfterScroll,
  iBeforePost: TDataSetNotifyEvent;
  Temp, Debate, KasrVal: Double;
begin
  BM:= FDM_IntSales.qrEOffValidity.GetBookMark;
  iAfterScroll:= FDM_IntSales.qrEOffValidity.AfterScroll;
  iBeforePost:= FDM_IntSales.qrEOffValidity.BeforePost;

  FDM_IntSales.qrEOffValidity.AfterScroll:= nil;
  FDM_IntSales.qrEOffValidity.BeforePost:= nil;
  FDM_IntSales.qrEOffValidity.DisableControls;
  try
    with FDM_IntSales.qrEOffValidity do
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

        Debate:= SeqControlOff.GetSum('TOTCOST') - KasrVal;

        First;
        while not Eof do
        begin
          Edit;

          FieldByName('ADNUM2').AsString:= FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;

          if FieldByName('ADKIND').AsString = _stPercent then
            FieldByName('ADVAL').AsFloat:= GetPercentPrice(FieldByName('ADCODE').AsString, SeqControlOff.GetSum('TOTCOST'));

          if FieldByName('ADKIND').AsString = _stDePercent then
            FieldByName('ADVAL').AsFloat:= GetPercentPrice(FieldByName('ADCODE').AsString, Debate);

          Next;
        end;

        Result:= -1;
      end;

      if AKind = _OnOpen then
      begin
        Temp:= SeqControlOff.GetSum('TOTCOST');
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
    if FDM_IntSales.qrEOffValidity.State in dsEditModes then
      FDM_IntSales.qrEOffValidity.Post;

    FDM_IntSales.qrEOffValidity.GotoBookMark(BM);
    if not (BM = nil) then
      FDM_IntSales.qrEOffValidity.FreeBookMark(BM);

    FDM_IntSales.qrEOffValidity.AfterScroll:= iAfterScroll;
    FDM_IntSales.qrEOffValidity.BeforePost:= iBeforePost;
    FDM_IntSales.qrEOffValidity.EnableControls;
  end;
end;

procedure TFrmESaleProp.AddAfterOpen(DataSet: TDataSet);
begin
  edNetPrice.Text:= Format('%.n', [CalculateNetCost(_OnOpen)]);
end;

procedure TFrmESaleProp.GdsCodeChange(Sender: TField);
var
  Rate: Double;
begin
  if (Sender.AsString = '') or (GdsFlag = False) then
    Exit;

(* Vakili 83-09-28 *)
{  if not GetGoodRate(Sender.AsString, Rate) then
  begin
    GdsFlag:= False;
    try
      MbError(NoRate);
      Sender.DataSet.Edit;
      Sender.AsString:= '';
    finally
      GdsFlag:= True;
    end;
    Abort;
  end
  else}
  if GetGoodRate(Sender.AsString, Rate) then
  begin
    GdsFlag:= True;
    if IsCurrency then
      Rate:= Rate / StrToFloatDef(GetTaseer(Sender.DataSet.FieldByName('CU_CODE').AsString), 1)
    else
      Rate:= Round(Rate);

    Sender.DataSet.Edit;
    Sender.DataSet.FieldByName('OFPRICE').AsFloat:= Rate;
  end;
(* Vakili 83-09-28 *)
end;

procedure TFrmESaleProp.DetAfterOpen(DataSet: TDataSet);
begin
  GdsFlag:= True;
end;

procedure TFrmESaleProp.spDesignClick(Sender: TObject);
begin
  ppDesigner.Report.Template.FileName:= ReportPath+'ROFFER.RTM';
  if FileExists(ReportPath+'ROFFER.RTM') then
  begin
    ppDesigner.Report.SaveAsTemplate:= True;
    ppDesigner.Report.Template.LoadFromFile;
  end;
  ppDesigner.ShowModal;
end;

procedure TFrmESaleProp.CF_MstOffer(DataSet: TDataSet);
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT CUSECO, CUSTADD       ');
    Add('  FROM PSSALES.IDCUSTOMER_T C');
    Add(' WHERE CUSTNO = :PCUSNO      ');
    ParamByName('PCUSNO').AsString:= DataSet.FieldByName('CUSTNO').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;

    DataSet.FieldByName('CF_CECODE').AsString:= FieldByName('CUSECO').AsString;
    DataSet.FieldByName('Address').AsString:= FieldByName('CUSTADD').AsString;

   Clear;
    Add('SELECT CUSTNAME            ');
    Add('  FROM PSSALES.IDCUSTOMER_T');
    Add(' WHERE CUSTNO = :no        ');
    ParamByName('no').AsString := DataSet.Fieldbyname('CUSTNO').AsString;
    SQL:=MbSqlConvert(SQL);
    Open;

    DataSet.FieldByName('CF_CUSTNAME').AsString := Fieldbyname('CUSTNAME').AsString;

    Clear;
    Add('SELECT PRJDESC        ');
    Add('  FROM PROJECT_T      ');
    Add(' WHERE PRJCODE = :code');
    ParamByName('code').AsString := DataSet.Fieldbyname('PRJCODE').AsString;
    SQL := MbSqlConvert(SQL);
    Open;

    DataSet.FieldByName('CF_PRJDESC').AsString := Fieldbyname('PRJDESC').AsString;
  end;
end;

procedure TFrmESaleProp.sbCustNoClick(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomer(Code) then
  begin
    dbedCustNO.SetFocus;
    with FDM_IntSales.qrEIntOffer do
    begin
      Edit;
      FieldByName('CUSTNO').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmESaleProp.sbPrjCodeClick(Sender: TObject);
var
  Code: string;
begin
  if HelpPrj(Code) then
  begin
    dbedPrjCode.SetFocus;
    with FDM_IntSales.qrEIntOffer do
    begin
      Edit;
      FieldByName('PRJCODE').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmESaleProp.sbCurrClick(Sender: TObject);
  var
  Code: string;
begin
 { if HelpArz(Code) then
  begin
    dbedCuCode.SetFocus;
    with FDM_IntSales.qrEIntOfferdet do
    begin
      Edit;
      FieldByName('CU_CODE').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;}
end;

procedure TFrmESaleProp.dbedCustNOExit(Sender: TObject);
begin
  with FDM_IntSales.qrEIntOffer do
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

procedure TFrmESaleProp.dbedPrjCodeExit(Sender: TObject);
begin
  with FDM_IntSales.qrEIntOffer do
  begin
    if not (FieldByName('PRJCODE').AsString = '') then
    begin
      if not ExistProject(FieldByName('PRJCODE').AsString) then
      begin
        MbError(InvalidProject);
        dbedPrjCode.SetFocus;
        Exit;
      end;
    end;
  end;
end;

procedure TFrmESaleProp.CreateOrdDelv(FSerial: integer);
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('INSERT INTO  PKINVENTORY.DOC_M(DOC_M_SERIAL, STK_CODE, FRM_CODE,       ');
    Add('                               DOC_M_SALEORNO,DOC_M_YEAR,DOC_M_STKSER, ');
    Add('                               DOC_M_CODE, DOC_M_DATE, DOC_M_STAT,     ');
    Add('                               ACT_CODE, CUT_CODE)                     ');
    Add('  VALUES (:DOC_M_SERIAL, :STK_CODE, :FRM_CODE, :DOC_M_SALEORNO,        ');
    Add('          :DOC_M_YEAR, :DOC_M_STKSER, :DOC_M_CODE, :DOC_M_DATE,        ');
    Add('          :DOC_M_STAT, :ACT_CODE, :CUT_CODE)                           ');
    ParamByName('DOC_M_SERIAL').AsInteger := FSerial;
    ParamByName('STK_CODE').AsInteger     := FetchGdsType(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString);
    ParamByName('FRM_CODE').AsInteger     := _OrdDelFormcode;
    ParamByName('DOC_M_SALEORNO').AsString:= FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
    ParamByName('DOC_M_YEAR').AsInteger   := System_YY;
    ParamByName('DOC_M_STKSER').AsInteger := _OrdDelStkSerCode;
    ParamByName('DOC_M_CODE').AsString    := FDM_IntSales.qrEIntOffer.FieldByName('ORD_DELV_NO').AsString;
    ParamByName('DOC_M_DATE').AsString    := MbUserDate;
    ParamByName('DOC_M_STAT').AsInteger   := _OrdDelPost;
    ParamByName('ACT_CODE').AsInteger     := _OrdDelActCode;
    ParamByName('CUT_CODE').AsString      := FDM_IntSales.qrEIntOffer.FieldByName('CUSTNO').AsString;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;

    Clear;
    Add('UPDATE  PKINVENTORY.DOC_M           ');
    Add('  SET   DOC_M_STAT = :DOC_M_STAT    ');
    Add('  WHERE DOC_M_SERIAL = :DOC_M_SERIAL');
    ParamByName('DOC_M_SERIAL').AsInteger := FSerial;
    ParamByName('DOC_M_STAT').AsInteger   := _OrdDelOK;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;

    Clear;
    Add('UPDATE  PKINVENTORY.DOC_M           ');
    Add('  SET   DOC_M_STAT = :DOC_M_STAT    ');
    Add('  WHERE DOC_M_SERIAL = :DOC_M_SERIAL');
    ParamByName('DOC_M_SERIAL').AsInteger := FSerial;
    ParamByName('DOC_M_STAT').AsInteger   := _OrdDelConfirm;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;

    Clear;
    Add('INSERT INTO  PKINVENTORY.DOC_D(DOC_M_SERIAL, GDS_CODE,  ');
    Add('                               DOC_M_YEAR, DOC_D_REQQTY)');
    Add('  (SELECT  :DOC_M_SERIAL, GDS_CODE, :DOC_M_YEAR, OFQTY ');
    Add('     FROM  PSSALES.OFFERDTL_T                           ');
    Add('     WHERE OFNUM = :OFNUM)                              ');
    ParamByName('DOC_M_SERIAL').AsInteger:= FSerial;
    ParamByName('DOC_M_YEAR').AsInteger  := System_YY;
    ParamByName('OFNUM').AsString      := FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;
  end;
end;

procedure TFrmESaleProp.DistroyOrdDelv;
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('UPDATE  PKINVENTORY.DOC_M           ');
    Add('  SET   DOC_M_STAT = :DOC_M_STAT    ');
    Add('  WHERE FRM_CODE     = :FRM_CODE    ');
    Add('    AND DOC_M_YEAR   = :DOC_M_YEAR  ');
    Add('    AND DOC_M_STKSER = :DOC_M_STKSER');
    Add('    AND DOC_M_CODE   = :DOC_M_CODE  ');
    ParamByName('DOC_M_STAT').AsInteger  := _OrdDelOK;
    ParamByName('FRM_CODE').AsInteger    := _OrdDelFormcode;
    ParamByName('DOC_M_YEAR').AsInteger  := System_YY;
    ParamByName('DOC_M_STKSER').AsInteger:= _OrdDelStkSerCode;
    ParamByName('DOC_M_CODE').AsInteger := FDM_IntSales.qrEIntOffer.FieldByName('ORD_DELV_NO').AsInteger;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;

    Clear;
    Add('UPDATE  PKINVENTORY.DOC_M           ');
    Add('  SET   DOC_M_STAT = :DOC_M_STAT    ');
    Add('  WHERE FRM_CODE     = :FRM_CODE    ');
    Add('    AND DOC_M_YEAR   = :DOC_M_YEAR  ');
    Add('    AND DOC_M_STKSER = :DOC_M_STKSER');
    Add('    AND DOC_M_CODE   = :DOC_M_CODE  ');
    ParamByName('DOC_M_STAT').AsInteger  := _OrdDelPost;
    ParamByName('FRM_CODE').AsInteger    := _OrdDelFormcode;
    ParamByName('DOC_M_YEAR').AsInteger  := System_YY;
    ParamByName('DOC_M_STKSER').AsInteger:= _OrdDelStkSerCode;
    ParamByName('DOC_M_CODE').AsInteger  := FDM_IntSales.qrEIntOffer.FieldByName('ORD_DELV_NO').AsInteger;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;

    Clear;
    Add('DELETE  PKINVENTORY.DOC_D                                   ');
    Add('  WHERE DOC_M_SERIAL  = (SELECT DOC_M_SERIAL                ');
    Add('                          FROM PKINVENTORY.DOC_M            ');
    Add('                         WHERE FRM_CODE     = :FRM_CODE     ');
    Add('                           AND DOC_M_YEAR   = :DOC_M_YEAR   ');
    Add('                           AND DOC_M_STKSER = :DOC_M_STKSER ');
    Add('                           AND DOC_M_CODE   = :DOC_M_CODE)  ');
    ParamByName('FRM_CODE').AsInteger     := _OrdDelFormcode;
    ParamByName('DOC_M_YEAR').AsInteger   := System_YY;
    ParamByName('DOC_M_STKSER').AsInteger := _OrdDelStkSerCode;
    ParamByName('DOC_M_CODE').AsInteger   := FDM_IntSales.qrEIntOffer.FieldByName('ORD_DELV_NO').AsInteger;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;

    Clear;
    Add('DELETE  PKINVENTORY.DOC_M            ');
    Add('  WHERE FRM_CODE     = :FRM_CODE     ');
    Add('    AND DOC_M_YEAR   = :DOC_M_YEAR   ');
    Add('    AND DOC_M_STKSER = :DOC_M_STKSER ');
    Add('    AND DOC_M_CODE   = :DOC_M_CODE   ');
    ParamByName('FRM_CODE').AsInteger     := _OrdDelFormcode;
    ParamByName('DOC_M_YEAR').AsInteger   := System_YY;
    ParamByName('DOC_M_STKSER').AsInteger := _OrdDelStkSerCode;
    ParamByName('DOC_M_CODE').AsInteger   := FDM_IntSales.qrEIntOffer.FieldByName('ORD_DELV_NO').AsInteger;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;
  end;
end;

function TFrmESaleProp.GetSeqVal: integer;
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Close;
    Clear;
    Add('SELECT INVENTORY.SERNO.NEXTVAL VAL');
    Add('  FROM DUAL                       ');
    Open;
    Result := (FieldByName('VAL').AsInteger) ;
    Close;
  end;
end;

function TFrmESaleProp.DoesHavaleHas: boolean;
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT  COUNT(*) CNT                                          ');
    Add('  FROM  DOC_M                                                 ');
    Add('  WHERE DOC_M_LNSERIAL = (SELECT DOC_M_SERIAL                 ');
    Add('                            FROM PKINVENTORY.DOC_M            ');
    Add('                           WHERE FRM_CODE     = :FRM_CODE     ');
    Add('                             AND DOC_M_YEAR   = :DOC_M_YEAR   ');
    Add('                             AND DOC_M_STKSER = :DOC_M_STKSER ');
    Add('                             AND DOC_M_CODE   = :DOC_M_CODE)  ');
    ParamByName('FRM_CODE').AsInteger    := _OrdDelFormcode;
    ParamByName('DOC_M_YEAR').AsInteger  := System_YY;
    ParamByName('DOC_M_STKSER').AsInteger:= _OrdDelStkSerCode;
    ParamByName('DOC_M_CODE').AsInteger  := FDM_IntSales.qrEIntOffer.FieldByName('ORD_DELV_NO').AsInteger;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result:= (FieldByName('CNT').AsInteger = 0);
    Close;
  end;
end;

function TFrmESaleProp.SelectOrd_Delv_No: integer;
begin
//Comment by Niaz Karbasi on 85-02-03
{  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT CNTNO.NEXTVAL ORD_DELV_NO');
    Add('  FROM DUAL                     ');
    SQL:= MbSqlConvert(SQL);
    Open;
    Result:= FDM_IntSales.qrETemp.FieldByName('ORD_DELV_NO').AsInteger;
    Close;
  end;}
  with FDM_IntSales.qrETemp, SQL do
  begin
    Sql.Clear;
    Sql.Add('SELECT  MAX(DOC_M_CODE) MAXCODE');
    Sql.Add('  FROM  PKINVENTORY.DOC_M      ');
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
end;

procedure TFrmESaleProp.UpdateOrd_Delv_No;
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('UPDATE  PSSALES.OFFERTIT_T         ');
    Add('  SET   ORD_DELV_NO = :ORD_DELV_NO ');
    Add('  WHERE OFNUM = :OFNUM             ');
    ParamByName('ORD_DELV_NO').AsInteger := FDM_IntSales.qrEIntOffer.FieldByName('ORD_DELV_NO').AsInteger;
    ParamByName('OFNUM').AsString        := FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;
  end;
end;

procedure TFrmESaleProp.EmptyOrd_delv_No;
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('UPDATE  PSSALES.OFFERTIT_T  ');
    Add('  SET   ORD_DELV_NO = NULL  ');
    Add('  WHERE OFNUM = :OFNUM      ');
    ParamByName('OFNUM').AsString := FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;
  end;
end;

end.
