{$I Direct.Inc}
unit EIntPart;                                                                               

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus,DbTables, ppBands, ppClass, ppCtrls, myChkBox, ppPrnabl, ppCache,
  ppProd, ppReport, ppDB, ppRelatv, ppDBPipe, ppDBBDE, ppComm, ppEndUsr,DMUIntSales, {$I MbUses.Inc};

type
  TFrmEIntPart = class(TMbForm)
    panButton: TPanel;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    stbMain: TStatusBar;
    dbgrFactDet: TDBGrid;
    BtnPost: TBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    dbgedGdsDescF: TDBEdit;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    dbedCuseCo: TDBEdit;
    dbedCustName: TDBEdit;
    dbedCntCode: TDBEdit;
    dbedOfNum: TDBEdit;
    Label10: TLabel;
    dbedItmDesc: TDBEdit;
    Label6: TLabel;
    rgPos: TRadioGroup;
    Label5: TLabel;
    edTotCost: TEdit;
    BtnDelete: TBitBtn;
    Label8: TLabel;
    dbedRiSrl: TDBEdit;
    Label15: TLabel;
    dbedNetPrice: TDBEdit;
    BitBtn1: TBitBtn;
    dbedItmDte: TDBEdit;
    dbedDate: TDBEdit;
    Panel3: TPanel;
    sbList: TSpeedButton;
    dbedItmNo: TDBEdit;
    Label1: TLabel;
    dbcmbItmKind: TDBComboBox;
    Label13: TLabel;
    Panel4: TPanel;
    dbgrAddSub: TDBGrid;
    edTotNetCost: TEdit;
    Label18: TLabel;
    PMen: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    Splitter1: TSplitter;
    btnPrint: TBitBtn;
    ppDesigner: TppDesigner;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText13: TppDBText;
    ppDBText16: TppDBText;
    ppDBText4: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppPageStyle1: TppPageStyle;
    ppShape1: TppShape;
    ppLine2: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine1: TppLine;
    ppLabel20: TppLabel;
    ppLabel31: TppLabel;
    ppLabel26: TppLabel;
    ppLabel16: TppLabel;
    ppShape2: TppShape;
    ppLabel14: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    Label7: TLabel;
    ComboBox2: TComboBox;
    ComboBox1: TComboBox;
    bbPreview: TBitBtn;
    bbPrint: TBitBtn;
    spDesign: TSpeedButton;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppPageStyle2: TppPageStyle;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel114: TppLabel;
    ppLabel34: TppLabel;
    ppShape13: TppShape;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppShape14: TppShape;
    ppLine22: TppLine;
    ppShape3: TppShape;
    ppLine10: TppLine;
    ppLabel5: TppLabel;
    ppLine11: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine27: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBText3: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel27: TppLabel;
    ppShape4: TppShape;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLabel28: TppLabel;
    ppShape5: TppShape;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppImage1: TppImage;
    ppImage3: TppImage;
    ppImage4: TppImage;
    ppShape15: TppShape;
    ppLabel1: TppLabel;
    ppShape16: TppShape;
    ppLine3: TppLine;
    ppLine8: TppLine;
    ppLine16: TppLine;
    ppImage5: TppImage;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppShape6: TppShape;
    ppLine4: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppImage6: TppImage;
    ppShape17: TppShape;
    ppLabel2: TppLabel;
    ppLine23: TppLine;
    ppShape18: TppShape;
    ppLine24: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel18: TppLabel;
    myCheckBox1: TmyCheckBox;
    myCheckBox2: TmyCheckBox;
    ppShape19: TppShape;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLabel19: TppLabel;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel30: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel35: TppLabel;
    ppLine89: TppLine;
    ppLine90: TppLine;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText17: TppDBText;
    ppLine97: TppLine;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLine98: TppLine;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel73: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel81: TppLabel;
    ppLabel98: TppLabel;
    ppLabel100: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppShape9: TppShape;
    ppShape20: TppShape;
    ppShape10: TppShape;
    ppLabel6: TppLabel;
    ppLine30: TppLine;
    ppLabel7: TppLabel;
    ppLabel29: TppLabel;
    ppLine34: TppLine;
    ppLabel46: TppLabel;
    ppLine35: TppLine;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppShape7: TppShape;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppShape8: TppShape;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppShape11: TppShape;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine99: TppLine;
    ppLine100: TppLine;
    ppLine101: TppLine;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppShape12: TppShape;
    ppLine104: TppLine;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLine105: TppLine;
    ppLabel53: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppShape24: TppShape;
    ppLabel61: TppLabel;
    ppLine138: TppLine;
    ppShape25: TppShape;
    ppLine139: TppLine;
    ppLine140: TppLine;
    ppLine141: TppLine;
    ppLine142: TppLine;
    ppLine143: TppLine;
    ppLine144: TppLine;
    ppLine145: TppLine;
    ppLine146: TppLine;
    ppLine147: TppLine;
    ppLine148: TppLine;
    ppLine149: TppLine;
    ppLine150: TppLine;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppImage2: TppImage;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel80: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel87: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel99: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLine151: TppLine;
    ppLabel104: TppLabel;
    ppLine152: TppLine;
    ppLine153: TppLine;
    ppLine154: TppLine;
    ppLine155: TppLine;
    ppLine156: TppLine;
    ppShape26: TppShape;
    ppLine157: TppLine;
    ppLine158: TppLine;
    ppLine159: TppLine;
    ppLine160: TppLine;
    ppLine161: TppLine;
    ppLine162: TppLine;
    ppLine163: TppLine;
    ppLine164: TppLine;
    ppLine165: TppLine;
    ppLine166: TppLine;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    myCheckBox3: TmyCheckBox;
    myCheckBox4: TmyCheckBox;
    ppShape27: TppShape;
    ppLabel109: TppLabel;
    ppLine167: TppLine;
    ppShape28: TppShape;
    ppLine168: TppLine;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppDBText1: TppDBText;
    ppDBText6: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppDBText15: TppDBText;
    ppDBText18: TppDBText;
    ppLine169: TppLine;
    ppLine170: TppLine;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText2: TppDBText;
    ppDBText19: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppDBText60: TppDBText;
    ppLabel121: TppLabel;
    ppLine109: TppLine;
    ppLine110: TppLine;
    ppLabel122: TppLabel;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppDBText7: TppDBText;
    ppDBText14: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine36: TppLine;
    Label9: TLabel;
    edCustAdd: TEdit;
    ppDBText82: TppDBText;
    ppDBText84: TppDBText;
    ppDBText83: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    SpdBtnExit: TBitBtn;
    qrOfferT: TQuery;
    qrOfferR: TQuery;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpdBtnExitClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbListClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Panel3Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrFactDetEnter(Sender: TObject);
    procedure dbgrFactDetColEnter(Sender: TObject);
    procedure dbgrFactDetEditButtonClick(Sender: TObject);
    procedure dbgrFactDetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgrAddSubColEnter(Sender: TObject);
    procedure dbgrAddSubEditButtonClick(Sender: TObject);
    procedure dbgrAddSubEnter(Sender: TObject);
    procedure dbgrAddSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnPostClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dbedItmNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure dbgrAddSubExit(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure ppLabel38Print(Sender: TObject);
    procedure ppLabel39Print(Sender: TObject);
    procedure ppLabel98Print(Sender: TObject);
    procedure ppLabel100Print(Sender: TObject);
    procedure ppLabel112Print(Sender: TObject);
    procedure ppLabel113Print(Sender: TObject);
    procedure spDesignClick(Sender: TObject);
    procedure ppDBText23GetText(Sender: TObject; var Text: String);
    procedure ppDBText24GetText(Sender: TObject; var Text: String);
    procedure ppDBText25GetText(Sender: TObject; var Text: String);
    procedure ppDBText26GetText(Sender: TObject; var Text: String);
    procedure ppDBText27GetText(Sender: TObject; var Text: String);
    procedure ppDBText28GetText(Sender: TObject; var Text: String);
    procedure ppDBText29GetText(Sender: TObject; var Text: String);
    procedure ppDBText30GetText(Sender: TObject; var Text: String);
    procedure ppDBText33GetText(Sender: TObject; var Text: String);
    procedure ppDBText34GetText(Sender: TObject; var Text: String);
    procedure ppDBText53GetText(Sender: TObject; var Text: String);
    procedure ppDBText54GetText(Sender: TObject; var Text: String);
    procedure ppDBText31GetText(Sender: TObject; var Text: String);
    procedure ppDBText32GetText(Sender: TObject; var Text: String);
    procedure ppDBText35GetText(Sender: TObject; var Text: String);
    procedure ppDBText36GetText(Sender: TObject; var Text: String);
    procedure ppDBText37GetText(Sender: TObject; var Text: String);
    procedure ppDBText38GetText(Sender: TObject; var Text: String);
    procedure ppDBText39GetText(Sender: TObject; var Text: String);
    procedure ppDBText40GetText(Sender: TObject; var Text: String);
    procedure ppDBText41GetText(Sender: TObject; var Text: String);
    procedure ppDBText42GetText(Sender: TObject; var Text: String);
    procedure ppDBText43GetText(Sender: TObject; var Text: String);
    procedure ppDBText44GetText(Sender: TObject; var Text: String);
    procedure ppDBText45GetText(Sender: TObject; var Text: String);
    procedure ppDBText46GetText(Sender: TObject; var Text: String);
    procedure ppDBText47GetText(Sender: TObject; var Text: String);
    procedure ppDBText48GetText(Sender: TObject; var Text: String);
    procedure ppDBText49GetText(Sender: TObject; var Text: String);
    procedure ppDBText50GetText(Sender: TObject; var Text: String);
    procedure ppDBText51GetText(Sender: TObject; var Text: String);
    procedure ppDBText52GetText(Sender: TObject; var Text: String);
    procedure ppDBText18GetText(Sender: TObject; var Text: String);
    procedure ppDBText55GetText(Sender: TObject; var Text: String);
    procedure ppDBText56GetText(Sender: TObject; var Text: String);
  private
    FDM_IntSales: TDM_IntSales;
    DelFlag, IsLock, ScrollFlag: Boolean;
    FAddGrid: TCuDBGrid;
    SendFlag : Boolean;
    CustCodeInt: String;
    procedure FKindGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure FKindSetText(Sender: TField; const Text: String);
    procedure FGrpGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure FGrpSetText(Sender: TField; const Text: String);
//    procedure PartGetText(Sender: TField; var Text: String; DisplayText: Boolean);
  //  procedure PartSetText(Sender: TField; const Text: String);
    procedure FTypeGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure CF_ItmFact(DataSet: TDataSet);

    procedure CF_ItmFactDet(DataSet: TDataSet);
    procedure DetPriceValidate(Sender: TField);
{
    procedure DetTotCostChange(Sender: TField);
    procedure DetBeforePost(DataSet: TDataSet);
    procedure DetBeforeDelete(DataSet: TDataSet);
    procedure DetBeforeInsert(DataSet: TDataSet);}
    procedure CF_RepFact(DataSet: TDataSet);
    procedure ShowDetail;

    procedure InitAddGrid;
    procedure ADCodeValidate(Sender: TField);
    procedure ADValValidate(Sender: TField);
    procedure AddAfterScroll(DataSet: TDataSet);
    procedure AddAfterDelete(DataSet: TDataSet);
    procedure AddOnNewRecord(DataSet: TDataSet);
    procedure AddBeforePost(DataSet: TDataSet);
    procedure AddAfterOpen(DataSet: TDataSet);
    procedure CF_AddSub(DataSet: TDataSet);
    procedure ShowAddSub;
    function GetPercentPrice(AdCode: string; APrice: Double): Double;

    function IsCurrency: Boolean;
    function CalculateNetCost(const AKind: Integer): Double;
    function CalcTotCost: Double;
    function CalcTotNetCost: Double;
    procedure FUpdateError(DataSet: TDataSet;
       E: EDatabaseError; UpdateKind: TUpdateKind;
       var UpdateAction: TUpdateAction);
    procedure FOnStateChange(Sender: TObject);
    procedure FAddOnStateChange(Sender: TObject);
    procedure DisableFactControls;
    procedure EnableFactControls;
    Function  PrintQuery : Boolean;
    procedure SelectOffer;
  public
    DbHandle: TMbHandle;
    FItmNo,
    FItmGrp,
    FItmKind: string;

  end;

var
  FrmEIntPart: TFrmEIntPart;

implementation

uses MainUnit, HCustom, HBidVch, HSalesProp, HCnt, HHavaleh, HIntPart,
  Utility, Vars, UMessage, Functions, Help;

{$R *.DFM}

procedure TFrmEIntPart.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_ESCAPE then
    Close;
  if (Key = #13) and ((ActiveControl <> dbgrFactDet) or (ActiveControl <> dbgrAddSub)) then
  begin
    SelectNext(ActiveControl, True, True);
    Key := #0;
  end;
end;

procedure TFrmEIntPart.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEIntPart.SpeedButton1Click(Sender: TObject);
begin
 MainForm.acHHavaleh.Execute;
 FrmHHavaleh.ShowModal;
end;

procedure TFrmEIntPart.sbListClick(Sender: TObject);
var
  Code, Year: string;
begin
{ Comment 90/11/11
  if HelpIntPart(Code, IntToStr(dbcmbItmKind.ItemIndex + 1)) then
  begin
    dbedItmNo.SetFocus;
    with FDM_IntSales.qrEItmFact do
    begin
      Edit;
      FieldByName('ITMNO').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;}

  if HelpSalesProp(Code, Year) then
  begin
    dbedItmNo.SetFocus;
    with FDM_IntSales.qrEItmFact do
    begin
      Edit;
      FieldByName('ITMNO').AsString:= Code;
    end;

    SelectNext(ActiveControl, True, True);
  end;

end;

procedure TFrmEIntPart.Button1Click(Sender: TObject);
begin
 MainForm.acEEbtal.Execute;
end;

procedure TFrmEIntPart.BitBtn1Click(Sender: TObject);
begin

  FItmNo:= FDM_IntSales.qrEItmFact.FieldByName('ITMNO').AsString;
//  FItmGrp:= FDM_IntSales.qrEItmFact.FieldByName('ITMGRP').AsString;
  FItmKind:= FDM_IntSales.qrEItmFact.FieldByName('ITMKIND').AsString;

  MainForm.acDHavalehFact.Execute;
end;

procedure TFrmEIntPart.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MbDB.RollBack(FDB);
  Action:= caFree;
end;

procedure TFrmEIntPart.FormCreate(Sender: TObject);
begin
  FDM_IntSales:= TDM_IntSales(MbDM.GetDM(FDM));
  SetStatusBar(stbMain);

  SetFormColor(Self,_FormColor);
  with FDM_IntSales.qrEItmFact do
  begin
    OnCalcFields:= CF_ItmFact;
    FieldByName('ITMKIND').OnGetText:= FKindGetText;
    FieldByName('ITMKIND').OnSetText:= FKindSetText;
    FieldByName('ITMTYP').OnGetText:= FTypeGetText;
    OnUpdateError:= FUpdateError;
  end;

  with FDM_IntSales.qrRFact do
  begin
    OnCalcFields:= CF_RepFact;
  end;

  with FDM_IntSales.dsEItmFact do
  begin
    OnStateChange:= nil;
    OnStateChange:= FOnStateChange;
  end;

  with FDM_IntSales.qrEItmFactDet do
  begin
    OnCalcFields:= CF_ItmFactDet;
{    BeforePost:= DetBeforePost;
    BeforeDelete:= DetBeforeDelete;
    BeforeInsert:= DetBeforeInsert;
}
    FieldByName('ITMPRICE').OnValidate:= DetPriceValidate;
//    FieldByName('TOTCOST').OnChange:= DetTotCostChange;
//    OnUpdateError:= FUpdateError;
  end;

  with FDM_IntSales.dsEItmFactDet do
  begin
    OnStateChange:= nil;
    OnStateChange:= FOnStateChange;
  end;

  with FDM_IntSales.qrEOffValidity do
  begin
    OnCalcFields:= CF_AddSub;
    AfterScroll:= AddAfterScroll;
    AfterOpen:= AddAfterOpen;
    AfterDelete:= AddAfterDelete;
    OnNewRecord:= AddOnNewRecord;
    BeforePost:= AddBeforePost;
    FieldByName('ADCODE').OnValidate:= ADCodeValidate;
    FieldByName('ADVAL').OnValidate:= ADValValidate;
//    FieldByName('PART').OnGetText:= PartGetText;
  //  FieldByName('PART').OnSetText:= PartSetText;

    OnUpdateError:= FUpdateError;
  end;

  with FDM_IntSales.dsEOffValidity do
  begin
    OnStateChange:= nil;
    OnStateChange:= FAddOnStateChange;
  end;

  InitAddGrid;
end;

procedure TFrmEIntPart.Panel3Exit(Sender: TObject);
var
  OFRStat: Integer;
begin
  if (dbcmbItmKind.Text = '') then
  begin
    MbError(NotDataComplete);
    dbcmbItmKind.SetFocus;
    Exit;
  end;

  if (FDM_IntSales.qrEItmFact.FieldbyName('ITMNO').AsString = '') then
  begin
    MbError(NotDataComplete);
    dbedItmNo.SetFocus;
    Exit;
  end;

// comment 90/11/11 Check from OFFERTIT_T
{  with FDM_IntSales.qrEItmFact do
  begin
    if not ExistFactor(FieldByName('ITMKIND').AsString, FieldByName('ITMNO').AsString) then
    begin
      MbError(InvalidFactor);
      dbcmbItmKind.SetFocus;
      Exit;
    end;
  end;}

  with FDM_IntSales.qrEItmFact do
  begin
    if not ExistOffID(FieldByName('ITMNO').AsString, OFRStat) then
    begin
      MbError(InvalidOffer);
      dbcmbItmKind.SetFocus;
      Exit;
    end;
  end;


  if MbDB.InTransaction[FDB] then
    MbDB.RollBack(FDB);

  MbDB.StartTransaction(FDB);
  IsLock:= False;
  AutoSelect(FDB, FDM_IntSales.qrEItmFact, 'ITEMFACT_T', 2, IsLock);
  ShowDetail;
  ShowAddSub;


// comment 90/11/11 load data from OFFERTIT_T
{  with FDM_IntSales.qrTmpCust, SQL do
  begin
    Clear;
    Add('SELECT  DISTINCT CUST_ADD ');
    Add('  FROM  HAVALEH H,                                                ');
    Add('        IDCUSTOMER_T ID,                                          ');
    Add('        INFACTHVL_T I                                             ');
    Add('  WHERE  H.CUT_CODE   = ID.CUSTNO                                 ');
    Add('    AND H.DOC_M_CODE = I.ITMHVLNO                                 ');
    Add('    AND H.DOC_M_YEAR = I.ITMHVLYEAR                               ');
    Add('    AND I.ITMNO      = :ITMNO                                     ');
    Add('    AND I.ITMKIND    = :ITMKIND                                          ');
    ParamByName('ITMNO').AsString:= FDM_IntSales.qrEItmFact.FieldByName('ITMNO').AsString;
    ParamByName('ITMKIND').AsString:= FDM_IntSales.qrEItmFact.FieldByName('ITMKIND').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;

    edCustAdd.Text:= FieldByName('CUST_ADD').AsString;
  end;}

{  if not (rgPos.ItemIndex = 0) then
    DisableFactControls
  else
    EnableFactControls;}
end;

procedure TFrmEIntPart.FormShow(Sender: TObject);
begin
  SelectEmpty(FDM_IntSales.qrEItmFact, 'ITEMFACT_T');
  IsLock:= False;
  DelFlag:= True;
  ScrollFlag:= True;
  FDM_IntSales.qrEItmFact.Edit;
end;

procedure TFrmEIntPart.FGrpGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intFPart   : Text:= _stFPart;
    _intFProd   : Text:= _stFProd;
  end;
end;

procedure TFrmEIntPart.FGrpSetText(Sender: TField; const Text: String);
begin
  if Text = _stFPart then
    Sender.AsInteger:= _intFPart;

  if Text = _stFProd then
    Sender.AsInteger:= _intFProd;
end;

procedure TFrmEIntPart.FKindGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intFKSale   : Text:= _stFKSale;
    _intFKReturn : Text:= _stFKReturn;
  end;
end;

procedure TFrmEIntPart.FKindSetText(Sender: TField; const Text: String);
begin
  if Text = _stFKSale then
    Sender.AsInteger:= _intFKSale;

  if Text = _stFKReturn then
    Sender.AsInteger:= _intFKReturn;
end;

procedure TFrmEIntPart.FTypeGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intFTRial : Text:= _stFTRial;
    _intFTCurr : Text:= _stFTCurr;
  end;
end;

procedure TFrmEIntPart.CF_ItmFact(DataSet: TDataSet);
begin
{ Comment 90/11/11
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT  DISTINCT DOC_M_DATE CNTDTE, ID.CUSTNAME, ID.ECONOMIC_CODE ');
    Add('  FROM  HAVALEH H,                                                ');
    Add('        IDCUSTOMER_T ID,                                          ');
    Add('        INFACTHVL_T I                                             ');
    Add('  WHERE  H.CUT_CODE   = ID.CUSTNO                                 ');
    Add('    AND H.DOC_M_CODE = I.ITMHVLNO                                 ');
    Add('    AND H.DOC_M_YEAR = I.ITMHVLYEAR                               ');
    Add('    AND I.ITMNO      = :ITMNO                                     ');
    Add('    AND I.ITMKIND    = :ITMKIND                                          ');
    ParamByName('ITMNO').AsString:= DataSet.FieldByName('ITMNO').AsString;
    ParamByName('ITMKIND').AsString:= DataSet.FieldByName('ITMKIND').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;}
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT  OFDATE CNTDTE, ID.CUSTNAME, ID.ECONOMIC_CODE, CUSTADD, ID.CUSTNO ');
    Add('  FROM  OFFERTIT_T OFT,                                          ');
    Add('        IDCUSTOMER_T ID                                          ');
    Add('  WHERE OFT.CUSTNO   = ID.CUSTNO                                 ');
    Add('    AND OFT.OFNUM    = :ITMNO                                    ');
    ParamByName('ITMNO').AsString:= DataSet.FieldByName('ITMNO').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;

    DataSet.FieldByName('FDATE').AsString:= FieldByName('CNTDTE').AsString;
    DataSet.FieldByName('CUSTNAME').AsString:= FieldByName('CUSTNAME').AsString;
    DataSet.FieldByName('ECONOMIC_CODE').AsString:= FieldByName('ECONOMIC_CODE').AsString;
    edCustAdd.Text := FieldByName('CUSTADD').AsString;
    CustCodeInt := FieldByName('CUSTNO').AsString;
  end;
(*
  if not (DataSet.FieldByName('CNTCODE').Value = Null) then //»—«”«” ﬁ—«—œ«œ
  begin
    with FDM_IntSales.qrETemp, SQL do
    begin                                       88884323
      Clear;
      Add('SELECT  I.CNTDTE, ID.CUSTNAME, ID.ECONOMIC_CODE ');
      Add('  FROM  IDCONTACT_T I, ');
      Add('        IDCUSTOMER_T ID');
      Add('  WHERE I.CNTCODE = :CNTCODE   ');
      Add('  AND   I.CUSTNO = ID.CUSTNO  ');
      ParamByName('CNTCODE').AsString:= DataSet.FieldByName('CNTCODE').AsString;
      SQL:= MbSqlConvert(SQL);
      Open;

      DataSet.FieldByName('FDATE').AsString:= FieldByName('CNTDTE').AsString;
      DataSet.FieldByName('CUSTNAME').AsString:= FieldByName('CUSTNAME').AsString;
      DataSet.FieldByName('ECONOMIC_CODE').AsString:= FieldByName('ECONOMIC_CODE').AsString;
    end;
  end
  else
  if not (DataSet.FieldByName('OFNUM').Value = Null) then //»—«”«” ÅÌ‘‰Â«œ ›—Ê‘
  begin
    with FDM_IntSales.qrETemp, SQL do
    begin
      Clear;
      Add('SELECT  O.OFDATE, I.CUSTNAME, I.ECONOMIC_CODE   ');
      Add('  FROM  IDCUSTOMER_T I,                         ');
      Add('        OFFERTIT_T O                            ');
      Add('  WHERE O.CUSTNO = I.CUSTNO                     ');
      Add('  AND   O.OFNUM = :OFNUM                        ');
      ParamByName('OFNUM').AsString:= DataSet.FieldByName('OFNUM').AsString;
      SQL:= MbSqlConvert(SQL);
      Open;

      DataSet.FieldByName('FDATE').AsString:= FieldByName('OFDATE').AsString;

      DataSet.FieldByName('CUSTNAME').AsString:= FieldByName('CUSTNAME').AsString;
      DataSet.FieldByName('ECONOMIC_CODE').AsString:= FieldByName('ECONOMIC_CODE').AsString;
    end;
  end;
*)
  case DataSet.FieldByName('ITMSTAT').AsInteger of
    _intFSNotConfirmed : rgPos.ItemIndex:= _intFSNotConfirmed - 1;
    _intFSConfirmed    : rgPos.ItemIndex:= _intFSConfirmed - 1;
    _intFSRevoke       : rgPos.ItemIndex:= _intFSRevoke - 1;
  end;
end;

procedure TFrmEIntPart.ShowDetail;
begin
//  FDM_IntSales.qrEItmFactDet.DisableControls;
  try
    with FDM_IntSales.qrEItmFactDet, SQL do
    begin
      Clear;
      Add('SELECT *');
      Add('FROM ITEMFACR_T');
      Add('WHERE');
      Add('     ITMNO = :ITMNO');
      Add('AND  ITMKIND = :ITMKIND');
      Add('ORDER BY ITMROW');
      ParamByName('ITMNO').AsString:= FDM_IntSales.qrEItmFact.FieldByName('ITMNO').AsString;
      ParamByName('ITMKIND').AsString:= FDM_IntSales.qrEItmFact.FieldByName('ITMKIND').AsString;
      SQL:= MbSqlConvert(SQL);
      Open;
      if IsEmpty then SelectOffer;
    end;
  finally
    FDM_IntSales.qrEItmFactDet.First;
//    FDM_IntSales.qrEItmFactDet.EnableControls;
  end;

  edTotCost.Text:= Trim(Format('%20.2n', [CalcTotCost * 1.0]));
end;

procedure TFrmEIntPart.CF_ItmFactDet(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByName('GDS_DESCF').AsString:= FindGdsFDesc(FieldByName('GDS_CODE').AsString);
    FieldByName('GDS_DESCL').AsString:= FindGdsLDesc(FieldByName('GDS_CODE').AsString);

    FieldByName('UNT_DESC').AsString:= FindUntDesc(FieldByName('GDS_CODE').AsString, _GOOD);

    if (not (FieldByName('ITMQTY').AsString = '')) or (not (FieldByName('ITMPRICE').AsString = '')) then
      //FieldByName('TOTCOST').AsFloat:= FieldByName('ITMQTY').AsFloat * FieldByName('ITMPRICE').AsFloat;
(*
      FieldByName('TOTCOST').AsFloat:= ((FieldByName('ITMQTY').AsFloat * FieldByName('ITMPRICE').AsFloat)+
                                        FieldByName('PACKVALUE').AsFloat) -
                                       (((FieldByName('ITMQTY').AsFloat * FieldByName('ITMPRICE').AsFloat)+
                                        FieldByName('PACKVALUE').AsFloat)*FieldByName('ABATE').AsFloat)/100;
*)
      FieldByName('TOTCOST').AsFloat:= ((FieldByName('ITMQTY').AsFloat * FieldByName('ITMPRICE').AsFloat)+
                                        (FieldByName('PACKVALUE').AsFloat)-
                                        (FieldByName('ABATE').AsFloat));
  end;
end;

procedure TFrmEIntPart.dbgrFactDetEnter(Sender: TObject);
begin
  dbgrFactDet.SelectedIndex:= 9;
end;

procedure TFrmEIntPart.dbgrFactDetColEnter(Sender: TObject);
begin
{  with dbgrFactDet do
  begin
    if SelectedIndex in [0, 1, 2, 3, 4, 5, 7] then
      SelectedIndex:= 6;

    if SelectedIndex = 4 then
      SelectedIndex:= 5;

    if SelectedIndex = 7 then
      SelectedIndex:= 6;
  end;}                  
end;

procedure TFrmEIntPart.dbgrFactDetEditButtonClick(Sender: TObject);
begin
 if TQuery(dbgrFactDet.DataSource.DataSet).CachedUpdates = False then Exit;
end;

procedure TFrmEIntPart.dbgrFactDetKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    dbgrFactDetEditButtonClick(nil);
end;

procedure TFrmEIntPart.ShowAddSub;
begin
  FDM_IntSales.qrEOffValidity.DisableControls;
  try
    with FDM_IntSales.qrEOffValidity, SQL do
    begin
      Clear;
      Add('SELECT *');
      Add('FROM VALIDITY_T');
      if FDM_IntSales.qrEItmFact.FieldByName('OFNUM').AsString <> '' then
        Add('WHERE ADNUM2 = :ADNUM');
      if FDM_IntSales.qrEItmFact.FieldByName('CNTCODE').AsString <> '' then
        Add('WHERE ADNUM1 = :ADNUM');
      if (FDM_IntSales.qrEItmFact.FieldByName('OFNUM').AsString = '') and
         (FDM_IntSales.qrEItmFact.FieldByName('CNTCODE').AsString = '') then
        Add('WHERE ADNUM2 = :ITMNO');
//      Add('WHERE');
//      Add('     ADNUM3 = :ITMKIND || :ITMNO');
      Add('ORDER BY ADCODE');
      if FDM_IntSales.qrEItmFact.FieldByName('OFNUM').AsString <> '' then
        ParamByName('ADNUM').AsString:= FDM_IntSales.qrEItmFact.FieldByName('OFNUM').AsString;
      if FDM_IntSales.qrEItmFact.FieldByName('CNTCODE').AsString <> '' then
        ParamByName('ADNUM').AsString:= FDM_IntSales.qrEItmFact.FieldByName('CNTCODE').AsString;
      if (FDM_IntSales.qrEItmFact.FieldByName('OFNUM').AsString = '') and
         (FDM_IntSales.qrEItmFact.FieldByName('CNTCODE').AsString = '') then
      begin
//        ParamByName('ITMKIND').AsString:= FDM_IntSales.qrEItmFact.FieldByName('ITMKIND').AsString;
        ParamByName('ITMNO').AsString:= FDM_IntSales.qrEItmFact.FieldByName('ITMNO').AsString;
      end;
      SQL:= MbSqlConvert(SQL);
      Open;
    end;
  finally
    FDM_IntSales.qrEOffValidity.First;
    FDM_IntSales.qrEOffValidity.EnableControls;
  end;

//  edTotNetCost.Text:= Trim(Format('%20.2n', [CalcTotNetCost * 1.0]));
end;

procedure TFrmEIntPart.CF_AddSub(DataSet: TDataSet);
begin
  if FAddGrid.CanCalculate then
  begin
    with DataSet do
    begin
      FieldByName('ADDDESC').AsString:= FindAddFName(FieldByName('ADCODE').AsString);
      FieldByName('ADDTYPE').AsString:= FindAddType(FieldByName('ADCODE').AsString);
      FieldByName('ADKIND').AsString:= FindAddKind(FieldByName('ADCODE').AsString);
    end;
  end;
end;

procedure TFrmEIntPart.dbgrAddSubColEnter(Sender: TObject);
begin
  with FDM_IntSales.qrEOffValidity do
  begin
    if (dbgrAddSub.SelectedField = FieldByName('ADDDESC')) or
       (dbgrAddSub.SelectedField = FieldByName('ADDTYPE')) then
      dbgrAddSub.SelectedField:= FieldByName('ADVAL');

    if dbgrAddSub.SelectedField = FieldByName('ADKIND') then
      dbgrAddSub.SelectedField:= FieldByName('ADCODE');

    if dbgrAddSub.SelectedField = FieldByName('ADVAL') then
      if (FieldByName('ADKIND').AsString = _stPercent) then
        dbgrAddSub.SelectedIndex:= dbgrAddSub.SelectedIndex - 1;
  end;
end;

procedure TFrmEIntPart.dbgrAddSubEditButtonClick(Sender: TObject);
var
  Code: string;
begin
  if TQuery(dbgrAddSub.DataSource.DataSet).CachedUpdates = False then Exit;

  if dbgrAddSub.SelectedField.FieldName = 'ADCODE' then
  begin
    if HelpKasr(Code) then
    begin
      with FDM_IntSales.qrEOffValidity do
      begin
        Edit;
        FieldByName('ADCODE').AsString:= Code;
      end;

      dbgrAddSub.SelectedIndex:= 4;
      Exit;
    end;
  end;
end;

procedure TFrmEIntPart.dbgrAddSubEnter(Sender: TObject);
begin
  if TQuery(dbgrAddSub.DataSource.DataSet).CachedUpdates = False then Exit;

  if (Sender as TDBGrid).DataSource.DataSet.IsEmpty then
    (Sender as TDBGrid).DataSource.DataSet.Insert;
end;

procedure TFrmEIntPart.dbgrAddSubKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    dbgrAddSubEditButtonClick(nil);
end;

procedure TFrmEIntPart.DetPriceValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
  if (Sender.AsFloat > 9999999999999) or (Sender.AsFloat < 0) then
  begin
    MbError(RangeErr);
    Abort;
  end;
(*
  FDM_IntSales.qrEItmFactDet.FieldByName('ABATE').AsFloat := (FDM_IntSales.qrEItmFactDet.FieldByName('ITMPRICE').AsFloat*
                                                             FDM_IntSales.qrEItmFactDet.FieldByName('ITMQTY').AsFloat*4/100)
*)                                                             
end;

{procedure TFrmEIntPart.DetBeforePost(DataSet: TDataSet);
begin
  with DataSet do
  begin
    if FieldByName('ITMPRICE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrFactDet.SetFocus;
      dbgrFactDet.SelectedIndex:= 6;
      Abort;
    end;
  end;
end;}

{procedure TFrmEIntPart.DetBeforeDelete(DataSet: TDataSet);
begin
  Abort;
end;}

{procedure TFrmEIntPart.DetBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;}

procedure TFrmEIntPart.ADCodeValidate(Sender: TField);
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

    with FDM_IntSales.qrEOffValidity do
    begin
      FieldByName('ADVAL').AsString:= '';
      //FieldByName('PART').AsInteger:= _IntFSPart;
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

function TFrmEIntPart.IsCurrency: Boolean;
begin
  Result:= not (FDM_IntSales.qrEItmFactDet.FieldByName('CU_CODE').AsString = '');
end;

procedure TFrmEIntPart.ADValValidate(Sender: TField);
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

procedure TFrmEIntPart.AddAfterDelete(DataSet: TDataSet);
begin
  btnPost.Enabled:= True and MabnaInfo.HasAccess(btnPost.Tag);
end;

procedure TFrmEIntPart.AddAfterScroll(DataSet: TDataSet);
begin
  with DataSet do
  begin
    if dbgrAddSub.SelectedField = FieldByName('ADVAL') then
      if (FieldByName('ADKIND').AsString = _stPercent) then
        dbgrAddSub.SelectedIndex:= dbgrAddSub.SelectedIndex - 1;
  end;
end;

procedure TFrmEIntPart.AddOnNewRecord(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByName('ADNUM1').AsString:= '0';
    FieldByName('ADNUM2').AsString:= '0';
    FieldByName('ADNUM3').AsString:= FDM_IntSales.qrEItmFact.FieldByName('ITMKIND').AsString +
                                     FDM_IntSales.qrEItmFact.FieldByName('ITMNO').AsString;
    FieldByName('ADNUM4').AsString:= '0';
    FieldByName('ADNUM5').AsString:= '0';
  end;
end;

procedure TFrmEIntPart.AddBeforePost(DataSet: TDataSet);
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
  end;
end;

function TFrmEIntPart.GetPercentPrice(AdCode: string;
  APrice: Double): Double;
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT VALDEF');
    Add('FROM ADDSUB_T');
    Add('WHERE');
    Add('     ADCODE = :ADCODE');
    ParamByName('ADCODE').AsString:= AdCode;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result:= (FieldByName('VALDEF').AsFloat / 100) * APrice;
    Close;
  end;
end;

function TFrmEIntPart.CalcTotCost: Double;
var
  BM: TBookMark;
  Temp: Double;
begin
  Temp:= 0;
  BM:= FDM_IntSales.qrEItmFactDet.GetBookMark;
//  FDM_IntSales.qrEItmFactDet.DisableControls;
  try
    with FDM_IntSales.qrEItmFactDet do
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
      FDM_IntSales.qrEItmFactDet.GotoBookMark(BM);

    FDM_IntSales.qrEItmFactDet.FreeBookMark(BM);
//    FDM_IntSales.qrEItmFactDet.EnableControls;
  end;

  Result:= Temp;
end;

{procedure TFrmEIntPart.DetTotCostChange(Sender: TField);
begin
  edTotCost.Text:= Trim(Format('%20.2n', [CalcTotCost * 1.0]));
  edTotNetCost.Text:= Trim(Format('%20.2n', [CalcTotNetCost * 1.0]));
end;}

function TFrmEIntPart.CalcTotNetCost: Double;
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
  with FDM_IntSales.qrEOffValidity do
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
  BM:= FDM_IntSales.qrEOffValidity.GetBookMark;
  FDM_IntSales.qrEOffValidity.DisableControls;
  try
    with FDM_IntSales.qrEOffValidity do
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
      FDM_IntSales.qrEOffValidity.GotoBookMark(BM);

    FDM_IntSales.qrEOffValidity.FreeBookMark(BM);
    FDM_IntSales.qrEOffValidity.EnableControls;

    with FDM_IntSales.qrEOffValidity do
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

procedure TFrmEIntPart.BtnPostClick(Sender: TObject);
var
  Temp, TmpStr: string;
begin
{  if not (rgPos.ItemIndex = 0) then
  begin
    MbError(CannotModify);
    Exit;
  end;}

  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_IntSales.qrEItmFact do
    begin
      Edit;
      FieldByName('ITMTYP').AsInteger := 1;
      case rgPos.ItemIndex of
        _intFSNotConfirmed - 1 : FieldByName('ITMSTAT').AsInteger := _intFSNotConfirmed;
        _intFSConfirmed - 1    : FieldByName('ITMSTAT').AsInteger := _intFSConfirmed;
        _intFSRevoke - 1       : FieldByName('ITMSTAT').AsInteger := _intFSRevoke;
      end;
      ApplyUpdates;
    end;

    with FDM_IntSales.qrEItmFactDet do
    begin
      ApplyUpdates;
    end;

    //AddSub
    with FDM_IntSales.qrEOffValidity do
    begin
      CalculateNetCost(_OnSave);
      if (FDM_IntSales.qrEOffValidity.State in dsEditModes) or
         (not (FDM_IntSales.qrEOffValidity.State <> dsBrowse)) then
        ApplyUpdates;
    end;
    //----------------

    MbDB.Commit(FDB);

    SelectEmpty(FDM_IntSales.qrEItmFact, 'ITEMFACT_T');
    SelectEmpty(FDM_IntSales.qrEItmFactDet, 'ITEMFACR_T');
    SelectEmpty(FDM_IntSales.qrEOffValidity, 'VALIDITY_T');
    dbcmbItmKind.SetFocus;
    edCustAdd.Clear;
    edTotCost.Text:= '';
    edTotNetCost.Text:= '';

//    btnPost.Enabled:= False;
    edTotNetCost.Text:= '';
  except
    MbDB.RollBack(FDB);
  end;
end;

procedure TFrmEIntPart.sbLastClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_IntSales.qrEItmFact.DisableControls;
  try
    with FDM_IntSales do
    begin
      if not CheckChanges(qrEItmFact, qrEItmFactDet, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEItmFact, 'ITEMFACT_T', 3, Ord(_Last), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_IntSales.qrEItmFact.EnableControls;
  end;
  dbedItmNo.SetFocus;
  SelectNext(ActiveControl, True, True);
//  dbedItmDesc.SetFocus;
  ShowDetail;
  ShowAddSub;
{  if not (rgPos.ItemIndex = 0) then
    DisableFactControls
  else
    EnableFactControls;}
end;

procedure TFrmEIntPart.sbFirstClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_IntSales.qrEItmFact.DisableControls;
  try
    with FDM_IntSales do
    begin
      if not CheckChanges(qrEItmFact, qrEItmFactDet, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEItmFact, 'ITEMFACT_T', 3, Ord(_First), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_IntSales.qrEItmFact.EnableControls;
  end;

  ShowDetail;
  ShowAddSub;
{  if not (rgPos.ItemIndex = 0) then
    DisableFactControls
  else
    EnableFactControls;}
end;

procedure TFrmEIntPart.sbNextClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_IntSales.qrEItmFact.DisableControls;
  try
    with FDM_IntSales do
    begin
      if not CheckChanges(qrEItmFact, qrEItmFactDet, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEItmFact, 'ITEMFACT_T', 3, Ord(_Next), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_IntSales.qrEItmFact.EnableControls;
  end;

  ShowDetail;
  ShowAddSub;
{  if not (rgPos.ItemIndex = 0) then
    DisableFactControls
  else
    EnableFactControls;}
end;

procedure TFrmEIntPart.sbPrevClick(Sender: TObject);
var
  BtnType: Integer;
begin
  FDM_IntSales.qrEItmFact.DisableControls;
  try
    with FDM_IntSales do
    begin
      if not CheckChanges(qrEItmFact, qrEItmFactDet, FDB) then
        Exit;
      IsLock := False;
      BtnType := AutoNavigate(FDB, qrEItmFact, 'ITEMFACT_T', 3, Ord(_Prev), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
    end;
  finally
    FDM_IntSales.qrEItmFact.EnableControls;
  end;

  ShowDetail;
  ShowAddSub;
{  if not (rgPos.ItemIndex = 0) then
    DisableFactControls
  else
    EnableFactControls;}
end;

procedure TFrmEIntPart.BtnDeleteClick(Sender: TObject);
var
  FQuery: TQuery;
  ItmNo,
  ItmKind: string;
begin
  if not (rgPos.ItemIndex = 0) then
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

    ItmNo:= FDM_IntSales.qrEItmFact.FieldByName('ITMNO').AsString;
    ItmKind:= FDM_IntSales.qrEItmFact.FieldByName('ITMKIND').AsString;

    FQuery:= TQuery.Create(Self);
    try
      FQuery.DataBaseName:= MbDB.DataBaseName[FDB];
      try
        with FQuery, SQL do
        begin
          Clear;
          Add('DELETE FROM ITEMFACR_T');
          Add('WHERE');
          Add('     ITMNO = :ITMNO');
          Add('AND  ITMKIND = :ITMKIND');
          ParamByName('ITMNO').AsString:= ItmNo;
          ParamByName('ITMKIND').AsString:= ItmKind;
          SQL:= MbSqlConvert(SQL);
          ExecSql;

          Clear;
          Add('DELETE FROM INFACTHVL_T');
          Add('WHERE');
          Add('     ITMNO = :ITMNO');
          Add('AND  ITMKIND = :ITMKIND');
          ParamByName('ITMNO').AsString:= ItmNo;
          ParamByName('ITMKIND').AsString:= ItmKind;
          SQL:= MbSqlConvert(SQL);
          ExecSql;

          Clear;
          Add('DELETE FROM VALIDITY_T');
          Add('WHERE');
          Add('     ADNUM3 = :ADNUM3');
          ParamByName('ADNUM3').AsString:= FDM_IntSales.qrEItmFact.FieldByName('ITMKIND').AsString +
                                           FDM_IntSales.qrEItmFact.FieldByName('ITMNO').AsString;
          SQL:= MbSqlConvert(SQL);
          ExecSql;

          Clear;
          Add('DELETE FROM ITEMFACT_T');
          Add('WHERE');
          Add('     ITMNO = :ITMNO');
          Add('AND  ITMKIND = :ITMKIND');
          ParamByName('ITMNO').AsString:= ItmNo;
          ParamByName('ITMKIND').AsString:= ItmKind;
          SQL:= MbSqlConvert(SQL);
          ExecSql;
        end;

        MbDB.Commit(FDB);

        SelectEmpty(FDM_IntSales.qrEItmFact, 'ITEMFACT_T');
        SelectEmpty(FDM_IntSales.qrEItmFactDet, 'ITEMFACR_T');
        SelectEmpty(FDM_IntSales.qrEOffValidity, 'VALIDITY_T');
        dbcmbItmKind.SetFocus;
        edCustAdd.Clear;
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

procedure TFrmEIntPart.FUpdateError(DataSet: TDataSet; E: EDatabaseError;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
  MbError(ExpHandleM(E));
  Abort;
end;

procedure TFrmEIntPart.FOnStateChange(Sender: TObject);
begin
{  with FDM_IntSales do
    G_StateChange([qrEItmFact, qrEItmFactDet], btnPost, btnDelete, btnPrint);}
end;

procedure TFrmEIntPart.FAddOnStateChange(Sender: TObject);
begin
{  with FDM_IntSales do
    G_StateChange([qrEOffValidity, qrEOffValidity], btnPost, btnDelete, btnPrint);}
end;

procedure TFrmEIntPart.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= CheckChanges(FDM_IntSales.qrEItmFact, FDM_IntSales.qrEOffValidity, FDM);
end;

procedure TFrmEIntPart.DisableFactControls;
begin
  dbedItmDesc.Enabled:= False;

  TQuery(dbgrFactDet.DataSource.DataSet).CachedUpdates:= False;
  TQuery(dbgrAddSub.DataSource.DataSet).CachedUpdates:= False;

//  btnPost.Enabled:= False;
//  btnDelete.Enabled:= False;
end;

procedure TFrmEIntPart.EnableFactControls;
begin
  dbedItmDesc.Enabled:= True;

  TQuery(dbgrFactDet.DataSource.DataSet).CachedUpdates:= True;
  TQuery(dbgrAddSub.DataSource.DataSet).CachedUpdates:= True;

  BtnPost.Enabled := (MabnaInfo.HasAccess(BtnPost.Tag));
  btnDelete.Enabled := (MabnaInfo.HasAccess(btnDelete.Tag));
//  btnPost.Enabled:= True;
//  btnDelete.Enabled:= True;
end;

procedure TFrmEIntPart.dbedItmNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    sbList.Click;
end;

procedure TFrmEIntPart.MenuItem1Click(Sender: TObject);
begin
  if TQuery(dbgrAddSub.DataSource.DataSet).CachedUpdates = False then Exit;

  dbgrAddSub.DataSource.DataSet.Insert;
end;

procedure TFrmEIntPart.MenuItem2Click(Sender: TObject);
begin
  if TQuery(dbgrAddSub.DataSource.DataSet).CachedUpdates = False then Exit;

  dbgrAddSub.DataSource.DataSet.Delete;
end;

procedure TFrmEIntPart.dbgrAddSubExit(Sender: TObject);
begin
  if not (dbgrAddSub.DataSource.DataSet.IsEmpty) then
  begin
    dbgrAddSub.DataSource.DataSet.Edit;
    dbgrAddSub.DataSource.DataSet.Post;
  end;
end;

procedure TFrmEIntPart.InitAddGrid;
begin
  FAddGrid:= TCuDBGrid.Create(Self, dbgrAddSub, '', True, True, False);
  FAddGrid.SetRowDuplicate(['ADCODE']);
end;

procedure TFrmEIntPart.AddAfterOpen(DataSet: TDataSet);
begin
  edTotNetCost.Text:= Format('%.n', [CalculateNetCost(_OnOpen)]);
end;

function TFrmEIntPart.CalculateNetCost(const AKind: Integer): Double;
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

//        Debate:= SeqControlRes.GetSum('TOTCOST') - KasrVal;
        Debate:= StrToFloatDef(StringReplace(edTotCost.Text, ',', '', [rfReplaceAll]), 0) - KasrVal;

        First;
        while not Eof do
        begin
          Edit;

          FieldByName('ADNUM3').AsString:= FDM_IntSales.qrEItmFact.FieldByName('ITMKIND').AsString +
                                           FDM_IntSales.qrEItmFact.FieldByName('ITMNO').AsString;

          if FieldByName('ADKIND').AsString = _stPercent then
            FieldByName('ADVAL').AsFloat:= GetPercentPrice(FieldByName('ADCODE').AsString, StrToFloatDef(StringReplace(edTotCost.Text, ',', '', [rfReplaceAll]), 0));

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

{procedure TFrmEIntPart.PartGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intFFPart : Text:= _stFFPart;
    _intFSPart : Text:= _stFSPart;
  end;
end;}

{procedure TFrmEIntPart.PartSetText(Sender: TField; const Text: String);
begin
  if Text = _stFFPart then
    Sender.AsInteger:= _intFFPart;

  if Text = _stFSPart then
    Sender.AsInteger:= _intFSPart;
end;}

procedure TFrmEIntPart.btnPrintClick(Sender: TObject);
begin
  if FDM_IntSales.qrEItmFact.FieldByName('ITMSTAT').AsInteger =_intFSConfirmed then
    MainForm.acPPrintFactor.Execute
  else
  begin
    MbError(CannotPrint);
    Exit;
  end;
end;

procedure TFrmEIntPart.bbPreviewClick(Sender: TObject);
begin
  SendFlag := True;//False;
  if ComboBox1.ItemIndex = 0 then
  begin
    ppLabel40.Text := '';
    ppLabel41.Text := '';
    ppLabel42.Text := '';
    ppLabel43.Text := '';
    ppLabel44.Text := '';

    ppLabel73.Text := '';
    ppLabel77.Text := '';
    ppLabel78.Text := '';
    ppLabel79.Text := '';
    ppLabel81.Text := '';

    ppReport1.PrinterSetup.Copies:=ComboBox2.ItemIndex +1;
    If PrintQuery Then
      MbPrompt(NoReport)
    else
    begin
      if FileExists(ReportPath+'RRepFact.RTM') then
      begin
        ppReport1.Template.FileName:= ReportPath+'RRepFact.RTM';
        ppReport1.SaveAsTemplate:= True;
        ppReport1.Template.LoadFromFile;
      end;
(*
      if SendFlag then
      begin
        ppDBText82.Visible := False;
        ppDBText14.Visible := False;
        ppDBText63.Visible := False;
        ppDBText64.Visible := False;
        ppDBText68.Visible := False;
        ppDBText69.Visible := False;
        ppDBText70.Visible := False;
        ppDBText71.Visible := False;
        ppDBText72.Visible := False;
        ppDBText73.Visible := False;
        ppDBText74.Visible := False;
        ppDBText83.Visible := False;
        ppDBText85.Visible := False;
        ppDBText86.Visible := False;
      end
      else
      begin
        ppDBText82.Visible := True;
        ppDBText14.Visible := True;
        ppDBText63.Visible := True;
        ppDBText64.Visible := True;
        ppDBText68.Visible := True;
        ppDBText69.Visible := True;
        ppDBText70.Visible := True;
        ppDBText71.Visible := True;
        ppDBText72.Visible := True;
        ppDBText73.Visible := True;
        ppDBText74.Visible := True;
        ppDBText83.Visible := True;
        ppDBText85.Visible := True;
        ppDBText86.Visible := True;
      end;
*)
      with FDM_IntSales.qrETemp2, SQL do
      begin
        Clear;
        Add('SELECT VALIDITY_T.ADCODE , ADFNAME ,         ');
        Add('       ROUND(ADVAL) ADVAL,ADTYPE             ');
        Add('  FROM VALIDITY_T,ADDSUB_T                   ');
        Add(' WHERE VALIDITY_T.ADCODE = ADDSUB_T.ADCODE   ');
        Add('   AND ADNUM2 = :ADNUM2                      ');
        Add(' ORDER BY ADTYPE                             ');
        ParamByName('ADNUM2').AsString:= dbedItmNo.Text;
        SQL:= MbSqlConvert(SQL);
        Open;
        FDM_IntSales.qrETemp2.First;
        while not FDM_IntSales.qrETemp2.Eof do
        begin
          if FDM_IntSales.qrETemp2.FieldByName('ADTYPE').AsInteger = 1 then
          begin
            if ppLabel40.Text = '' then
            begin
              ppLabel40.Text := FDM_IntSales.qrETemp2.FieldByName('ADFNAME').AsString;
              ppLabel73.Text := SetCammaEdit(FDM_IntSales.qrETemp2.FieldByName('ADVAL').AsFloat);
            end
            else if ppLabel41.Text = '' then
            begin
              ppLabel41.Text := FDM_IntSales.qrETemp2.FieldByName('ADFNAME').AsString;
              ppLabel77.Text := SetCammaEdit(FDM_IntSales.qrETemp2.FieldByName('ADVAL').AsFloat);
            end
            else if ppLabel42.Text = '' then
            begin
              ppLabel42.Text := FDM_IntSales.qrETemp2.FieldByName('ADFNAME').AsString;
              ppLabel78.Text := SetCammaEdit(FDM_IntSales.qrETemp2.FieldByName('ADVAL').AsFloat);
            end;
          end
          else
          begin
            if ppLabel43.Text = '' then
            begin
              ppLabel43.Text := FDM_IntSales.qrETemp2.FieldByName('ADFNAME').AsString;
              ppLabel79.Text := SetCammaEdit(FDM_IntSales.qrETemp2.FieldByName('ADVAL').AsFloat);
            end
            else if ppLabel44.Text = '' then
            begin
              ppLabel44.Text := FDM_IntSales.qrETemp2.FieldByName('ADFNAME').AsString;
              ppLabel81.Text := SetCammaEdit(FDM_IntSales.qrETemp2.FieldByName('ADVAL').AsFloat);
            end;
          end;
          FDM_IntSales.qrETemp2.Next;
        end;
      end;

      if Sender = bbPreview then
        ppReport1.DeviceType := 'Screen'
      else
        ppReport1.DeviceType := 'Printer';
      ppReport1.Print;
    end;
  end
  else
  begin
    ppReport2.PrinterSetup.Copies:= ComboBox2.ItemIndex +1;
    If PrintQuery Then
      MbPrompt(NoReport)
    else
    begin
(****)
      if FileExists(ReportPath+'RRepFact1.RTM') then
      begin
        ppReport2.Template.FileName:= ReportPath+'RRepFact1.RTM';
        ppReport2.SaveAsTemplate:= True;
        ppReport2.Template.LoadFromFile;
        ppLabel113.OnPrint := ppLabel113Print;
        ppLabel112.OnPrint := ppLabel112Print;
      end;
(***)

(******************** Comment Rashidi 90-04-28
      if (TQuery(dbgrFactDet.DataSource.DataSet).RecordCount =1) then
      begin
        if FileExists(ReportPath+'RRepFact1-1.RTM') then
        begin
          ppReport2.Template.FileName:= ReportPath+'RRepFact1-1.RTM';
          ppReport2.SaveAsTemplate:= True;
          ppReport2.Template.LoadFromFile;
          ppLabel113.OnPrint := ppLabel113Print;
          ppLabel112.OnPrint := ppLabel112Print;
        end;
      end
      else if (TQuery(dbgrFactDet.DataSource.DataSet).RecordCount =2) then
      begin
        if FileExists(ReportPath+'RRepFact1-2.RTM') then
        begin
          ppReport2.Template.FileName:= ReportPath+'RRepFact1-2.RTM';
          ppReport2.SaveAsTemplate:= True;
          ppReport2.Template.LoadFromFile;
          ppLabel113.OnPrint := ppLabel113Print;
          ppLabel112.OnPrint := ppLabel112Print;
        end;
      end;
*************************************************)
(*
      if SendFlag then
      begin
        ppDBText82.Visible := False;
        ppDBText14.Visible := False;
        ppDBText63.Visible := False;
        ppDBText64.Visible := False;
        ppDBText68.Visible := False;
        ppDBText69.Visible := False;
        ppDBText70.Visible := False;
        ppDBText71.Visible := False;
        ppDBText72.Visible := False;
        ppDBText73.Visible := False;
        ppDBText74.Visible := False;
        ppDBText83.Visible := False;
        ppDBText85.Visible := False;
        ppDBText86.Visible := False;
      end
      else
      begin
        ppDBText82.Visible := True;
        ppDBText14.Visible := True;
        ppDBText63.Visible := True;
        ppDBText64.Visible := True;
        ppDBText68.Visible := True;
        ppDBText69.Visible := True;
        ppDBText70.Visible := True;
        ppDBText71.Visible := True;
        ppDBText72.Visible := True;
        ppDBText73.Visible := True;
        ppDBText74.Visible := True;
        ppDBText83.Visible := True;
        ppDBText85.Visible := True;
        ppDBText86.Visible := True;
      end;
*)
      if Sender = bbPreview then
        ppReport2.DeviceType := 'Screen'
      else
        ppReport2.DeviceType := 'Printer';
      ppReport2.Print;
    end;
  end;
end;

function TFrmEIntPart.PrintQuery: Boolean;
begin
  with FDM_IntSales.qrRFact , sql do
  begin
    Close;
    Clear;
    Add('SELECT DISTINCT ITEMFACT_T.ITMNO,ITMDTE,                ');
    Add('       ITEMFACR_T.GDS_CODE,DECODE(GDS_INFO_T.INFO_DESC,NULL,GDS_DESCF,GDS_DESCF ||''_''|| GDS_INFO_T.INFO_DESC) GDS_DESCF,UNT_DESC, ');
    Add('       ITMQTY, ITMPRICE,                       ');
    Add('       ROUND(NVL(ITMQTY,0) * NVL(ITMPRICE,0)) TotPrice,');
    Add('       NVL(ABATE,0) ABATE ,PACKVALUE ,ROUND((NVL(ITMQTY,0) * NVL(ITMPRICE,0))-NVL(ABATE,0)+NVL(PACKVALUE,0)) AS VALUEAFABATE, ');
    Add('       ROUND(((NVL(ITMQTY,0) * NVL(ITMPRICE,0))-NVL(ABATE,0)+NVL(PACKVALUE,0))*4/100)  AS  MALIAT ,PREPAY,       ');
    Add('       ROUND((((NVL(ITMQTY,0) * NVL(ITMPRICE,0))-ABATE+PACKVALUE))+(((NVL(ITMQTY,0) * NVL(ITMPRICE,0))-NVL(ABATE,0)+NVL(PACKVALUE,0))*4/100 )- NVL(PREPAY,0)) AS TOTALVALUE   ');
//    Add('  FROM ITEMFACT_T,ITEMFACR_T,GOODS,INFACTHVL_T,SALES.DOC_M,ORD_M_T,ORD_D_T,GDS_INFO_T             ');
    Add('  FROM ITEMFACT_T,ITEMFACR_T,GOODS, '); //INFACTHVL_T,SALES.DOC_M,ORD_M_T,ORD_D_T,GDS_INFO_T             ');
    Add('  ORD_M_T,ORD_D_T,GDS_INFO_T             ');
    Add(' WHERE ITEMFACT_T.ITMNO    =  ITEMFACR_T.ITMNO ');
    Add('   AND ITEMFACT_T.ITMKIND  = ITEMFACR_T.ITMKIND');
    Add('   AND ITEMFACT_T.ITMKIND  = :ITMKIND          ');
    Add('   AND ITEMFACT_T.ITMNO    = :ITMNO           ');
    Add('   AND ITEMFACR_T.GDS_CODE = GOODS.GDS_CODE    ');

{    Add('   AND INFACTHVL_T.ITMKIND  = :ITMKIND         ');
    Add('   AND INFACTHVL_T.ITMNO    = :ITMNO           ');
    Add('   AND ITMHVLYEAR           = :YEAR            ');
    Add('   AND ITMHVLYEAR           = DOC_M_YEAR       ');
    Add('   AND ITMHVLNO             = DOC_M_CODE       ');}
    Add('   AND ORD_M_T.ORD_CODE     = ORD_D_T.ORD_CODE ');
    Add('   AND ORD_M_T.ORD_YEAR     = ORD_D_T.ORD_YEAR ');
//    Add('   AND (DOC_M_SALEORNO       = ORD_M_T.ORD_CODE ');
//    Add('    OR DOC_M_LNFRM_NO       = ORD_M_T.ORD_CODE) ');
    Add('   AND ORD_M_T.ORD_YEAR     = :YEAR            ');
//    Add('   AND ORD_D_T.GDS_CODE     = :GDS_CODE        ');
    Add('   AND ORD_D_T.GDS_INFO     = INFO_CODE(+)        ');
    Add('   AND ITEMFACR_T.GDS_CODE = ORD_D_T.GDS_CODE  ');
    ParamByName('ITMNO').AsString    := dbedItmNo.Text;
    ParamByName('ITMKIND').AsInteger := dbcmbItmKind.ItemIndex+1;
    ParamByName('YEAR').AsInteger    :=  System_YY;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result := IsEmpty;
  end;
  if FDM_IntSales.qrRFact.IsEmpty then
  begin
    with FDM_IntSales.qrRFact , sql do
    begin
      Close;
      Clear;
      Add('SELECT DISTINCT ITEMFACT_T.ITMNO,ITMDTE,                                                                                                                 ');
      Add('       ITEMFACR_T.GDS_CODE,DECODE(GDS_INFO_T.INFO_DESC,NULL,GDS_DESCF,GDS_DESCF ||''_''|| GDS_INFO_T.INFO_DESC) GDS_DESCF,UNT_DESC,                      ');
      Add('       ITMQTY, ITMPRICE,                                                                                                                                 ');
      Add('       ROUND(NVL(ITMQTY,0) * NVL(ITMPRICE,0)) TotPrice,                                                                                                  ');
      Add('       NVL(ABATE,0) ABATE ,NVL(PACKVALUE,0) PACKVALUE,ROUND((NVL(ITMQTY,0) * NVL(ITMPRICE,0))-NVL(ABATE,0)+NVL(PACKVALUE,0)) AS VALUEAFABATE,                                          ');
      Add('       ROUND(((NVL(ITMQTY,0) * NVL(ITMPRICE,0))-NVL(ABATE,0)+NVL(PACKVALUE,0))*4/100)  AS  MALIAT ,PREPAY,                                                             ');
      Add('       ROUND((((NVL(ITMQTY,0) * NVL(ITMPRICE,0))-NVL(ABATE,0)+NVL(PACKVALUE,0)))+(((NVL(ITMQTY,0) * NVL(ITMPRICE,0))-NVL(ABATE,0)+NVL(PACKVALUE,0))*4/100 )- NVL(PREPAY,0)) AS TOTALVALUE   ');
      Add('  FROM ITEMFACT_T,ITEMFACR_T,GOODS,INFACTHVL_T,SALES.DOC_M,GDS_INFO_T                                                                                    ');
      Add(' WHERE ITEMFACT_T.ITMNO    =  ITEMFACR_T.ITMNO                                                                                                           ');
      Add('   AND ITEMFACT_T.ITMKIND  = ITEMFACR_T.ITMKIND                                                                                                          ');
      Add('   AND ITEMFACT_T.ITMKIND  = :ITMKIND                                                                                                                    ');
      Add('   AND ITEMFACT_T.ITMNO    = :ITMNO                                                                                                                      ');
      Add('   AND ITEMFACR_T.GDS_CODE = GOODS.GDS_CODE                                                                                                              ');
      Add('   AND INFACTHVL_T.ITMKIND  = :ITMKIND                                                                                                                   ');
      Add('   AND INFACTHVL_T.ITMNO    = :ITMNO                                                                                                                     ');
      Add('   AND ITMHVLYEAR           = :YEAR                                                                                                                      ');
      Add('   AND ITMHVLYEAR           = DOC_M_YEAR                                                                                                                 ');
      Add('   AND ITMHVLNO             = DOC_M_CODE                                                                                                                 ');
      Add('   AND GOODS.GDS_INFO     = INFO_CODE(+)                                                                                                                 ');
      ParamByName('ITMNO').AsString    := dbedItmNo.Text;
      ParamByName('ITMKIND').AsInteger := dbcmbItmKind.ItemIndex+1;
      ParamByName('YEAR').AsInteger    :=  System_YY;
      SQL:= MbSqlConvert(SQL);
      Open;
      Result := IsEmpty;
      SendFlag := True;
    end;
  end;
end;

procedure TFrmEIntPart.ppLabel38Print(Sender: TObject);
begin
  ppLabel38.Text:= '('+' '+MbStringNumber(Round(StrToFloat(StringReplace(edTotCost.Text, ',' , '' ,[rfReplaceAll])))) + ' '+'—Ì«·' +' '+')';
end;

procedure TFrmEIntPart.ppLabel39Print(Sender: TObject);
begin
  ppLabel39.Text := edTotCost.Text;
end;

procedure TFrmEIntPart.CF_RepFact(DataSet: TDataSet);
var
  I : Integer;
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
(**    Add('SELECT ID.CUSTNAME,NVL(H.CUST_ADD,ID.CUSTADD) CUSTADD,ID.CUSTTEL, ');
    Add('       ID.ECONOMIC_CODE,ID.CUSTREGISTER,ID.CUST_CO');
    Add('  FROM HAVALEH H,                                                ');
    Add('       IDCUSTOMER_T ID,                                          ');
    Add('       INFACTHVL_T I                                             ');
    Add(' WHERE H.CUT_CODE   = ID.CUSTNO                                 ');
    Add('   AND H.DOC_M_CODE = I.ITMHVLNO                                 ');
    Add('   AND H.DOC_M_YEAR = I.ITMHVLYEAR                               ');
    Add('   AND I.ITMNO      = :ITMNO                                     ');
    Add('   AND I.ITMKIND    = :ITMKIND                                          ');
    ParamByName('ITMNO').AsString:= DataSet.FieldByName('ITMNO').AsString;
    ParamByName('ITMKIND').AsInteger:= dbcmbItmKind.ItemIndex+1;*)

    Add('SELECT I.CUSTNAME,I.CUSTADD,I.CUSTTEL,');
    Add('       I.ECONOMIC_CODE,I.CUSTREGISTER,I.CUST_CO');
    Add('  FROM IDCUSTOMER_T I');
{    Add('       OFFERTIT_T O ,  ');
    Add('       ITEMFACT_T IT   ');}
    Add(' WHERE CUSTNO = :CUSTNO');
{    Add('   AND ITMNO = :CUSTNO ');  }

(*
    Add('SELECT I.CUSTNAME,I.CUSTADD,I.CUSTTEL,          ');
    Add('       I.ECONOMIC_CODE,I.CUSTREGISTER,I.CUST_CO ');
    Add('  FROM IDCUSTOMER_T I,                          ');
    Add('       OFFERTIT_T O                             ');
    Add(' WHERE O.CUSTNO = I.CUSTNO                      ');
*)
//    ParamByName('CUSTNO').AsString:= DataSet.FieldByName('ITMNO').AsString;
    ParamByName('CUSTNO').AsString:= CustCodeInt;
    SQL:= MbSqlConvert(SQL);
    Open;
    DataSet.FieldByName('CF_CUSTNAME').AsString := FieldByName('CUSTNAME').AsString;
    DataSet.FieldByName('CF_CUSTADD').AsString  := FieldByName('CUSTADD').AsString;
    DataSet.FieldByName('CF_CUSTTEL').AsString  := FieldByName('CUSTTEL').AsString;
    DataSet.FieldByName('CF_ECONOMIC').AsString := FieldByName('ECONOMIC_CODE').AsString;
    DataSet.FieldByName('CF_CUSTREG').AsString  := FieldByName('CUSTREGISTER').AsString;
    DataSet.FieldByName('CF_CUSTCO').AsString  := FieldByName('CUST_CO').AsString;
  end;

  with FDM_IntSales.qrETmpH, SQL do
  begin
    Clear;
    Add('SELECT Distinct ITMHVLNO              ');
    Add('  FROM INFACTHVL_T           ');
    Add(' WHERE ITMNO      = :ITMNO   ');
    Add('   AND ITMKIND    = :ITMKIND ');
    ParamByName('ITMNO').AsString:= DataSet.FieldByName('ITMNO').AsString;
    ParamByName('ITMKIND').AsInteger:= dbcmbItmKind.ItemIndex+1;
    SQL:= MbSqlConvert(SQL);
    Open;
    FDM_IntSales.qrETmpH.First;
    I := 0;
    while not FDM_IntSales.qrETmpH.Eof do
    begin
      I := I+1;
      if I < 14 then
        DataSet.FieldByName('CF_Havaleh'+IntToStr(I)).AsString := FDM_IntSales.qrETmpH.FieldByName('ITMHVLNO').AsString;
      Next;
    end;
  end;

  with FDM_IntSales.qrETmpOrd, SQL do
  begin
    Clear;
    Add('SELECT DISTINCT ORD_NO             ');
    Add('  FROM INFACTHVL_T I,HAVALEH H     ');
    Add(' WHERE I.ITMNO      = :ITMNO       ');
    Add('   AND I.ITMKIND    = :ITMKIND     ');
    Add('   AND I.ITMHVLNO   = H.DOC_M_CODE ');
    Add('   AND I.ITMHVLYEAR = H.DOC_M_YEAR ');
    ParamByName('ITMNO').AsString:= DataSet.FieldByName('ITMNO').AsString;
    ParamByName('ITMKIND').AsInteger:= dbcmbItmKind.ItemIndex+1;
    SQL:= MbSqlConvert(SQL);
    Open;
    FDM_IntSales.qrETmpOrd.First;
    while not FDM_IntSales.qrETmpOrd.Eof do
    begin
      if DataSet.FieldByName('CF_ORDNO1').AsString = '' then
        DataSet.FieldByName('CF_ORDNO1').AsString := FDM_IntSales.qrETmpOrd.FieldByName('ORD_NO').AsString
      else
        DataSet.FieldByName('CF_ORDNO1').AsString := DataSet.FieldByName('CF_ORDNO1').asString+'/'+FDM_IntSales.qrETmpOrd.FieldByName('ORD_NO').AsString;
      Next;
    end;
  end;
end;

procedure TFrmEIntPart.ppLabel98Print(Sender: TObject);
begin
  ppLabel98.Text:= '('+' '+MbStringNumber(Round(StrToFloat(StringReplace(edTotNetCost.Text, ',' , '' ,[rfReplaceAll])))) + ' '+'—Ì«·' +' '+')';
end;

procedure TFrmEIntPart.ppLabel100Print(Sender: TObject);
begin
  ppLabel100.Text := edTotNetCost.Text;
end;

procedure TFrmEIntPart.ppLabel112Print(Sender: TObject);
begin
  with FDM_IntSales.qrTmpRep2 , sql do
  begin
    Close;
    Clear;
    Add('SELECT         ');
    Add('       SUM(ROUND((((NVL(ITMQTY,0) * NVL(ITMPRICE,0))-NVL(ABATE,0)+NVL(PACKVALUE,0)))+(((NVL(ITMQTY,0) * NVL(ITMPRICE,0))-NVL(ABATE,0)+NVL(PACKVALUE,0))*4/100 )- NVL(PREPAY,0))) AS TOTALVALUE   ');
    Add('  FROM ITEMFACT_T,ITEMFACR_T,GOODS  ');
    Add(' WHERE ITEMFACT_T.ITMNO    =  ITEMFACR_T.ITMNO ');
    Add('   AND ITEMFACT_T.ITMKIND  = ITEMFACR_T.ITMKIND');
    Add('   AND ITEMFACT_T.ITMKIND  = :ITMKIND          ');
    Add('   AND ITEMFACT_T.ITMNO    = :ITMNO           ');
    Add('   AND ITEMFACR_T.GDS_CODE = GOODS.GDS_CODE    ');
    ParamByName('ITMNO').AsString    := dbedItmNo.Text;
    ParamByName('ITMKIND').AsInteger := dbcmbItmKind.ItemIndex+1;
    SQL:= MbSqlConvert(SQL);
    Open;
  end;
  if FDM_IntSales.qrTmpRep2.FieldByName('TOTALVALUE').AsString <> '' then
    ppLabel112.Text:= MbStringNumber(Round(StrToFloat(StringReplace(FDM_IntSales.qrTmpRep2.FieldByName('TOTALVALUE').AsString, ',' , '' ,[rfReplaceAll])))) + ' '+'—Ì«·'
  else
    ppLabel112.Text:= '’›—'+ ' '+'—Ì«·';
end;

procedure TFrmEIntPart.ppLabel113Print(Sender: TObject);
begin
  with FDM_IntSales.qrTmpRep1 , sql do
  begin
    Close;
    Clear;
    Add('SELECT         ');
    Add('       SUM(ROUND((((NVL(ITMQTY,0) * NVL(ITMPRICE,0))-NVL(ABATE,0)+NVL(PACKVALUE,0)))+(((NVL(ITMQTY,0) * NVL(ITMPRICE,0))-NVL(ABATE,0)+NVL(PACKVALUE,0))*4/100 )- NVL(PREPAY,0))) AS TOTALVALUE   ');
    Add('  FROM ITEMFACT_T,ITEMFACR_T,GOODS  ');
    Add(' WHERE ITEMFACT_T.ITMNO    =  ITEMFACR_T.ITMNO ');
    Add('   AND ITEMFACT_T.ITMKIND  = ITEMFACR_T.ITMKIND');
    Add('   AND ITEMFACT_T.ITMKIND  = :ITMKIND          ');
    Add('   AND ITEMFACT_T.ITMNO    = :ITMNO           ');
    Add('   AND ITEMFACR_T.GDS_CODE = GOODS.GDS_CODE    ');
    ParamByName('ITMNO').AsString    := dbedItmNo.Text;
    ParamByName('ITMKIND').AsInteger := dbcmbItmKind.ItemIndex+1;
    SQL:= MbSqlConvert(SQL);
    Open;
  end;
  ppLabel113.Text := FDM_IntSales.qrTmpRep1.FieldByName('TOTALVALUE').AsString;//edTotCost.Text;
end;

procedure TFrmEIntPart.spDesignClick(Sender: TObject);
begin
  if PrintQuery then
  begin
  end;
  if ComboBox1.ItemIndex = 0 then
  begin
    ppDesigner.Report := ppReport1;
    ppDesigner.Report.Template.FileName:= ReportPath+'RRepFact.RTM';
    if FileExists(ReportPath+'RRepFact.RTM') then
    begin
      ppDesigner.Report.SaveAsTemplate:= True;
      ppDesigner.Report.Template.LoadFromFile;
    end;
    ppDesigner.ShowModal;
  end
  else
  begin
    ppDesigner.Report := ppReport2;
    ppDesigner.Report.Template.FileName:= ReportPath+'RRepFact1.RTM';
    if FileExists(ReportPath+'RRepFact1.RTM') then
    begin
      ppDesigner.Report.SaveAsTemplate:= True;
      ppDesigner.Report.Template.LoadFromFile;
    end;
    ppDesigner.ShowModal;
  end;
end;

procedure TFrmEIntPart.ppDBText23GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,1,1);
end;

procedure TFrmEIntPart.ppDBText24GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,2,1);
end;

procedure TFrmEIntPart.ppDBText25GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,3,1);
end;

procedure TFrmEIntPart.ppDBText26GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,4,1);
end;

procedure TFrmEIntPart.ppDBText27GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,5,1);
end;

procedure TFrmEIntPart.ppDBText28GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,6,1);
end;

procedure TFrmEIntPart.ppDBText29GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,3,1);
end;

procedure TFrmEIntPart.ppDBText30GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,8,1);
end;

procedure TFrmEIntPart.ppDBText33GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,9,1);
end;

procedure TFrmEIntPart.ppDBText34GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,10,1);
end;

procedure TFrmEIntPart.ppDBText53GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,11,1);
end;

procedure TFrmEIntPart.ppDBText54GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,12,1);
end;

procedure TFrmEIntPart.ppDBText31GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,1,1);
end;

procedure TFrmEIntPart.ppDBText32GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,2,1);
end;

procedure TFrmEIntPart.ppDBText35GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,3,1);
end;

procedure TFrmEIntPart.ppDBText36GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,4,1);
end;

procedure TFrmEIntPart.ppDBText37GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,5,1);
end;

procedure TFrmEIntPart.ppDBText38GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,6,1);
end;

procedure TFrmEIntPart.ppDBText39GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,7,1);
end;

procedure TFrmEIntPart.ppDBText40GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,8,1);
end;

procedure TFrmEIntPart.ppDBText41GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,9,1);
end;

procedure TFrmEIntPart.ppDBText42GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,10,1);
end;

procedure TFrmEIntPart.ppDBText43GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,1,1);
end;

procedure TFrmEIntPart.ppDBText44GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,2,1);
end;

procedure TFrmEIntPart.ppDBText45GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,3,1);
end;

procedure TFrmEIntPart.ppDBText46GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,4,1);
end;

procedure TFrmEIntPart.ppDBText47GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,5,1);
end;

procedure TFrmEIntPart.ppDBText48GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,6,1);
end;

procedure TFrmEIntPart.ppDBText49GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,7,1);
end;

procedure TFrmEIntPart.ppDBText50GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,8,1);
end;

procedure TFrmEIntPart.ppDBText51GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,9,1);
end;

procedure TFrmEIntPart.ppDBText52GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,10,1);
end;

procedure TFrmEIntPart.ppDBText18GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,1,4);
end;

procedure TFrmEIntPart.ppDBText55GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,5,2);
end;

procedure TFrmEIntPart.ppDBText56GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text,7,2);
end;

procedure TFrmEIntPart.SelectOffer;
begin
  with qrOfferT do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM OFFERTIT_T T, OFFERDTL_T R');
    SQL.Add('WHERE T.OFNUM = :OFNUM');
    SQL.Add('  AND T.OFNUM = R.OFNUM');
    ParamByName('OFNUM').AsString := FDM_IntSales.qrEItmFact.FieldByName('ITMNO').AsString;
    Open;
  end;
  with FDM_IntSales.qrEItmFactDet do
  begin
    while not qrOfferT.Eof do
    begin
      Insert;
      FieldByName('ITMNO').AsString := qrOfferT.FieldByName('OFNUM').AsString;
      FieldByName('ITMKIND').AsString := FDM_IntSales.qrEItmFact.FieldByName('ITMKIND').AsString;
      FieldByName('ITMROW').AsString := qrOfferT.FieldByName('OFSEQ').AsString;
      FieldByName('GDS_CODE').AsString := qrOfferT.FieldByName('GDS_CODE').AsString;
      FieldByName('CU_CODE').AsString := qrOfferT.FieldByName('CU_CODE').AsString;
      FieldByName('ITMQTY').AsString := qrOfferT.FieldByName('OFQTY').AsString;
      FieldByName('ITMPRICE').AsString := qrOfferT.FieldByName('OFPRICE').AsString;
      FieldByName('ITMARZPRICE').AsString := '';//qrOfferT.FieldByName('ITMARZPRICE').AsString;
      FieldByName('PREPAY').AsString := '';//qrOfferT.FieldByName('PREPAY').AsString;
      FieldByName('ABATE').AsString := qrOfferT.FieldByName('ABATE').AsString;
      FieldByName('PACKVALUE').AsString := qrOfferT.FieldByName('PACKVALUE').AsString;
      qrOfferT.Next;
    end;
  end;
end;

end.

