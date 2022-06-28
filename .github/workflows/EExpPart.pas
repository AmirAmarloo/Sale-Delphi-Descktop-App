{$I Direct.Inc}
unit EExpPart;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus,DbTables, ppDB, ppDBPipe, ppDBBDE, ppBands, ppClass, ppCtrls,
  ppPrnabl, ppCache, ppRelatv, ppProd, ppReport, ppComm, ppEndUsr, DMUExtSales,
  DMUReport, {$I MbUses.Inc};

type
  TFrmEExpPart = class(TMbForm)
    panButton: TPanel;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    stbMain: TStatusBar;
    Panel1: TPanel;
    dbgrExpPart: TDBGrid;
    BtnPost: TBitBtn;
    BtnDelete: TBitBtn;
    SpdBtnExit: TSpeedButton;
    Panel2: TPanel;
    Label3: TLabel;
    dbedPrjDesc: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    dbedCustName: TDBEdit;
    Label7: TLabel;
    Label10: TLabel;
    dbedCountryName: TDBEdit;
    Label4: TLabel;
    dbedDesc: TDBEdit;
    Label6: TLabel;
    dbedMarket: TDBEdit;
    Label17: TLabel;
    dbedOrdNo: TDBEdit;
    Label18: TLabel;
    dbgrAddSub: TDBGrid;
    Label11: TLabel;
    Label15: TLabel;
    dbedCntCode: TDBEdit;
    dbedRiSrl: TDBEdit;
    Label19: TLabel;
    dbedFactStat: TDBEdit;
    Label20: TLabel;
    dbedShipment: TDBEdit;
    dbedStation: TDBEdit;
    Label21: TLabel;
    Panel3: TPanel;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    dbedCredit: TDBEdit;
    Label9: TLabel;
    dbedFactDate: TDBEdit;
    dbedFDate: TDBEdit;
    edTotCost: TEdit;
    Panel4: TPanel;
    Label1: TLabel;
    sbList: TSpeedButton;
    Label12: TLabel;
    Label2: TLabel;
    dbedFactNo: TDBEdit;
    dbcmbFactKind: TDBComboBox;
    dbcmbFactGrp: TDBComboBox;
    edTotNetCost: TEdit;
    PMen: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    Label16: TLabel;
    dbedFact: TDBEdit;
    edFact: TEdit;
    edInvNo: TEdit;
    Panel5: TPanel;
    Label22: TLabel;
    edNetPrice: TEdit;
    Splitter1: TSplitter;
    btnPrint: TBitBtn;
    ppReportEx: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel55: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText18: TppDBText;
    ppDBText39: TppDBText;
    ppDBText43: TppDBText;
    ppDBText48: TppDBText;
    ppDBText7: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppDBCalc4: TppDBCalc;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppFooterBand2: TppFooterBand;
    Lb1: TppLabel;
    lb2: TppLabel;
    lb3: TppLabel;
    lb4: TppLabel;
    des1: TppLabel;
    val1: TppLabel;
    val2: TppLabel;
    des2: TppLabel;
    lbno1: TppLabel;
    lbno2: TppLabel;
    val3: TppLabel;
    des3: TppLabel;
    lbno3: TppLabel;
    lbno4: TppLabel;
    des4: TppLabel;
    val4: TppLabel;
    tvalex2: TppLabel;
    pplbcalc2: TppLabel;
    ppPageStyle2: TppPageStyle;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLine7: TppLine;
    ppLine29: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine41: TppLine;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppShape3: TppShape;
    ppLabel46: TppLabel;
    ppLabel54: TppLabel;
    ppLabel56: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel101: TppLabel;
    ppLabel107: TppLabel;
    ppLine50: TppLine;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBCalc5: TppDBCalc;
    ppBDEPipelineEx2: TppBDEPipeline;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel67: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBText1: TppDBText;
    ppDBText6: TppDBText;
    ppDBText11: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDesignerEx: TppDesigner;
    bbPreview: TBitBtn;
    bbPrint: TBitBtn;
    spDesign: TSpeedButton;
    ppDBText16: TppDBText;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLine1: TppLine;
    cnt1: TppLabel;
    cnt2: TppLabel;
    cnt3: TppLabel;
    cnt4: TppLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpdBtnExitClick(Sender: TObject);
    procedure sbListClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel4Exit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbgrAddSubColEnter(Sender: TObject);
    procedure dbgrAddSubEditButtonClick(Sender: TObject);
    procedure dbgrAddSubEnter(Sender: TObject);
    procedure dbgrAddSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sbFirstClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure dbgrAddSubExit(Sender: TObject);
    procedure dbedFactChange(Sender: TObject);
    procedure dbedFactNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edFactExit(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure bbPrintClick(Sender: TObject);
    procedure spDesignClick(Sender: TObject);
    procedure ppDBCalc5Calc(Sender: TObject);
    procedure ppFooterBand2BeforePrint(Sender: TObject);
  private
    FCuRial: Double;
    FDM_ExtSales: TDM_ExtSales;
//    FDM_Report: TDM_Report;
    DelFlag, IsLock, ScrollFlag: Boolean;
    FQuery: TQuery;
    FAddGrid: TCuDBGrid;

    procedure FactKindGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure FactKindSetText(Sender: TField; const Text: String);
    procedure FactGrpGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure FactGrpSetText(Sender: TField; const Text: String);
    procedure FactStatGetText(Sender: TField; var Text: String; DisplayText: Boolean);
   procedure CF_MstExpPart(DataSet: TDataSet);
   procedure CF_Report(DataSet: TDataSet);

    procedure CF_DetExpPart(DataSet: TDataSet);
    procedure ShowDetail;
    procedure ShowDetail2;
    procedure   SelectFooter;

    procedure InitAddGrid;
    procedure ADCodeValidate(Sender: TField);
    procedure ADValValidate(Sender: TField);
    procedure AddAfterDelete(DataSet: TDataSet);
    procedure AddOnNewRecord(DataSet: TDataSet);
    procedure AddBeforePost(DataSet: TDataSet);
    procedure AddAfterOpen(DataSet: TDataSet);
    procedure AddAfterScroll(DataSet: TDataSet);
    procedure CF_AddSub(DataSet: TDataSet);
    procedure ShowAddSub;
    function  GetPercentPrice(AdCode: string; APrice: Double): Double;

    function  IsCurrency: Boolean;
    function  CalculateNetCost(const AKind: Integer): Double;
    function  CalcTotCost: Double;
    function  CalcTotNetCost: Double;
    procedure FOnStateChange(Sender: TObject);
    procedure FAddOnStateChange(Sender: TObject);
    procedure DisableFactControls;
    procedure EnableFactControls;
    procedure FUpdateError(DataSet: TDataSet; E: EDatabaseError; UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
  public
    FInvSrl,
    FInvGrp,
    FInvKind: string;
    DbHandle: TMbHandle;
  end;
var
  FrmEExpPart: TFrmEExpPart;

implementation

uses MainUnit, HCustom, HBidVch, HCountry, HProf, HHavaleh, HExpPart,
  HOrdCus, Utility, Vars, Functions, Help, UMessage ,EIntPart;

{$R *.DFM}

procedure TFrmEExpPart.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) And (ActiveControl <> dbgrExpPart) then
  begin
    SelectNext(ActiveControl, True, True);
    Key := #0;
  end;
end;

procedure TFrmEExpPart.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEExpPart.sbListClick(Sender: TObject);
var
  Code: string;
begin
  //commented by eskandari
  //if HelpExpPart(Code, IntToStr(dbcmbFactKind.ItemIndex + 1), IntToStr(dbcmbFactGrp.ItemIndex + 1)) then
  if HelpExpPart(Code, IntToStr(dbcmbFactKind.ItemIndex + 1)) then
  begin
    dbedFactNo.SetFocus;
    with FDM_ExtSales.qrEExpPart do
    begin
      Edit;
      FieldByName('INVSRL').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEExpPart.FormShow(Sender: TObject);
begin
  IsLock:= False;
  DelFlag:= True;
  ScrollFlag:= True;
  SelectEmpty(FDM_ExtSales.qrEExpPart, 'INVOICEPRDT_T');
  SelectEmpty(FDM_ExtSales.qrEExpPartDet, 'INVOICEPRDR_T');
  SelectEmpty(FDM_ExtSales.qrEOffValidity, 'VALIDITY_T');
  FDM_ExtSales.qrEExpPart.Edit;
  FDM_ExtSales.qrEExpPart.FieldByName('INVGRP').AsInteger := _intFPart;
end;

procedure TFrmEExpPart.SpeedButton3Click(Sender: TObject);
begin
 MainForm.acHOrdCus.Execute;
 FrmHOrdCus.ShowModal;
end;

procedure TFrmEExpPart.Edit1Change(Sender: TObject);
begin
//
end;

procedure TFrmEExpPart.BitBtn1Click(Sender: TObject);
begin
  FInvSrl  := FDM_ExtSales.qrEExpPart.FieldByName('INVSRL').AsString;
  FInvGrp  := FDM_ExtSales.qrEExpPart.FieldByName('INVGRP').AsString;
  FInvKind := FDM_ExtSales.qrEExpPart.FieldByName('INVKIND').AsString;
  MainForm.acDHavalehFact.Execute;
end;

procedure TFrmEExpPart.FormCreate(Sender: TObject);
begin
  FDM_ExtSales:= TDM_ExtSales(MbDM.GetDM(FDM));
//  FDM_Report:= TDM_Report(MbDM.GetDM(FDM));
  SetStatusBar(stbMain);
  FQuery:= TQuery.Create(Self);
  FQuery.DataBaseName:= MbDB.DataBaseName[FDB];

  with FDM_ExtSales.qrEExpPart do
  begin
    OnCalcFields:= CF_MstExpPart;
    FieldByName('INVKIND').OnGetText:= FactKindGetText;
    FieldByName('INVKIND').OnSetText:= FactKindSetText;

    FieldByName('INVGRP').OnGetText:= FactGrpGetText;
    FieldByName('INVGRP').OnSetText:= FactGrpSetText;

    FieldByName('INVSTAT').OnGetText:= FactStatGetText;
    OnUpdateError:= FUpdateError;
  end;

  with FDM_ExtSales.dsEExpPart do
  begin
    OnStateChange:= nil;
    OnStateChange:= FOnStateChange;
  end;

  with FDM_ExtSales.qrEExpPartDet do
  begin
    OnCalcFields:= CF_DetExpPart;
    OnUpdateError:= FUpdateError;
  end;

  with FDM_ExtSales.dsEExpPartDet do
  begin
    OnStateChange:= nil;
    OnStateChange:= FOnStateChange;
  end;

  with FDM_ExtSales.qrEOffValidity do
  begin
    OnCalcFields:= CF_AddSub;
    AfterScroll:= AddAfterScroll;
    AfterOpen:= AddAfterOpen;
    AfterDelete:= AddAfterDelete;
    OnNewRecord:= AddOnNewRecord;
    BeforePost:= AddBeforePost;
    FieldByName('ADCODE').OnValidate:= ADCodeValidate;
    FieldByName('ADVAL').OnValidate:= ADValValidate;

    OnUpdateError:= FUpdateError;
  end;
  with FDM_ExtSales.dsEOffValidity do
  begin
    OnStateChange:= nil;
    OnStateChange:= FAddOnStateChange;
  end;
     FDM_ExtSales.qrRExpFact.OnCalcFields:= CF_Report;
  InitAddGrid;
end;

procedure TFrmEExpPart.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MbDB.RollBack(FDB);
  Action:= caFree;
end;

procedure TFrmEExpPart.Panel4Exit(Sender: TObject);
begin
  edTotCost.Text:= '';
  if (dbcmbFactKind.Text = '') then
  begin
    MbError(NotDataComplete);
    dbcmbFactKind.SetFocus;
    Exit;
  end;

  if (dbcmbFactGrp.Text = '') then
  begin
    MbError(NotDataComplete);
    dbcmbFactGrp.SetFocus;
    Exit;
  end;

  if (FDM_ExtSales.qrEExpPart.FieldbyName('INVSRL').AsString = '') then
  begin
    MbError(NotDataComplete);
    dbedFactNo.SetFocus;
    Exit;
  end;

  with FDM_ExtSales.qrEExpPart do
  begin
    //commented by eskandari
    //if not ExistExpFactor(FieldByName('INVKIND').AsString, FieldByName('INVGRP').AsString, FieldByName('INVSRL').AsString) then
    //Added By Eskandari
    if not ExistExpFactor(FieldByName('INVKIND').AsString, FieldByName('INVGRP').AsString, FieldByName('INVSRL').AsString) then
    begin
      MbError(InvalidFactor);
      dbcmbFactKind.SetFocus;
      Exit;
    end;
  end;

  if MbDB.InTransaction[FDB] then
    MbDB.RollBack(FDB);

  MbDB.StartTransaction(FDB);
  IsLock:= False;
  AutoSelect(FDB, FDM_ExtSales.qrEExpPart, 'INVOICEPRDT_T', 3, IsLock);
  ShowDetail;
  ShowAddSub;

  FInvSrl  := FDM_ExtSales.qrEExpPart.FieldByName('INVSRL').AsString;
  FInvGrp  := FDM_ExtSales.qrEExpPart.FieldByName('INVGRP').AsString;
  FInvKind := FDM_ExtSales.qrEExpPart.FieldByName('INVKIND').AsString;

  if not (FDM_ExtSales.qrEExpPart.FieldByName('INVSTAT').Value = _intFSNotConfirmed) then
    DisableFactControls
  else
    EnableFactControls;
end;

procedure TFrmEExpPart.FactGrpGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intFPart   : Text:= _stFPart;
    _intFProd   : Text:= _stFProd;
  end;
end;

procedure TFrmEExpPart.FactGrpSetText(Sender: TField; const Text: String);
begin
  if Text = _stFPart then
    Sender.AsInteger:= _intFPart;

  if Text = _stFProd then
    Sender.AsInteger:= _intFProd;
end;

procedure TFrmEExpPart.FactKindGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intFKSale   : Text:= _stFKSale;
    _intFKReturn : Text:= _stFKReturn;
  end;
end;

procedure TFrmEExpPart.FactKindSetText(Sender: TField; const Text: String);
begin
  if Text = _stFKSale then
    Sender.AsInteger:= _intFKSale;

  if Text = _stFKReturn then
    Sender.AsInteger:= _intFKReturn;
end;

procedure TFrmEExpPart.FactStatGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intFSNotConfirmed : Text:= _stFSNotConfirmed;
    _intFSConfirmed    : Text:= _stFSConfirmed;
    _intFSRevoke       : Text:= _stFSRevoke;
  end;
end;

procedure TFrmEExpPart.CF_MstExpPart(DataSet: TDataSet);
begin
  if (DataSet.FieldByName('INVKIND').AsString = '') or
     (DataSet.FieldByName('INVGRP').AsString = '') or
     (DataSet.FieldByName('INVSRL').AsString = '') then Exit;

  with FDM_ExtSales.qrETemp, SQL do
  begin
    if not (DataSet.FieldByName('CNTCODE').Value = Null) then
    begin
      Clear;
      Add('SELECT PR.PRJDESC, IDC.CUSTNAME,          ');
      Add('       ID.CNTDTE FDATE, C.COUNTRY_NAME    ');
      Add('  FROM PSSALES.IDCONTACT_T ID,            ');
      //Commented By Eskandari
      //Add('       PSSALES.PROFORMAT_T P,         ');
      Add('       PSSALES.PROJECT_T PR,              ');
      Add('       PSSALES.IDCUSTOMER_T IDC,          ');
      Add('       PSSALES.COUNTRY C                  ');
      Add(' WHERE ID.CNTCODE = :CNTCODE              ');
      //Commented By Eskandari
      //Add('   AND P.PRFNUM   = ID.PRFNUM         ');
      Add('   AND PR.PRJCODE      = ID.PRJCODE       ');
      Add('   AND IDC.CUSTNO      = ID.CUSTNO        ');
      Add('   AND C.COUNTERY_CODE = IDC.COUNTERY_CODE');
      ParamByName('CNTCODE').AsString:= DataSet.FieldByName('CNTCODE').AsString;
    end
    else
    begin
      Clear;
      Add('SELECT O.ORDDATE FDATE, ID.CUSTNAME,     ');
      Add('       PR.PRJDESC, C.COUNTRY_NAME        ');
      Add('  FROM PSSALES.ORDERTIT_T O,             ');
      Add('       PSSALES.PROFORMAT_T P,            ');
      Add('       PSSALES.IDCUSTOMER_T ID,          ');
      Add('       PSSALES.PROJECT_T PR,             ');
      Add('       PSSALES.COUNTRY C                 ');
      Add(' WHERE O.ORDNO         = :ORDNO          ');
      Add('   AND O.PRFNUM        = P.PRFNUM        ');
      Add('   AND ID.CUSTNO       = P.CUSTNO        ');
      Add('   AND PR.PRJCODE      = P.PRJCODE       ');
      Add('   AND C.COUNTERY_CODE = ID.COUNTERY_CODE');
      ParamByName('ORDNO').AsString:= DataSet.FieldByName('ORDNO').AsString;
    end;
    SQL:= MbSqlConvert(SQL);
    Open;

    DataSet.FieldByName('COUNTRY_NAME').AsString:= FieldByName('COUNTRY_NAME').AsString;
    DataSet.FieldByName('PRJDESC').AsString:= FieldByName('PRJDESC').AsString;
    DataSet.FieldByName('CUSTNAME').AsString:= FieldByName('CUSTNAME').AsString;
    DataSet.FieldByName('FDATE').AsString:= FieldByName('FDATE').AsString;
  end;
end;

procedure TFrmEExpPart.FormDestroy(Sender: TObject);
begin
  FQuery.Free;
end;

procedure TFrmEExpPart.ShowDetail;
begin
  FDM_ExtSales.qrEExpPartDet.DisableControls;
  try
    with FDM_ExtSales.qrEExpPartDet, SQL do
    begin
      Clear;
      Add('SELECT *');
      Add('FROM PSSALES.INVOICEPRDR_T');
      Add('WHERE');
      Add('     INVSRL  = :INVSRL');
      Add('AND  INVGRP  = :INVGRP');
      Add('AND  INVKIND = :INVKIND');
      Add('ORDER BY INVROW');
      ParamByName('INVSRL').AsString:= FDM_ExtSales.qrEExpPart.FieldByName('INVSRL').AsString;
      ParamByName('INVGRP').AsString:= FDM_ExtSales.qrEExpPart.FieldByName('INVGRP').AsString;
      ParamByName('INVKIND').AsString:= FDM_ExtSales.qrEExpPart.FieldByName('INVKIND').AsString;
      SQL:= MbSqlConvert(SQL);
      Open;
    end;
  finally
    FDM_ExtSales.qrEExpPartDet.First;
    FDM_ExtSales.qrEExpPartDet.EnableControls;
  end;

  with FDM_ExtSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT CU_RIAL');
    Add('FROM PSSALES.ARZ');
    Add('WHERE');
    Add('     CU_CODE  = :CU_CODE');
    ParamByName('CU_CODE').AsString:= FDM_ExtSales.qrEExpPartDet.FieldByName('CU_CODE').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;
    FCuRial:= FieldByName('CU_RIAL').AsFloat;
    Close;
  end;

  edTotCost.Text:= Trim(Format('%20.2n', [CalcTotCost * 1.0]));
end;

procedure TFrmEExpPart.ShowAddSub;
begin
  FDM_ExtSales.qrEOffValidity.DisableControls;
  try
    with FDM_ExtSales.qrEOffValidity, SQL do
    begin
      Clear;
      Add('SELECT   *                 ');
      Add('  FROM   PSSALES.VALIDITY_T');
      Add(' WHERE   ADNUM4 = :ADNUM4  ');
      Add('ORDER BY ADCODE            ');
      ParamByName('ADNUM4').AsString:= FDM_ExtSales.qrEExpPart.FieldByName('INVKIND').AsString +
                                       FDM_ExtSales.qrEExpPart.FieldByName('INVGRP').AsString +
                                       FDM_ExtSales.qrEExpPart.FieldByName('INVSRL').AsString;
      SQL:= MbSqlConvert(SQL);
      Open;
    end;
  finally
    FDM_ExtSales.qrEOffValidity.First;
    FDM_ExtSales.qrEOffValidity.EnableControls;
  end;

  ScrollFlag:= True;
//  edTotNetCost.Text:= Trim(Format('%20.2n', [CalcTotNetCost * 1.0]));
end;

procedure TFrmEExpPart.CF_DetExpPart(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByName('GDS_DESCL').AsString:= FindGdsLDesc(FieldByName('GDS_CODE').AsString);
    FieldByName('CU_NAME').AsString:= FindArzName(FieldByName('CU_CODE').AsString);

    FieldByName('TOTCOST').AsFloat:= FieldByName('INVQTY').AsFloat * FieldByName('INVPRICE').AsFloat;
  end;
end;

procedure TFrmEExpPart.ADCodeValidate(Sender: TField);
var
  Temp: string;
  D: Double;
begin
  if not (Sender.AsString = '') then
  begin
    if (Sender.AsFloat > 999) or (Sender.AsFloat < 0) then
    begin
      MbError(RangeErr);
      Abort;
    end;

    if not (ExistAddCode(Sender.AsString)) then
    begin
      MbError(InvalidAddSub);
      Abort;
    end;

    with FDM_ExtSales.qrEOffValidity do
    begin
      FieldByName('ADVAL').AsString:= '';
      Temp:= FindAddPrice(Sender.AsString, StrToFloatDef(StringReplace(edTotCost.Text, ',', '', [rfReplaceAll]), 0));
      if not IsCurrency then
      begin
        if not (Temp = '') then
        begin
          D:= StrToFloatDef(Temp , 0);
          FieldByName('ADVAL').AsFloat:= D;
        end;
      end
      else
        FieldByName('ADVAL').AsString:= Temp;
    end;
  end;
end;

procedure TFrmEExpPart.AddAfterDelete(DataSet: TDataSet);
begin
  btnPost.Enabled:= True and MabnaInfo.HasAccess(btnPost.Tag);
end;

procedure TFrmEExpPart.AddBeforePost(DataSet: TDataSet);
var
  Temp: Double;
begin
  with DataSet do
  begin
    if FieldByName('ADCODE').Value = Null then
    begin
      MbError(NotDataComplete);
      dbgrAddSub.SetFocus;
      dbgrAddSub.SelectedIndex:= 0;
      Abort;
    end;

    if (FieldByName('ADVAL').AsString = '') then
    begin
      MbError(NotDataComplete);
      dbgrAddSub.SetFocus;
      dbgrAddSub.SelectedIndex:= 4;
      Abort;
    end;
  end;
{    if FieldByName('ADKIND').AsString = _stPercent then
    begin
      Temp:= GetPercentPrice(FieldByName('ADCODE').AsString,
                             StrToFloat(StringReplace(edTotCost.Text, ',' , '' ,[rfReplaceAll])));
      if not (Trunc(FieldByName('ADVAL').AsFloat) - Trunc(Temp) = 0) then
      begin
        MbError('ÇãßÇä ÊÛííÑ ãÈáÛ æÌæÏ äÏÇÑÏ');
        dbgrAddSub.SetFocus;
        dbgrAddSub.SelectedIndex:= 4;
        Edit;
        FieldByName('ADVAL').AsFloat:= Temp;
        Abort;
      end;
    end;
  end;

  with FDM_ExtSales.qrEOffValidity do
  begin
    Edit;
    FieldByName('ADNUM4').AsString:= FDM_ExtSales.qrEExpPart.FieldByName('INVKIND').AsString +
                                     FDM_ExtSales.qrEExpPart.FieldByName('INVGRP').AsString +
                                     FDM_ExtSales.qrEExpPart.FieldByName('INVSRL').AsString;
    FieldByName('ADARZVAL').AsFloat:= FCuRial * FieldByName('ADVAL').AsFloat;
  end;}
end;

procedure TFrmEExpPart.AddOnNewRecord(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByName('ADNUM1').AsString:= '0';
    FieldByName('ADNUM2').AsString:= '0';
    FieldByName('ADNUM3').AsString:= '0';
    FieldByName('ADNUM4').AsString:= FDM_ExtSales.qrEExpPart.FieldByName('INVKIND').AsString +
                                     FDM_ExtSales.qrEExpPart.FieldByName('INVGRP').AsString +
                                     FDM_ExtSales.qrEExpPart.FieldByName('INVSRL').AsString;
    FieldByName('ADNUM5').AsString:= '0';
  end;
end;

procedure TFrmEExpPart.ADValValidate(Sender: TField);
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

procedure TFrmEExpPart.CF_AddSub(DataSet: TDataSet);
begin
  if FAddGrid.CanCalculate then
  begin
    with DataSet do
    begin
      FieldByName('ADDDESC').AsString:= FindAddLName(FieldByName('ADCODE').AsString);
      FieldByName('ADDTYPE').AsString:= FindAddType(FieldByName('ADCODE').AsString);
      FieldByName('ADKIND').AsString:= FindAddKind(FieldByName('ADCODE').AsString);
    end;
  end;
end;

function TFrmEExpPart.GetPercentPrice(AdCode: string;
  APrice: Double): Double;
begin
  with FDM_ExtSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT VALDEF');
    Add('FROM PSSALES.ADDSUB_T');
    Add('WHERE');
    Add('     ADCODE = :ADCODE');
    ParamByName('ADCODE').AsString:= AdCode;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result:= (FieldByName('VALDEF').AsFloat / 100) * APrice;
    Close;
  end;
end;

function TFrmEExpPart.CalcTotCost: Double;
var
  BM: TBookMark;
  Temp: Double;
begin
  Temp:= 0;
  BM:= FDM_ExtSales.qrEExpPartDet.GetBookMark;
  FDM_ExtSales.qrEExpPartDet.DisableControls;
  try
    with FDM_ExtSales.qrEExpPartDet do
    begin
      First;
      while not EOF do
      begin
        Temp:= Temp + FieldByName('TOTCOST').AsFloat;

        Next;
      end;
    end;
  finally
    if not (BM = nil) then
      FDM_ExtSales.qrEExpPartDet.GotoBookMark(BM);

    FDM_ExtSales.qrEExpPartDet.FreeBookMark(BM);
    FDM_ExtSales.qrEExpPartDet.EnableControls;
  end;

  Result:= Temp;
end;

function TFrmEExpPart.CalcTotNetCost: Double;
var
  BM: TBookMark;
  FAdd,
  FSub: Double;
  FAddBeforeScroll,
  FAddBeforeDelete,
  FAddAfterDelete,
  FAddOnNewRecord,
  FAddBeforePost,
  FAddAfterPost: TDataSetNotifyEvent;
begin
  with FDM_ExtSales.qrEOffValidity do
  begin
    FAddBeforeScroll := BeforeScroll;
    FAddBeforeDelete := BeforeDelete;
    FAddAfterDelete  := AfterDelete;
    FAddOnNewRecord  := OnNewRecord;
    FAddBeforePost   := BeforePost;
    FAddAfterPost    := AfterPost;

    BeforeScroll := nil;
    BeforeDelete := nil;
    AfterDelete  := nil;
    OnNewRecord  := nil;
    BeforePost   := nil;
    AfterPost    := nil;
  end;

//  if not ScrollFlag then Exit;
  FAdd:= 0;
  FSub:= 0;
  BM:= FDM_ExtSales.qrEOffValidity.GetBookMark;
  FDM_ExtSales.qrEOffValidity.DisableControls;
  try
    with FDM_ExtSales.qrEOffValidity do
    begin
      First;
      while not EOF do
      begin
        if FieldByName('ADDTYPE').AsString = _stAdd then
          FAdd:= FAdd + FieldByName('ADVAL').AsFloat
        else
        if FieldByName('ADDTYPE').AsString = _stSub then
          FSub:= FSub + FieldByName('ADVAL').AsFloat;

        Next;
      end;
    end;
  finally

    if not (BM = nil) then
      FDM_ExtSales.qrEOffValidity.GotoBookMark(BM);

    FDM_ExtSales.qrEOffValidity.FreeBookMark(BM);
    FDM_ExtSales.qrEOffValidity.EnableControls;

    with FDM_ExtSales.qrEOffValidity do
    begin
      BeforeScroll := FAddBeforeScroll;
      BeforeDelete := FAddBeforeDelete;
      AfterDelete  := FAddAfterDelete;
      OnNewRecord  := FAddOnNewRecord;
      BeforePost   := FAddBeforePost;
      AfterPost    := FAddAfterPost;
    end;
  end;

  Result:= StrToFloat(StringReplace(edTotCost.Text, ',' , '' ,[rfReplaceAll]))
           + FAdd - FSub;
end;

procedure TFrmEExpPart.FAddOnStateChange(Sender: TObject);
begin
  with FDM_ExtSales do
    G_StateChange([qrEOffValidity, qrEOffValidity], btnPost, btnDelete, BtnPrint);
end;

procedure TFrmEExpPart.FOnStateChange(Sender: TObject);
begin
  with FDM_ExtSales do
    G_StateChange([qrEExpPart, qrEExpPartDet], btnPost, btnDelete, btnPrint);
end;

procedure TFrmEExpPart.dbgrAddSubColEnter(Sender: TObject);
begin
  with FDM_ExtSales.qrEOffValidity do
  begin
    if (dbgrAddSub.SelectedField = FieldByName('ADDDESC')) or
       (dbgrAddSub.SelectedField = FieldByName('ADDTYPE')) then
      dbgrAddSub.SelectedField:= FieldByName('ADVAL');

    if dbgrAddSub.SelectedField = FieldByName('ADKIND') then
      dbgrAddSub.SelectedField:= FieldByName('ADCODE');

    if dbgrAddSub.SelectedField = FieldByName('ADVAL') then
      if (FieldByName('ADKIND').AsString = _stPercent)  then
        dbgrAddSub.SelectedIndex:= dbgrAddSub.SelectedIndex - 1;
  end;
end;

procedure TFrmEExpPart.dbgrAddSubEditButtonClick(Sender: TObject);
var
  Code: string;
begin
  if TQuery(dbgrAddSub.DataSource.DataSet).CachedUpdates = False then Exit;

  if dbgrAddSub.SelectedField.FieldName = 'ADCODE' then
  begin
    if HelpKasr(Code) then
    begin
      with FDM_ExtSales.qrEOffValidity do
      begin
        Edit;
        FieldByName('ADCODE').AsString:= Code;
      end;

      dbgrAddSub.SelectedIndex:= 4;
      Exit;
    end;
  end;
end;

procedure TFrmEExpPart.dbgrAddSubEnter(Sender: TObject);
begin
  if TQuery(dbgrAddSub.DataSource.DataSet).CachedUpdates = False then Exit;

  if (Sender as TDBGrid).DataSource.DataSet.IsEmpty then
    (Sender as TDBGrid).DataSource.DataSet.Insert;
end;

procedure TFrmEExpPart.dbgrAddSubKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    dbgrAddSubEditButtonClick(nil);
end;

procedure TFrmEExpPart.DisableFactControls;
begin
  dbedShipment.Enabled:= False;
  dbedMarket.Enabled:= False;
  dbedCredit.Enabled:= False;
  dbedStation.Enabled:= False;
  dbedDesc.Enabled:= False;

  TQuery(dbgrAddSub.DataSource.DataSet).CachedUpdates:= False;

  btnPost.Enabled:= False;
  btnDelete.Enabled:= False;
end;

procedure TFrmEExpPart.EnableFactControls;
begin
  dbedShipment.Enabled:= True;
  dbedMarket.Enabled:= True;
  dbedCredit.Enabled:= True;
  dbedStation.Enabled:= True;
  dbedDesc.Enabled:= True;

  TQuery(dbgrAddSub.DataSource.DataSet).CachedUpdates:= True;

  BtnPost.Enabled := (MabnaInfo.HasAccess(BtnPost.Tag));
//  btnPost.Enabled:= True;
  btnDelete.Enabled := (MabnaInfo.HasAccess(btnDelete.Tag));
//  btnDelete.Enabled:= True;
end;

procedure TFrmEExpPart.BtnPostClick(Sender: TObject);
var
  Temp, TmpStr, InvNumStr: string;
begin
  if not (FDM_ExtSales.qrEExpPart.FieldByName('INVSTAT').Value = _intFSNotConfirmed) then
  begin
    MbError(CannotModify);
    Exit;
  end;

  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    InvNumStr:= FDM_ExtSales.qrEExpPart.FieldByName('INVNUM').AsString;
    Delete(InvNumStr, 1, 2);
    InvNumStr:= edFact.Text + InvNumStr;

    with FDM_ExtSales.qrEExpPart do
    begin
      Edit;
      FieldByName('INVNUM').AsString:= InvNumStr;
      ApplyUpdates;
    end;

    //AddSub
    with FDM_ExtSales.qrEOffValidity do
    begin
{      Edit;
      FieldByName('ADNUM4').AsString:= FDM_ExtSales.qrEExpPart.FieldByName('INVKIND').AsString +
                                       FDM_ExtSales.qrEExpPart.FieldByName('INVGRP').AsString +
                                       FDM_ExtSales.qrEExpPart.FieldByName('INVSRL').AsString;
}
      CalculateNetCost(_OnSave);
      ApplyUpdates;
    end;
    //----------------

    MbDB.Commit(FDB);

    SelectEmpty(FDM_ExtSales.qrEExpPart, 'INVOICEPRDT_T');
    SelectEmpty(FDM_ExtSales.qrEExpPartDet, 'INVOICEPRDR_T');
    SelectEmpty(FDM_ExtSales.qrEOffValidity, 'VALIDITY_T');
    dbcmbFactKind.SetFocus;
    edTotCost.Text:= '';
    edTotNetCost.Text:= '';

    btnPost.Enabled:= False;
    edNetPrice.Text:= '';
  except
    MbDB.RollBack(FDB);
  end;
end;

procedure TFrmEExpPart.BtnDeleteClick(Sender: TObject);
var
  FQuery: TQuery;
  InvSrl,
  InvKind,
  InvGrp: string;
begin
  if not (FDM_ExtSales.qrEExpPart.FieldByName('INVSTAT').Value = _intFSNotConfirmed) then
  begin
    MbError(CannotModify);
    Exit;
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

    InvSrl  := FDM_ExtSales.qrEExpPart.FieldByName('INVSRL').AsString;
    InvGrp  := FDM_ExtSales.qrEExpPart.FieldByName('INVGRP').AsString;
    InvKind := FDM_ExtSales.qrEExpPart.FieldByName('INVKIND').AsString;

    FQuery:= TQuery.Create(Self);
    try
      FQuery.DataBaseName:= MbDB.DataBaseName[FDB];
      try
        with FQuery, SQL do
        begin
          Clear;
          Add('DELETE FROM PSSALES.INVOICEPRDR_T');
          Add('WHERE');
          Add('     INVSRL  = :INVSRL');
          Add('AND  INVKIND = :INVKIND');
          Add('AND  INVGRP  = :INVGRP');
          ParamByName('INVSRL').AsString:= InvSrl;
          ParamByName('INVKIND').AsString:= InvKind;
          ParamByName('INVGRP').AsInteger:= _intFPart;//InvGrp;
          SQL:= MbSqlConvert(SQL);
          ExecSql;

          Clear;
          Add('DELETE PSSALES.OUTFACTHVL_T');
          Add(' WHERE INVSRL  = :INVSRL   ');
          Add('   AND INVKIND = :INVKIND  ');
          Add('   AND INVGRP  = :INVGRP   ');
          ParamByName('INVSRL').AsString:= InvSrl;
          ParamByName('INVKIND').AsString:= InvKind;
          ParamByName('INVGRP').AsInteger:= _intFPart;//InvGrp;
          SQL:= MbSqlConvert(SQL);
          ExecSql;

          Clear;
          Add('DELETE PSSALES.VALIDITY_T');
          Add(' WHERE ADNUM4 = :ADNUM4  ');
          ParamByName('ADNUM4').AsString:= FDM_ExtSales.qrEExpPart.FieldByName('INVKIND').AsString +
                                           FDM_ExtSales.qrEExpPart.FieldByName('INVGRP').AsString +
                                           FDM_ExtSales.qrEExpPart.FieldByName('INVSRL').AsString;
          SQL:= MbSqlConvert(SQL);
          ExecSql;

          Clear;
          Add('DELETE PSSALES.INVOICEPRDT_T');
          Add(' WHERE INVSRL  = :INVSRL    ');
          Add('   AND INVKIND = :INVKIND   ');
          Add('   AND INVGRP  = :INVGRP    ');
          ParamByName('INVSRL').AsString:= InvSrl;
          ParamByName('INVKIND').AsString:= InvKind;
          ParamByName('INVGRP').AsInteger:= _intFPart;//InvGrp;
          SQL:= MbSqlConvert(SQL);
          ExecSql;
        end;

        MbDB.Commit(FDB);

        SelectEmpty(FDM_ExtSales.qrEExpPart, 'INVOICEPRDT_T');
        SelectEmpty(FDM_ExtSales.qrEExpPartDet, 'INVOICEPRDR_T');
        SelectEmpty(FDM_ExtSales.qrEOffValidity, 'VALIDITY_T');
        dbcmbFactKind.SetFocus;
        edTotCost.Text:= '';
        edTotNetCost.Text:= '';
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

procedure TFrmEExpPart.MenuItem1Click(Sender: TObject);
begin
  FDM_ExtSales.qrEOffValidity.Insert;
end;

procedure TFrmEExpPart.MenuItem2Click(Sender: TObject);
begin
  FDM_ExtSales.qrEOffValidity.Delete;
end;

procedure TFrmEExpPart.sbLastClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_ExtSales.qrEExpPart.DisableControls;
  try
    with FDM_ExtSales do
    begin
      if not CheckChanges(qrEExpPart, qrEOffValidity, FDM) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEExpPart, 'INVOICEPRDT_T', 3, Ord(_Last), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_ExtSales.qrEExpPart.EnableControls;
  end;

  ShowDetail;
  ShowAddSub;
  if not (FDM_ExtSales.qrEExpPart.FieldByName('INVSTAT').Value = _intFSNotConfirmed) then
    DisableFactControls
  else
    EnableFactControls;
end;

procedure TFrmEExpPart.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= CheckChanges(FDM_ExtSales.qrEExpPart, FDM_ExtSales.qrEOffValidity, FDM);
end;

procedure TFrmEExpPart.sbFirstClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_ExtSales.qrEExpPart.DisableControls;
  try
    with FDM_ExtSales do
    begin
      if not CheckChanges(qrEExpPart, qrEOffValidity, FDM) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEExpPart, 'INVOICEPRDT_T', 3, Ord(_First), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_ExtSales.qrEExpPart.EnableControls;
  end;

  ShowDetail;
  ShowAddSub;
  if not (FDM_ExtSales.qrEExpPart.FieldByName('INVSTAT').Value = _intFSNotConfirmed) then
    DisableFactControls
  else
    EnableFactControls;
end;

procedure TFrmEExpPart.sbNextClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_ExtSales.qrEExpPart.DisableControls;
  try
    with FDM_ExtSales do
    begin
      if not CheckChanges(qrEExpPart, qrEOffValidity, FDM) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEExpPart, 'INVOICEPRDT_T', 3, Ord(_Next), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_ExtSales.qrEExpPart.EnableControls;
  end;

  ShowDetail;
  ShowAddSub;
  if not (FDM_ExtSales.qrEExpPart.FieldByName('INVSTAT').Value = _intFSNotConfirmed) then
    DisableFactControls
  else
    EnableFactControls;
end;

procedure TFrmEExpPart.sbPrevClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_ExtSales.qrEExpPart.DisableControls;
  try
    with FDM_ExtSales do
    begin
      if not CheckChanges(qrEExpPart, qrEOffValidity, FDM) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEExpPart, 'INVOICEPRDT_T', 3, Ord(_Prev), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_ExtSales.qrEExpPart.EnableControls;
  end;

  ShowDetail;
  ShowAddSub;
  if not (FDM_ExtSales.qrEExpPart.FieldByName('INVSTAT').Value = _intFSNotConfirmed) then
    DisableFactControls
  else
    EnableFactControls;
end;

procedure TFrmEExpPart.dbgrAddSubExit(Sender: TObject);
begin
  if not (dbgrAddSub.DataSource.DataSet.IsEmpty) then
  begin
    dbgrAddSub.DataSource.DataSet.Edit;
    dbgrAddSub.DataSource.DataSet.Post;
  end;
end;

procedure TFrmEExpPart.dbedFactChange(Sender: TObject);
var
  Temp: string;
begin
  Temp:= FDM_ExtSales.qrEExpPart.FieldByName('INVNUM').AsString;
  edFact.Text:= Copy(Temp, 1, 4);
  edInvNo.Text:= Copy(Temp, 3, Length(Temp));
end;

procedure TFrmEExpPart.FUpdateError(DataSet: TDataSet; E: EDatabaseError;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
  MbError(ExpHandleM(E));
  Abort;
end;

procedure TFrmEExpPart.dbedFactNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    sbList.Click;
end;

procedure TFrmEExpPart.InitAddGrid;
begin
  FAddGrid:= TCuDBGrid.Create(Self, dbgrAddSub, '', True, True, False);
  FAddGrid.SetRowDuplicate(['ADCODE']);
end;

procedure TFrmEExpPart.AddAfterOpen(DataSet: TDataSet);
begin
//  edNetPrice.Text:= Format('%.n', [CalculateNetCost(_OnOpen)]);
  edNetPrice.Text:= FloatToStr(CalculateNetCost(_OnOpen));
end;

procedure TFrmEExpPart.AddAfterScroll(DataSet: TDataSet);
begin
  with DataSet do
  begin
    if dbgrAddSub.SelectedField = FieldByName('ADVAL') then
      if (FieldByName('ADKIND').AsString = _stPercent) then
        dbgrAddSub.SelectedIndex:= dbgrAddSub.SelectedIndex - 1;
  end;
end;

function TFrmEExpPart.CalculateNetCost(const AKind: Integer): Double;
var
  BM: TBookMark;
  iAfterScroll,
  iBeforePost: TDataSetNotifyEvent;
  Temp, Debate, KasrVal: Double;
begin
  BM:= FDM_ExtSales.qrEOffValidity.GetBookMark;
  iAfterScroll:= FDM_ExtSales.qrEOffValidity.AfterScroll;
  iBeforePost:= FDM_ExtSales.qrEOffValidity.BeforePost;

  FDM_ExtSales.qrEOffValidity.AfterScroll:= nil;
  FDM_ExtSales.qrEOffValidity.BeforePost:= nil;
  FDM_ExtSales.qrEOffValidity.DisableControls;
  try
    with FDM_ExtSales.qrEOffValidity do
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

//        Debate:= SeqControlRes.GetSum('TOTCOST') - KasrVal;
        Debate:= StrToFloatDef(StringReplace(edTotCost.Text, ',', '', [rfReplaceAll]), 0) - KasrVal;

        First;
        while not Eof do
        begin
          Edit;

          FieldByName('ADNUM4').AsString:= FDM_ExtSales.qrEExpPart.FieldByName('INVKIND').AsString +
                                           FDM_ExtSales.qrEExpPart.FieldByName('INVGRP').AsString +
                                           FDM_ExtSales.qrEExpPart.FieldByName('INVSRL').AsString;

          if FieldByName('ADKIND').AsString = _stPercent then
            FieldByName('ADVAL').AsFloat:= GetPercentPrice(FieldByName('ADCODE').AsString, StrToFloatDef(StringReplace(edTotCost.Text, ',', '', [rfReplaceAll]), 0));

          FieldByName('ADARZVAL').AsFloat:= ROUND(FCuRial * FieldByName('ADVAL').AsFloat);

          Next;
        end;

        Result:= -1;
      end;

      if AKind = _OnOpen then
      begin
        if edTotCost.Text = '' then
          Exit;

        Temp:= StrToFloatDef(StringReplace(edTotCost.Text, ',', '', [rfReplaceAll]), 0);
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
    if FDM_ExtSales.qrEOffValidity.State in dsEditModes then
      FDM_ExtSales.qrEOffValidity.Post;

    FDM_ExtSales.qrEOffValidity.GotoBookMark(BM);
    if not (BM = nil) then
      FDM_ExtSales.qrEOffValidity.FreeBookMark(BM);

    FDM_ExtSales.qrEOffValidity.AfterScroll:= iAfterScroll;
    FDM_ExtSales.qrEOffValidity.BeforePost:= iBeforePost;
    FDM_ExtSales.qrEOffValidity.EnableControls;
  end;
end;

function TFrmEExpPart.IsCurrency: Boolean;
begin
  Result:= not (FDM_ExtSales.qrEExpPartDet.FieldByName('CU_CODE').AsString = '');
end;

procedure TFrmEExpPart.edFactExit(Sender: TObject);
begin
  if not (TEdit(Sender).Text = '') then
    if Length(TEdit(Sender).Text) < 2 then
    begin
      MbError(NoCompInd);
      TEdit(Sender).SetFocus;
      Exit;
    end;
end;

procedure TFrmEExpPart.btnPrintClick(Sender: TObject);
begin
  {if FDM_ExtSales.qrEExpPart.FieldByName('INVSTAT').AsInteger =_intFSConfirmed then
    MainForm.acPPrintFactor.Execute
  else
  begin
    MbError(CannotPrint);
    Exit;
  end;}
end;

procedure TFrmEExpPart.bbPreviewClick(Sender: TObject);
begin
  if FDM_ExtSales.qrEExpPart.FieldByName('INVSTAT').AsInteger =_intFSConfirmed then
  begin
    ShowDetail2;
    with FDM_ExtSales.qrRExpFact do
    begin
      if IsEmpty then
      begin
        MbPrompt(NoReport);
        Exit;
      end;
      if FileExists(ReportPath+'REX.RTM') then
      begin
        ppReportex.Template.FileName:= ReportPath+'REX.RTM';
        ppReportex.SaveAsTemplate:= True;
        ppReportex.Template.LoadFromFile;
      end;
      if Sender = bbPreview then
        ppReportex.DeviceType := 'Screen'
      else
        ppReportex.DeviceType := 'Printer';

      ppReportex.Print;
    end;
  end
  else
  begin
    MbError(CannotPrint);
    Exit;
  end;
end;

procedure TFrmEExpPart.bbPrintClick(Sender: TObject);
begin
 // ShowReport(bbPrint);
end;

procedure TFrmEExpPart.spDesignClick(Sender: TObject);
begin
  ppDesignerEx.Report.Template.FileName:= ReportPath+'REX.RTM';
  if FileExists(ReportPath+'REX.RTM') then
  begin
    ppDesignerEx.Report.SaveAsTemplate:= True;
    ppDesignerEx.Report.Template.LoadFromFile;
  end;
  ppDesignerEx.ShowModal;
end;

procedure TFrmEExpPart.ShowDetail2;
begin
 // FDM_Report.qrRprintfactex.DisableControls;
  //try
    with FDM_ExtSales.qrRExpFact, SQL do
    begin
      Clear;
      ADD('SELECT  DISTINCT IT.INVSRL, IT.INVKIND, IT.INVGRP, IT.INVROW,                   ');
      ADD('        IT.GDS_CODE, IT.INVQTY, C.COUNTRY_NAME, I.CUSTADD, I.CUSTNAME, I1.ORDNO,');
      ADD('        I1.INVZONE, I1.INVSHPMNT, I1.INVLCNO, I1.INVDESC, I1.CNTCODE, I2.CNTDTE,');
      ADD('        O.ORDDATE, I1.INVNUM, I1.INVDTE, IT.INVPRICE,IT.CU_CODE                 ');
      if FDM_ExtSales.qrEOffValidity.FieldByName('ADCODE').AsString<>'' then
        ADD('  ,V.ADCODE,V.ADVAL  ')
      else
        ADD('  ,0  ADCODE, 0 ADVAL');
      ADD('FROM  COUNTRY C, IDCUSTOMER_T I, ORDERTIT_T O, INVOICEPRDR_T IT,');
      ADD('      INVOICEPRDT_T I1, IDCONTACT_T I2');
      IF DBEDORDNO.TEXT <>'' THEN
      ADD ('  , ORDERDTL_T OV');
      if FDM_ExtSales.qrEOffValidity.FieldByName('ADCODE').AsString<>'' then
        ADD(',VALIDITY_T V');
      ADD('WHERE O.ORDNO (+) = I1.ORDNO  ');
      ADD('  AND I1.INVSRL   = IT.INVSRL ');
      ADD('  AND I1.INVKIND  = IT.INVKIND');
      ADD('  AND I1.INVGRP   = IT.INVGRP ');
      IF DBEDCNTCODE.TEXT <>'' THEN
        ADD('AND I.CUSTNO (+) = I2.CUSTNO');
      ADD('AND C.COUNTERY_CODE (+) = I.COUNTERY_CODE');
      ADD('AND I2.CNTCODE (+) = I1.CNTCODE');
      IF DBEDORDNO.TEXT <>'' THEN
      BEGIN
        ADD('AND I.CUSTNO (+) = O.CUSTNO  ');
        ADD('AND OV.GDS_CODE = IT.GDS_CODE');
        ADD('AND OV.ORDNO = O.ORDNO       ');
      END;
      ADD('AND  IT.INVSRL  = :INVSRL');
      ADD('AND  IT.INVGRP  = :INVGRP');
      ADD('AND  IT.INVKIND = :INVKIND ');
      if FDM_ExtSales.qrEOffValidity.FieldByName('ADCODE').AsString<>'' then
      begin
        ADD('AND V.ADCODE = :ADDCODE');
        ADD('AND V.ADVAL  = :ADVAL  ');
      end;
      ADD('order by invrow');
      ParamByName('INVSRL').AsString := FDM_ExtSales.qrEExpPartDet.FieldByName('INVSRL').AsString;
      ParamByName('INVGRP').AsString := FDM_ExtSales.qrEExpPartDet.FieldByName('INVGRP').AsString;
      ParamByName('INVKIND').AsString:= FDM_ExtSales.qrEExpPartDet.FieldByName('INVKIND').AsString;
      if FDM_ExtSales.qrEOffValidity.FieldByName('ADCODE').AsString<>'' then
      begin
        ParamByName('ADDCODE').AsString:= FDM_ExtSales.qrEOffValidity.FieldByName('ADCODE').AsString;
        ParamByName('ADVAL').AsString  := FDM_ExtSales.qrEOffValidity.FieldByName('ADVAL').AsString;
      end;
      SQL:= MbSqlConvert(SQL);
      Open;
    end;
end;
procedure TFrmEExpPart.CF_Report(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByName('GDS_DESCL').AsString:= FindGdsLDesc(FieldByName('GDS_CODE').AsString);
    FieldByName('CU_NAME').AsString:= FindArzName(FieldByName('CU_CODE').AsString);
    FieldByName('TOTCOST').AsFloat:= FieldByName('INVQTY').AsFloat * FieldByName('INVPRICE').AsFloat;
    if FDM_ExtSales.qrEOffValidity.FieldByName('ADCODE').AsString<>'' then
     begin
   FieldByName('ADDDESC').AsString:= FindAddLName(FieldByName('ADCODE').AsString);
   FieldByName('ADTYPE').AsString:= FindAddType(FieldByName('ADCODE').AsString);
   end;
 end;
{  with FDM_ExtSales.qrETemp, SQL do
  begin
    if not (DataSet.FieldByName('CNTCODE').Value = Null) then
    begin
      Clear;
      Add('SELECT PR.PRJDESC, IDC.CUSTNAME, ID.CNTDTE , C.COUNTRY_NAME,IDC.CUSTADD ');
      Add('FROM PSSALES.IDCONTACT_T ID,');
      Add('     PSSALES.PROFORMAT_T P,');
      Add('     PSSALES.PROJECT_T PR,');
      Add('     PSSALES.IDCUSTOMER_T IDC,');
      Add('     PSSALES.COUNTRY C');
      Add('WHERE');
      Add('     ID.CNTCODE = :CNTCODE');
      Add('AND  P.PRFNUM   = ID.PRFNUM');
      Add('AND  PR.PRJCODE = ID.PRJCODE');
      Add('AND  IDC.CUSTNO = ID.CUSTNO');
      Add('AND  C.COUNTERY_CODE = IDC.COUNTERY_CODE');
      ParamByName('CNTCODE').AsString:= DataSet.FieldByName('CNTCODE').AsString;
      end
    else
    begin
      Clear;
      Add('SELECT O.ORDDATE , ID.CUSTNAME, PR.PRJDESC, C.COUNTRY_NAME,ID.CUSTADD ');
      Add('FROM PSSALES.ORDERTIT_T O,');
      Add('     PSSALES.PROFORMAT_T P,');
      Add('     PSSALES.IDCUSTOMER_T ID,');
      Add('     PSSALES.PROJECT_T PR,');
      Add('     PSSALES.COUNTRY C');
      Add('WHERE');
      Add('     O.ORDNO   = :ORDNO   ');
      Add('AND  O.PRFNUM  = P.PRFNUM ');
      Add('AND  ID.CUSTNO = P.CUSTNO ');
      Add('AND  PR.PRJCODE= P.PRJCODE');
      Add('AND  C.COUNTERY_CODE = ID.COUNTERY_CODE');
      ParamByName('ORDNO').AsString:= DataSet.FieldByName('ORDNO').AsString;

    end;
    SQL:= MbSqlConvert(SQL);
    Open;
    if not (DataSet.FieldByName('CNTCODE').Value = Null) then
    DataSet.FieldByName('CNTDTE').AsString:= FieldByName('CNTDTE').AsString
    else
    DataSet.FieldByName('ORDDATE').AsString:= FieldByName('ORDDATE').AsString;
    DataSet.FieldByName('COUNTRY_NAME').AsString:= FieldByName('COUNTRY_NAME').AsString;
    DataSet.FieldByName('CUSTNAME').AsString:= FieldByName('CUSTNAME').AsString;
    DataSet.FieldByName('CUSTADD').AsString:= FieldByName('CUSTADD').AsString;
  end;   }

end;

procedure TFrmEExpPart.ppDBCalc5Calc(Sender: TObject);
begin
  pplbcalc2.Text := ppDBCalc5.Text;
  tvalex2.Text := Format('%.n', [CalculateNetCost(_OnOpen)]);
end;

procedure TFrmEExpPart.ppFooterBand2BeforePrint(Sender: TObject);
begin
Selectfooter;
end;

procedure TFrmEExpPart.SelectFooter;
var
 i,m: Integer;
 flag:boolean;
  temp:DOUBLE;
begin
  I := 1;
  temp:=0;
  with FDM_ExtSales.qrETemp, SQL do
  begin
       Clear;
    Add('SELECT V.ADCODE,ADVAL,ADNUM4,ADFNAME,ADTYPE ');
    Add('  FROM VALIDITY_T V,ADDSUB_T A              ');
    Add(' WHERE ADNUM4   = :kind || :grp  || :itmno  ');
    Add('   AND V.ADCODE = A.ADCODE                  ');
    ParamByName('kind').AsString  :=FDM_ExtSales.qrEExpPart.FieldByName('INVKIND').AsString;
    ParamByName('grp').AsString   := FDM_ExtSales.qrEExpPart.FieldByName('INVGRP').AsString;
    ParamByName('itmno').AsString := FDM_ExtSales.qrEExpPart.FieldByName('INVSRL').AsString;
    Sql := MbSqlConvert(Sql);
    Open;
    First;
    flag:=false;
    while not Eof do
    begin
      flag:=true;
{    Case FieldByNAme('ADTYPE').AsInteger of
        _intAdd   : TppLabel(Self.FindComponent('lb'+IntToStr(I))).Caption := _stAdd;
        _intSub   : TppLabel(Self.FindComponent('lb'+IntToStr(I))).Caption := _stSub;
      end;}
      ((Self.FindComponent('lbNo'+IntToStr(I))) as TppLabel).Caption := FieldByNAme('ADCODE').AsString;
      TppLabel(Self.FindComponent('Des'+IntToStr(I))).Caption := MbDb2St(FieldByNAme('ADFNAME').AsString,MbCurrentCharSetCode);
      TppLabel(Self.FindComponent('Val'+IntToStr(I))).Caption := SetCammaEdit(FieldByNAme('ADVAL').AsFloat);
{      IF TppLabel(Self.FindComponent('lb'+IntToStr(I))).Caption = _stSub THEN
         temp:=temp-FieldByNAme('ADVAL').Asfloat;
      IF TppLabel(Self.FindComponent('lb'+IntToStr(I))).Caption = _stAdd THEN
         temp:=temp+FieldByNAme('ADVAL').AsFloat;}
      TppLabel(Self.FindComponent('cnt'+IntToStr(I))).Caption := IntToStr(I);
      I := I+1;
      Next;
    end;
    temp:=strtofloat(GetEditText(pplbcalc2.Text))+temp;
//Comment on 85-06-07
//    tvalex2.Caption :=floattostr(temp);
//    tvalex2.Caption:=SetCammaEdit( STRTOINT(tvalex2.Caption ));
  end;
     for m:=i to 4 do
     begin
//       TppLabel(Self.FindComponent('lb'+IntToStr(m))).Caption := ' ';
       ((Self.FindComponent('lbNo'+IntToStr(m))) as TppLabel).Caption := ' ' ;
       TppLabel(Self.FindComponent('Des'+IntToStr(m))).Caption := ' ';
       TppLabel(Self.FindComponent('Val'+IntToStr(m))).Caption := ' ';
       TppLabel(Self.FindComponent('cnt'+IntToStr(m))).Caption := ' ';
     end;
end;
end.
