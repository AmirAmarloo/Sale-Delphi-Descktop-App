{$I Direct.Inc}
unit EParam;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus,DbTables,DMUParam, {$I MbUses.Inc};

type
  TFrmEParam = class(TMbForm)
    panButton: TPanel;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    sbExit: TSpeedButton;
    bbPrint: TBitBtn;
    PMen: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    pgMain: TPageControl;
    tbsCust: TTabSheet;
    Panel9: TPanel;
    Label1: TLabel;
    sbList: TSpeedButton;
    dbedCustNo: TDBEdit;
    Panel5: TPanel;
    Label3: TLabel;
    Label10: TLabel;
    Label16: TLabel;
    Label21: TLabel;
    Label11: TLabel;
    Label23: TLabel;
    Label27: TLabel;
    Label34: TLabel;
    Label22: TLabel;
    dbedCustName: TDBEdit;
    dbedCustAdd: TDBEdit;
    dbedCustPost: TDBEdit;
    dbedCustTel: TDBEdit;
    dbedCustMail: TDBEdit;
    dbedCuseCo: TDBEdit;
    dbedPostCode: TDBEdit;
    dbedFax: TDBEdit;
    tbsGds: TTabSheet;
    tbsKasr: TTabSheet;
    Label29: TLabel;
    Label30: TLabel;
    dbgrAddSub: TDBGrid;
    tbsFinalCom: TTabSheet;
    tbsCustType: TTabSheet;
    Label2: TLabel;
    Label4: TLabel;
    dbedCustType: TDBEdit;
    dbedCustTypeDesc: TDBEdit;
    sbHelpCustType: TSpeedButton;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    dbcmbGrp: TDBComboBox;
    Label6: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    Label15: TLabel;
    dbedGCode: TDBEdit;
    dbedGDesc: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    SpeedButton2: TSpeedButton;
    dbedGdsCode: TDBEdit;
    Label14: TLabel;
    sbGood: TSpeedButton;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    DBEdit2: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label25: TLabel;
    DBComboBox2: TDBComboBox;
    DBEdit12: TDBEdit;
    Label26: TLabel;
    Label28: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBComboBox3: TDBComboBox;
    Label33: TLabel;
    DBEdit15: TDBEdit;
    Label35: TLabel;
    dbedAbate: TDBEdit;
    tbsGoodsInfo: TTabSheet;
    dbgrGoodsInfo: TDBGrid;
    Label36: TLabel;
    dblGdsInfo: TDBLookupComboBox;
    Label37: TLabel;
    DBEdit16: TDBEdit;
    Label38: TLabel;
    dbedNatCode: TDBEdit;
    tbsStateInfo: TTabSheet;
    TabSheet2: TTabSheet;
    dbgrState: TDBGrid;
    dbgrCity: TDBGrid;
    SpeedButton3: TSpeedButton;
    dbedState: TDBEdit;
    DBEdit18: TDBEdit;
    Label39: TLabel;
    SpeedButton4: TSpeedButton;
    dbedCity: TDBEdit;
    DBEdit20: TDBEdit;
    Label40: TLabel;
    btnLock: TBitBtn;
    SpeedButton5: TSpeedButton;
    Label41: TLabel;
    dbedVisitior: TDBEdit;
    DBEdit22: TDBEdit;
    Label42: TLabel;
    dbedVisitorDate: TDBEdit;
    GroupBox1: TGroupBox;
    BitBtn2: TBitBtn;
    chbCard: TCheckBox;
    chbLicence: TCheckBox;
    chbOther: TCheckBox;
    dbedOthr: TDBEdit;
    btnRelCust: TButton;
    btnAssociate: TButton;
    SpeedButton6: TSpeedButton;
    Label7: TLabel;
    dbedCustDir: TDBEdit;
    DBEdit19: TDBEdit;
    TabSheet1: TTabSheet;
    dbgrEBox: TDBGrid;
    dbedGDSBox: TDBEdit;
    SpeedButton7: TSpeedButton;
    Label9: TLabel;
    DBEdit21: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit23: TDBEdit;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    DBEdit24: TDBEdit;
    Label46: TLabel;
    DBEdit25: TDBEdit;
    Label47: TLabel;
    DBEdit26: TDBEdit;
    Label48: TLabel;
    DBEdit27: TDBEdit;
    Label49: TLabel;
    DBEdit28: TDBEdit;
    Label50: TLabel;
    DBEdit29: TDBEdit;
    Label51: TLabel;
    DBComboBox4: TDBComboBox;
    Label52: TLabel;
    DBEdit30: TDBEdit;
    Label53: TLabel;
    DBEdit31: TDBEdit;
    tbsCustKind: TTabSheet;
    dbgrECustKind: TDBGrid;
    SpeedButton8: TSpeedButton;
    Label54: TLabel;
    dbedCustKind: TDBEdit;
    DBEdit33: TDBEdit;
    Label55: TLabel;
    DBEdit32: TDBEdit;
    DBComboBox5: TDBComboBox;
    Label56: TLabel;
    Label57: TLabel;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    qrMaxCust: TQuery;
    Label58: TLabel;
    DBComboBox6: TDBComboBox;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    Button1: TButton;
    qrTemp: TQuery;
    Label59: TLabel;
    DBComboBox7: TDBComboBox;
    Label60: TLabel;
    DBEdit38: TDBEdit;
    Label61: TLabel;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    SpeedButton11: TSpeedButton;
    Label62: TLabel;
    DBEdit41: TDBEdit;
    SpeedButton12: TSpeedButton;
    DBEdit42: TDBEdit;
    Label63: TLabel;
    DBEdit43: TDBEdit;
    Label64: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBEdit44: TDBEdit;
    Label65: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure sbExitClick(Sender: TObject);
    procedure pgMainChange(Sender: TObject);
    procedure sbListClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbsCustShow(Sender: TObject);
    procedure pgMainChanging(Sender: TObject; var AllowChange: Boolean);
    procedure Panel5Enter(Sender: TObject);
    procedure dbedCustNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedCustNoExit(Sender: TObject);
    procedure BtnPostExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnPostClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtnDelClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure sbGoodClick(Sender: TObject);
    procedure dbedGdsCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbsFinalComShow(Sender: TObject);
    procedure dbedGdsCodeExit(Sender: TObject);
    procedure tbsGdsShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbgrAddSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbsKasrShow(Sender: TObject);
    procedure edCuCodeKeyPress(Sender: TObject; var Key: Char);
    procedure tbsCustTypeShow(Sender: TObject);
    procedure dbedCustTypeExit(Sender: TObject);
    procedure sbHelpCustTypeClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedCustTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dbedGCodeExit(Sender: TObject);
    procedure tbsGoodsInfoShow(Sender: TObject);
    procedure tbsStateInfoShow(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure dbgrCityEditButtonClick(Sender: TObject);
    procedure btnLockClick(Sender: TObject);
    procedure dbedStateExit(Sender: TObject);
    procedure dbedCityExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure dbedVisitiorExit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure chbOtherClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dbedCustDirExit(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure dbedGDSBoxExit(Sender: TObject);
    procedure tbsCustKindShow(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure dbedCustKindExit(Sender: TObject);
    procedure dbedCustKindKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedCityKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedCustDirKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure DBEdit36Exit(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure DBEdit39Exit(Sender: TObject);
    procedure dbedStateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit39KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton12Click(Sender: TObject);
    procedure DBEdit41Exit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
   IsLock0,
   IsLock1,
   IsLock2,
   IsLock3,
   IsLock4,
   IsLock5,
   IsLock6,
   IsLock7,
   IsLock8,
   IsLock9: Boolean;

   DelFlag0,
   DelFlag1,
   DelFlag2,
   DelFlag3,
   DelFlag4,
   DelFlag5,
   DelFlag6,
   DelFlag7,
   DelFlag8,
   DelFlag9: Boolean;

   CheckFlag: Boolean;
   FDM_Param: TDM_Param;
   {CalcFlag, TecDelFlag, TecFlag, FlagCheck,} Flag: Boolean;
   SeqControlFinPro,
   SeqControlPck,
   SeqControlTec: TMbDbGridControl;
   FVal: Double;
   BrCustCode: String;
   procedure ChangeInit;
   procedure FUpdateError(DataSet: TDataSet;
      E: EDatabaseError; UpdateKind: TUpdateKind;
      var UpdateAction: TUpdateAction);
   procedure FOnStateChanged(Sender: TObject);

   //‰Ê⁄ „‘ —Ì
   function CustTypeCheckBeforeSave: Boolean;
   procedure CustomerTypeSave;
   procedure CustomerTypeDelete;
   procedure qrECustomerAfterScroll(DataSet: TDataSet);

   //„‘ —Ì«‰
   function  CustCheckBeforeSave: Boolean;
   procedure CF_CustomerCalcFields(DataSet: TDataSet);
   procedure GrpOnGetText(Sender: TField; var Text: String; DisplayText: Boolean); //ê—ÊÂ »‰œÌ
   procedure GrpOnSetText(Sender: TField; const Text: String); //ê—ÊÂ »‰œÌ
   procedure TAF_YEAROnGetText(Sender: TField; var Text: String; DisplayText: Boolean);
   procedure TAF_YEAROnSetText(Sender: TField; const Text: String);
   procedure TAF_YEARValidate(Sender: TField);
   procedure CustomerSave;
   procedure CustomerDelete;
   procedure AddToInventory;
//   procedure AddToForSend(CustNo: String;);
   procedure CustomerNewRecord(DataSet: TDataSet);
   procedure GdsStatOnGetText(Sender: TField; var Text: String; DisplayText: Boolean);
   procedure GdsStatOnSetText(Sender: TField; const Text: String);

   //¬‰«·Ì“ „Õ’Ê·
   function  GdsCheckBeforeSave: Boolean;
   procedure SrvAfterDelete(DataSet: TDataSet);
   procedure GdsSave;
   procedure GdsDelete;
   procedure CF_GdsCalcFields(DataSet: TDataSet);

   procedure CF_STATENAMECalcFields(DataSet: TDataSet);
   procedure qrECityCT_STATEValidate(Sender: TField);

   procedure qrEBoxValidate(Sender: TField);

   //”«Ì— «ÿ·«⁄«  „Õ’Ê·
   function  GdsInfoCheckBeforeSave: Boolean;
   procedure CF_FinProdCalcFields(DataSet: TDataSet);
   procedure ProdTypOnGetText(Sender: TField; var Text: String; DisplayText: Boolean); // ‰Ê⁄ „Õ’Ê·
   procedure ProdTypOnSetText(Sender: TField; const Text: String); // ‰Ê⁄ „Õ’Ê·
   procedure FinPrAfterDelete(DataSet: TDataSet);
   procedure GdsInfoSave;
   procedure GdsInfoDelete;
   procedure InsFinProdDet(AHasDetail: Boolean);
   procedure REDUCTION_PACKOnGetText(Sender: TField; var Text: String; DisplayText: Boolean); //ê—ÊÂ »‰œÌ
   procedure REDUCTION_PACKOnSetText(Sender: TField; const Text: String); //ê—ÊÂ »‰œÌ
   procedure REDUCTION_PACKNewRecord(DataSet: TDataSet);
   procedure PACK_TYPEOnGetText(Sender: TField; var Text: String; DisplayText: Boolean); //ê—ÊÂ »‰œÌ
   procedure PACK_TYPEOnSetText(Sender: TField; const Text: String); //ê—ÊÂ »‰œÌ

   procedure ISO_TYPEOnGetText(Sender: TField; var Text: String; DisplayText: Boolean); //‘«„· «Ì“Ê
   procedure ISO_TYPEOnSetText(Sender: TField; const Text: String); //‘«„· «Ì“Ê
   procedure qrEGdsInfoGDS_ABATEValidate(Sender: TField);

   // ﬂ”Ê— Ê «÷«›« 
   procedure CF_AddSubCalc(DataSet: TDataSet);
   procedure ASBeforeScroll(DataSet: TDataSet);
   procedure ASBeforeDelete(DataSet: TDataSet);
   procedure ASBeforePost(DataSet: TDataSet);
   procedure ASAfterDelete(DataSet: TDataSet);
   procedure ADCodeValidate(Sender: TField);
   procedure ADKindValidate(Sender: TField);
   procedure ADTypeValidate(Sender: TField);
   procedure ValDefValidate(Sender: TField);
   procedure TypGetText(Sender: TField; var Text: string; DisplayText: Boolean);
   procedure TypSetText(Sender: TField; const Text: string);
   procedure VCH_TYPEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
   procedure VCH_TYPESetText(Sender: TField; const Text: string);
   procedure KndGetText(Sender: TField; var Text: string; DisplayText: Boolean);
   procedure KndSetText(Sender: TField; const Text: string);
   procedure AddSubSave;
   procedure AddSubDelete;
   function ExistAddInValidity(Sender: TField): Boolean;

   procedure AddToAccCust;
   // „‘Œ’«  ›‰Ì
   procedure GdsBeforePost(DataSet: TDataSet);
   procedure GdsBeforeScroll(DataSet: TDataSet);
   procedure GdsBeforeDelete(DataSet: TDataSet);
   procedure GdsAfterDelete(DataSet: TDataSet);
   procedure InfoCodeValidate(Sender: TField);
   procedure GoodsInfoSave;
   procedure GoodsInfoDelete;
   procedure StateBeforePost(DataSet: TDataSet);
   procedure StateBeforeScroll(DataSet: TDataSet);
   procedure StateBeforeDelete(DataSet: TDataSet);
   procedure StateAfterDelete(DataSet: TDataSet);
   procedure StateSave;
   procedure StateDelete;
   procedure CityBeforePost(DataSet: TDataSet);
   procedure CityBeforeScroll(DataSet: TDataSet);
   procedure CityBeforeDelete(DataSet: TDataSet);
   procedure CityAfterDelete(DataSet: TDataSet);
   procedure CitySave;
   procedure CityDelete;
   procedure BoxBeforePost(DataSet: TDataSet);
   procedure BoxBeforeScroll(DataSet: TDataSet);
   procedure BoxBeforeDelete(DataSet: TDataSet);
   procedure BoxAfterDelete(DataSet: TDataSet);
   procedure BoxSave;
   procedure BoxDelete;
   procedure CustKindBeforePost(DataSet: TDataSet);
   procedure CustKindBeforeScroll(DataSet: TDataSet);
   procedure CustKindBeforeDelete(DataSet: TDataSet);
   procedure CustKindAfterDelete(DataSet: TDataSet);
   procedure CustKindSave;
   procedure CustKindDelete;
   procedure InsertIntoIdCustomer(CustNo: string);
  public
    DbHandle: TMbHandle;
    CustId: String;
    CustName: String;
  end;

var
  FrmEParam: TFrmEParam;

implementation

uses MainUnit, HCustom, HBidVch, HUnit, HFinCom,
     HPrj, Help, Vars, UMessage, Functions, Utility;

{$R *.DFM}

//=============================================

procedure TFrmEParam.ChangeInit;
begin
  if pgMain.ActivePage.PageIndex in [4,5,6,7,8,9] then
    bbPrint.Visible := True
  else
    bbPrint.Visible := False;

  if pgMain.ActivePage.PageIndex in [0,1,2,3] then
    begin
      sbLast.Visible  := True;
      sbNext.Visible  := True;
      sbPrev.Visible  := True;
      sbFirst.Visible := True;
    end
  else
    begin
      sbLast.Visible  := False;
      sbNext.Visible  := False;
      sbPrev.Visible  := False;
      sbFirst.Visible := False;
    end;
end;

//=============================================

procedure TFrmEParam.fcShapeBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmEParam.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEParam.pgMainChange(Sender: TObject);
begin
  ChangeInit;
end;

procedure TFrmEParam.sbListClick(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomer(Code) then
  begin
    dbedCustNo.SetFocus;
    with FDM_Param.qrECustomer do
    begin
      Edit;
      FieldByName('CUSTNO').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEParam.FormShow(Sender: TObject);
begin
  pgMain.ActivePage := tbsCustType;
  pgMain.Pages[2].Visible := False;

{$IFNDEF AMANI}
    BtnDel.Enabled := True;
{$ENDIF}

end;

procedure TFrmEParam.FormCreate(Sender: TObject);
begin
  FDM_Param:= TDM_Param(MbDM.GetDM(FDM));
  SetStatusBar(stbMain);
  SetFormColor(Self,_FormColor);

  with FDM_Param do
  begin
    qrGdsInfo.Close;
    qrGdsInfo.Open;

    with qrECustomer do
    begin
      OnCalcFields:= CF_CustomerCalcFields;
      FieldByName('CUSTGRP').OnGetText := GrpOnGetText;
      FieldByName('CUSTGRP').OnSetText := GrpOnSetText;
      FieldByName('TAF_YEAR').OnGetText := TAF_YEAROnGetText;
      FieldByName('TAF_YEAR').OnSetText := TAF_YEAROnSetText;
      FieldByName('TAF_YEAR').OnValidate := TAF_YEARValidate;
      OnNewRecord:= CustomerNewRecord;
      OnUpdateError:= FUpdateError;
      AfterScroll := qrECustomerAfterScroll;
    end;

    with dsECustomer do
    begin
      OnStateChange:= nil;
      OnStateChange:= FOnStateChanged;
    end;

    with qrECustType do
    begin
      OnUpdateError:= FUpdateError;
    end;

    with dsECustType do
    begin
      OnStateChange:= nil;
      OnStateChange:= FOnStateChanged;
    end;

    with qrEGds do
    begin
      OnUpdateError:= FUpdateError;
      OnCalcFields := CF_GdsCalcFields;
    end;

    with dsEGds do
    begin
      OnStateChange:= nil;
      OnStateChange:= FOnStateChanged;
    end;

    with qrEGdsInfo do
    begin
      OnCalcFields:= CF_FinProdCalcFields;
      FieldByName('REDUCTION_PACK').OnGetText:= REDUCTION_PACKOnGetText;
      FieldByName('REDUCTION_PACK').OnSetText:= REDUCTION_PACKOnSetText;
      FieldByName('PACK_TYPE').OnGetText:= PACK_TYPEOnGetText;
      FieldByName('PACK_TYPE').OnSetText:= PACK_TYPEOnSetText;
      FieldByName('ISO_TYPE').OnGetText:= ISO_TYPEOnGetText;
      FieldByName('ISO_TYPE').OnSetText:= ISO_TYPEOnSetText;
      FieldByName('GDS_ABATE').OnValidate:= qrEGdsInfoGDS_ABATEValidate;
      FieldByName('GDS_STATUSE').OnGetText:= GdsStatOnGetText;
      FieldByName('GDS_STATUSE').OnSetText:= GdsStatOnSetText;
      OnNewRecord:= REDUCTION_PACKNewRecord;
      OnUpdateError:= FUpdateError;
    end;

    with dsEGdsInfo do
    begin
      OnStateChange:= nil;
      OnStateChange:= FOnStateChanged;
    end;

    with qrEAddSub do
    begin
      OnCalcFields:= CF_AddSubCalc;
      BeforePost:= ASBeforePost;
      BeforeDelete:= ASBeforeDelete;
      BeforeScroll:= ASBeforeScroll;
      AfterDelete:= ASAfterDelete;
      FieldByName('VALDEF').OnValidate := ValDefValidate;
      FieldByName('ADCODE').OnValidate := ADCodeValidate;
      FieldByName('ADKIND').OnValidate := ADKindValidate;
      FieldByName('ADTYPE').OnValidate := ADTypeValidate;
      FieldByName('ADTYPE').OnGetText  := TypGetText;
      FieldByName('ADTYPE').OnSetText  := TypSetText;
      FieldByName('VCH_TYPE').OnGetText:= VCH_TYPEGetText;
      FieldByName('VCH_TYPE').OnSetText:= VCH_TYPESetText;
      FieldByName('ADKIND').OnGetText  := KndGetText;
      FieldByName('ADKIND').OnSetText  := KndSetText;

      OnUpdateError:= FUpdateError;
    end;

    with dsEAddSub do
    begin
      OnStateChange:= nil;
      OnStateChange:= FOnStateChanged;
    end;

    with qrEGoodsInfo do
    begin
      OnUpdateError := FUpdateError;
      BeforePost    := GdsBeforePost;
      BeforeDelete  := GdsBeforeDelete;
      BeforeScroll  := GdsBeforeScroll;
      AfterDelete   := GdsAfterDelete;
      FieldByName('INFO_CODE').OnValidate := InfoCodeValidate;
    end;

    with dsEGoodsInfo do
    begin
      OnStateChange:= nil;
      OnStateChange:= FOnStateChanged;
    end;
    with qrEState do
    begin
      OnUpdateError := FUpdateError;
      BeforePost    := StateBeforePost;
      BeforeDelete  := StateBeforeDelete;
      BeforeScroll  := StateBeforeScroll;
      AfterDelete   := StateAfterDelete;
      FieldByName('ST_CODE').OnValidate := InfoCodeValidate;
    end;
    with dsEState do
    begin
      OnStateChange:= nil;
      OnStateChange:= FOnStateChanged;
    end;
    with qrECity do
    begin
      OnUpdateError := FUpdateError;
      BeforePost    := CityBeforePost;
      BeforeDelete  := CityBeforeDelete;
      BeforeScroll  := CityBeforeScroll;
      AfterDelete   := CityAfterDelete;
      FieldByName('CT_CODE').OnValidate := InfoCodeValidate;
      FieldByName('CT_STATE').OnValidate := qrECityCT_STATEValidate;
      OnCalcFields := CF_STATENAMECalcFields;
    end;
    with dsECity do
    begin
      OnStateChange:= nil;
      OnStateChange:= FOnStateChanged;
    end;

    with dsEBox do
    begin
      OnStateChange:= nil;
      OnStateChange:= FOnStateChanged;
    end;
    with qrEBox do
    begin
      OnUpdateError := FUpdateError;
      BeforePost    := BoxBeforePost;
      BeforeDelete  := BoxBeforeDelete;
      BeforeScroll  := BoxBeforeScroll;
      AfterDelete   := BoxAfterDelete;
      FieldByName('BOX_CODE').OnValidate := InfoCodeValidate;
      FieldByName('BOX_LENGHT').OnValidate := qrEBoxValidate;
      FieldByName('BOX_WIDTH').OnValidate := qrEBoxValidate;
      FieldByName('BOX_HEIGHT').OnValidate := qrEBoxValidate;
    end;
    with dsEBox do
    begin
      OnStateChange:= nil;
      OnStateChange:= FOnStateChanged;
    end;

    with dsECustKind do
    begin
      OnStateChange:= nil;
      OnStateChange:= FOnStateChanged;
    end;
    with qrECustKind do
    begin
      OnUpdateError := FUpdateError;
      BeforePost    := CustKindBeforePost;
      BeforeDelete  := CustKindBeforeDelete;
      BeforeScroll  := CustKindBeforeScroll;
      AfterDelete   := CustKindAfterDelete;
      FieldByName('CK_CODE').OnValidate := InfoCodeValidate;
    end;
    with dsECustKind do
    begin
      OnStateChange:= nil;
      OnStateChange:= FOnStateChanged;
    end;
  end;
end;

procedure TFrmEParam.tbsCustShow(Sender: TObject);
begin
  IsLock0 := False;
//  SelectEmpty(FDM_Param.qrECustomer, 'IDCUSTOMER_T');
  with FDM_Param.qrECustomer do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM IDCUSTOMER_T');
    SQL.Add('WHERE 1 = 2');
    Open;
  end;
  with qrMaxCust do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT MAX(TO_NUMBER(CUSTNO))MAXCUSTNO FROM IDCUSTOMER_T');
    Open;
    FDM_Param.qrECustomer.Edit;
    BrCustCode := IntToStr(FieldByName('MAXCUSTNO').AsInteger + 1);
    FDM_Param.qrECustomer.FieldByName('CUSTNO').AsString := BrCustCode;
  end;
//  Label58.Visible := (UpperCase(MabnaInfo.CurrentUser) = 'MEHRABAN');
//  DBComboBox6.Visible := (UpperCase(MabnaInfo.CurrentUser) = 'MEHRABAN');
  tbsCust.Repaint;
end;

procedure TFrmEParam.pgMainChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  case pgMain.ActivePage.PageIndex  of
    0 : AllowChange := CheckChanges(FDM_Param.qrECustType, FDM_Param.qrECustType, FDM);
    1 : AllowChange := CheckChanges(FDM_Param.qrECustomer, FDM_Param.qrECustomer, FDM);
    2 : AllowChange := CheckChanges(FDM_Param.qrEGds, FDM_Param.qrEGds, FDM);
    3 :
    begin
      FDM_Param.qrGdsInfo.Close;
      FDM_Param.qrGdsInfo.Open;
      AllowChange := CheckChanges(FDM_Param.qrEGdsInfo, FDM_Param.qrEGdsInfo, FDM);
    end;
    4 : AllowChange := CheckChanges(FDM_Param.qrEAddSub, FDM_Param.qrEAddSub, FDM);
    5 : AllowChange := CheckChanges(FDM_Param.qrEGoodsInfo, FDM_Param.qrEGoodsInfo, FDM);
    6 : AllowChange := CheckChanges(FDM_Param.qrEState, FDM_Param.qrEState, FDM);
    7 : AllowChange := CheckChanges(FDM_Param.qrECity, FDM_Param.qrECity, FDM);
    8 : AllowChange := CheckChanges(FDM_Param.qrEBox, FDM_Param.qrEBox, FDM);
    9 : AllowChange := CheckChanges(FDM_Param.qrECustKind, FDM_Param.qrECustKind, FDM);
  end;
end;

procedure TFrmEParam.Panel5Enter(Sender: TObject);
begin
  if not Flag then Exit;
  IsLock0:= True;
  AutoSelect(FDB, FDM_Param.qrECustomer, 'IDCUSTOMER_T', 1, IsLock0);
  chbCard.Checked := (FDM_Param.qrECustomer.FieldByName('CUST_LICENCE_CARD').AsString = '1');
  chbLicence.Checked := (FDM_Param.qrECustomer.FieldByName('CUST_LICENCE').AsString = '1');
  chbOther.Checked := (FDM_Param.qrECustomer.FieldByName('CUST_LICENCE_OTHER').AsString = '1');
  dbedOthr.Enabled := (FDM_Param.qrECustomer.FieldByName('CUST_LICENCE_OTHER').AsString = '1');
  with FDM_Param.qrTmp, SQL do
  begin
    Clear;
    Add('SELECT CUSTNO,CUSTNAME       ');
    Add('  FROM IDCUSTOMER_T          ');
    Add('WHERE CUSTNO = :CUSTNO       ');
    ParamByName('CUSTNO').AsString := dbedCustNo.Text;
    SQL:= MbSqlConvert(SQL);
    Open;
    Button1.Enabled := not IsEmpty;
    if FDM_Param.qrTmp.IsEmpty then
    begin
    (*
      with FDM_Param.qrETemp, SQL do
      begin
        Clear;
        Add('SELECT TAFSILY_CODE , TAFSILY_NAME ');
        Add('  FROM ACCOUNT.TAFSILY_ACC_T          ');
        Add('WHERE TAFSILY_YEAR = :Year');
        Add('  AND TAFSILY_CODE = :CODE');
        ParamByName('YEAR').AsInteger := System_YY;
        ParamByName('CODE').AsString  := dbedCustNo.Text;
        SQL:= MbSqlConvert(SQL);
        Open;
        if not FDM_Param.qrETemp.IsEmpty then
        begin
          with FDM_Param.qrECustomer do
          begin
            Edit;
            FieldByName('CUSTNAME').AsString:= FDM_Param.qrETemp.FieldByName('TAFSILY_NAME').AsString;
          end;
        end
        else
        begin
          MbError('«Ì‰ òœ œ— ”Ì” „ Õ”«»œ«—Ì „«·Ì  ⁄—Ì› ‰‘œÂ «” .');
          dbedCustNo.SetFocus;
          Exit;
        end;
      end;
      *)
      FDM_Param.qrECustomer.Edit;

      if BrCustCode = '1' then
        BrCustCode := IntToStr(System_YY) + '0000';
//      FDM_Param.qrECustomer.FieldByName('CUSTNO').AsString:= BrCustCode;
      btnRelCust.Enabled := False;
      btnAssociate.Enabled := False;
      CustName := '';
    end
    else
    begin
      CustName := FDM_Param.qrECustomer.FieldByName('CUSTNAME').AsString;
      btnRelCust.Enabled := True;
      btnAssociate.Enabled := True;
    end
  end;
  Flag:= False;
  CustId := FDM_Param.qrECustomer.FieldByName('CUSTNO').AsString;
end;

procedure TFrmEParam.CF_CustomerCalcFields(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByName('CF_CustGrpDesc').AsString:= FindCustTypeDesc(FieldByName('CUSTTYPE_CODE').AsString);
    FieldByName('CF_STATENAME').AsString:= GetStateName(FieldByName('CUST_STATE').AsString);
    FieldByName('CF_CITYNAME').AsString:= GetCityName(FieldByName('CUST_CTCODE').AsString);
    FieldByName('CF_VISITORNAME').AsString:= GetVisitorName(FieldByName('CUST_VISITOR').AsString);
    FieldByName('CF_DIRECTDESC').AsString:= GetDirectName(FieldByName('CUSTTYPE_CODE').AsString, FieldByName('CUST_DIR').AsString);
    FieldByName('CF_CUSTKINKD').AsString:= GetCustKindName(FieldByName('CUST_CUSTKIND').AsString);
    FieldByName('CF_CHANNLENAME').AsString:= GetChannleName(GetChannleCode(FieldByName('CUSTNO').AsString));
    FieldByName('CF_COUNTRYNAME').AsString:= FindCountryName(FieldByName('COUNTERY_CODE').AsString);
  end;
end;

procedure TFrmEParam.GrpOnGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intCustomers   : Text:= _stCustomers;
    _intCompetitors : Text:= _stCompetitors;
    _intBoth        : Text:= _stBoth;
  end;
end;

procedure TFrmEParam.GrpOnSetText(Sender: TField; const Text: String);
begin
  if Text = _stCustomers then
    Sender.AsInteger:= _intCustomers;
  if Text = _stCompetitors then
    Sender.AsInteger:= _intCompetitors;
  if Text = _stBoth then
    Sender.AsInteger:= _intBoth;
end;

procedure TFrmEParam.dbedCustNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    sbList.Click;
end;

procedure TFrmEParam.dbedCustNoExit(Sender: TObject);
begin
  Flag:= True;
{$IFNDEF AHMADTEA}
  if dbedCustNo.Text = '' then
  begin
    with FDM_Param.qrTmp, SQL do
    begin
      Clear;
      Add('SELECT MAX(CUSTNO) CUSTNO      ');
      Add('  FROM IDCUSTOMER_T          ');
      SQL:= MbSqlConvert(SQL);
      Open;
      with FDM_Param.qrECustomer do
      begin
        Edit;
        FieldByName('CUSTNO').AsString:= IntToStr(FDM_Param.qrTmp.FieldByName('CUSTNO').AsInteger+1);
      end;
    end;
  end;
{$ENDIF}
//{$IFDEF Behnod}
//    BrCustCode := FDM_Param.qrECustomer.FieldByName('CUSTNO').AsString;
//{$EndIf}
end;

procedure TFrmEParam.BtnPostExit(Sender: TObject);
begin
  Flag:= False;
end;

procedure TFrmEParam.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CheckFlag:= False;
  MbDB.RollBack(FDB);
  Action:= caFree;
end;

procedure TFrmEParam.BtnPostClick(Sender: TObject);
begin
  case pgMain.ActivePage.PageIndex  of
    0 : CustomerTypeSave;
    1 : CustomerSave;
    2 : GdsSave;
    3 : GdsInfoSave;
    4 : AddSubSave;
    5 : GoodsInfoSave;
    6 : StateSave;
    7 : CitySave;
    8 : BoxSave;
    9 : CustKindSave;
  end;
end;

function TFrmEParam.CustCheckBeforeSave: Boolean;
var TafDesc : String;
begin
  Result:= True;

  with FDM_Param.qrECustomer do
  begin
    if (FieldByName('CUSTNO').AsString = '') or (FieldByName('CUSTNO').AsString = '0') then
    begin
      MbError(NotDataComplete);
      dbedCustNo.SetFocus;
      Result:= False;
      Exit;
    end;

    if StringReplace(FieldByName('CUSTNAME').AsString,' ','',[rfReplaceAll]) = '' then
    begin
      MbError(NotDataComplete);
      dbedCustName.SetFocus;
      Result:= False;
      Exit;
    end;

    if FieldByName('CUSTGRP').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbcmbGrp.SetFocus;
      Result:= False;
      Exit;
    end;

    if FieldByName('CUST_CUSTKIND').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedCustKind.SetFocus;
      Result:= False;
      Exit;
    end;
    if FieldByName('CUSTTYPE_CODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      DBEdit3.SetFocus;
      Result:= False;
      Exit;
    end;
    if FieldByName('CUST_DIR').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedCustDir.SetFocus;
      Result:= False;
      Exit;
    end;

    {$IFNDEF PAKHSH}
      TafDesc := FindTafsilyName(FieldByName('CUSTNO').AsString);
      if TafDesc = '' then
      begin
        MbError('«Ì‰ òœ œ— ”Ì” „ Õ”«»  ⁄—Ì› ‰‘œÂ «” .');
        dbedCustNo.SetFocus;
        Result := False;
        Exit;
      end;
    {$ENDIF}
//    if CheckNullFields(FDM_Param.qrECustomer, 'SALES', 'IDCUSTOMER_T') then Result:= False;
(*
    if FieldByName('CUSTTYPE_CODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      DBEdit3.SetFocus;
      Result:= False;
      Exit;
    end;
*)    
  end;
end;

procedure TFrmEParam.CustomerSave;
begin
  if IsLock1 then
  begin
    MbError(LockRecord);
    Exit;
  end;
{$IFNDEF AHMADTEA}
  if (HasFactorCustomer(FDM_Param.qrECustomer.FieldByName('CUSTNO').AsString)) and
     (CustName <> FDM_Param.qrECustomer.FieldByName('CUSTNAME').AsString) then
  begin
    MbError('»—«Ì «Ì‰ „‘ —Ì ›«ò Ê— ’«œ— ‘œÂ Ê «Ã«“Â  €ÌÌ— ‰«„ ÊÃÊœ ‰œ«—œ');
    Exit;
  end;
{$ENDIF}

  if not CustCheckBeforeSave then
    Exit;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_Param.qrECustomer do
    begin
      Edit;
      FieldByName('BR_CODE').AsString := BranchCode;
      if FieldByName('CUST_OPRATOR').AsString = '' then
      begin
        Edit;
        FieldByName('CUST_OPRATOR').AsString := GetUserNameId(MabnaInfo.CurrentUserID);
        FieldByName('CUST_OPRATOR_DATE').AsString := MbSystemDate;
      end;
      if chbCard.Checked then
        FieldByName('CUST_LICENCE_CARD').AsInteger := 1
      else
        FieldByName('CUST_LICENCE_CARD').AsString := '';
      if chbLicence.Checked then
        FieldByName('CUST_LICENCE').AsInteger := 1
      else
        FieldByName('CUST_LICENCE').AsString := '';
      if chbOther.Checked then
        FieldByName('CUST_LICENCE_OTHER').AsInteger := 1
      else
        FieldByName('CUST_LICENCE_OTHER').AsString := '';
      FieldByName('SEND_STAT').AsInteger := 2;
      InsertIntoIdCustomer(FieldByName('CUSTNO').AsString);
//      ShowMessage('ApplyUpdates 1005');
//      ApplyUpdates;
    end;
//    ShowMessage('AddToInventory 1008');
    AddToInventory;
//    AddToForSend(FDM_Param.qrECustomer.FieldByName('CUSTNO').AsString);
//    ShowMessage('MbDB.Commit 1011');
    MbDB.Commit(FDB);
    SelectEmpty(FDM_Param.qrECustomer, 'IDCUSTOMER_T');
    chbCard.Checked := False;
    chbLicence.Checked := False;
    chbOther.Checked := False;
    dbedCustNo.SetFocus;
    btnPost.Enabled:= False;
    with qrMaxCust do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX(TO_NUMBER(CUSTNO))MAXCUSTNO FROM IDCUSTOMER_T');
//      ShowMessage('MbDB.Commit 1011');
      Open;
      FDM_Param.qrECustomer.Edit;
      BrCustCode := IntToStr(FieldByName('MAXCUSTNO').AsInteger + 1);
      FDM_Param.qrECustomer.FieldByName('CUSTNO').AsString := BrCustCode;
    end;
  except
    MbDB.RollBack(FDB);
  end;
end;

procedure TFrmEParam.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  case pgMain.ActivePage.PageIndex  of
    0 : CanClose := CheckChanges(FDM_Param.qrECustType, FDM_Param.qrECustType, FDM);
    1 : CanClose := CheckChanges(FDM_Param.qrECustomer, FDM_Param.qrECustomer, FDM);
    2 : CanClose := CheckChanges(FDM_Param.qrEGds, FDM_Param.qrEGds, FDM);
    3 : CanClose := CheckChanges(FDM_Param.qrEGdsInfo, FDM_Param.qrEGdsInfo, FDM);
    4 : CanClose := CheckChanges(FDM_Param.qrEAddSub, FDM_Param.qrEAddSub, FDM);
    5 : CanClose := CheckChanges(FDM_Param.qrEGoodsInfo, FDM_Param.qrEGoodsInfo, FDM);
    6 : CanClose := CheckChanges(FDM_Param.qrEState, FDM_Param.qrEState, FDM);
    7 : CanClose := CheckChanges(FDM_Param.qrECity, FDM_Param.qrECity, FDM);
    8 : CanClose := CheckChanges(FDM_Param.qrEBox, FDM_Param.qrEBox, FDM);
    9 : CanClose := CheckChanges(FDM_Param.qrECustKind, FDM_Param.qrECustKind, FDM);
  end;
end;

procedure TFrmEParam.BtnDelClick(Sender: TObject);
begin
  case pgMain.ActivePage.PageIndex  of
    0 : CustomerTypeDelete;
    1 : CustomerDelete;
    2 : GdsDelete;
    3 : GdsInfoDelete;
    4 : AddSubDelete;
    5 : GoodsInfoDelete;
    6 : StateDelete;
    7 : CityDelete;
    8 : BoxDelete;
    9 : CustKindDelete;
  end;
end;

procedure TFrmEParam.CustomerDelete;
var
  FQuery: TQuery;
  Code: string;
begin
  if IsLock0 then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if MbMessage(DeleteConfirm, mtWarning, [mbYes,mbNo], mbNo) = mrYes then
  begin
    if not MbDB.InTransaction[FDB] then
      MbDB.StartTransaction(FDB);

    Code:= FDM_Param.qrECustomer.FieldByName('CUSTNO').AsString;
    FQuery:= TQuery.Create(Self);
    try
      FQuery.DataBaseName:= MbDB.DataBaseName[FDB];
      try
        with FQuery, SQL do
        begin
          Clear;
          Add('DELETE FROM ' + SchemaName + 'IDCUSTOMER_T');
          Add('WHERE');
          Add('     CUSTNO = :CUSTNO');
          ParamByName('CUSTNO').AsString:= Code;
          SQL:= MbSqlConvert(SQL);
          ExecSql;
        end;

        with FQuery, SQL do
        begin
          Clear;
          Add('DELETE FROM INVENTORY.CUT_T');
          Add('WHERE');
          Add('     CUT_CODE = :CUT_CODE');
          ParamByName('CUT_CODE').AsString:= Code;
          SQL:= MbSqlConvert(SQL);
          ExecSql;
        end;

        SelectEmpty(FDM_Param.qrECustomer, 'IDCUSTOMER_T');
        dbedCustNo.SetFocus;
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

procedure TFrmEParam.sbLastClick(Sender: TObject);
var
  Btntype: Integer;
begin
  case pgMain.ActivePage.PageIndex  of
    0:
    begin
      FDM_Param.qrECustType.DisableControls;
      try
        with FDM_Param do
        begin
          if not CheckChanges(qrECustType, qrECustType, FDB) then
            Exit;
          IsLock0 := False;
          Btntype := AutoNavigate(FDB, qrECustType, 'CUSTTYPE_T', 1, Ord(_Last), IsLock0);
          ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
        end;
      finally
        FDM_Param.qrECustType.EnableControls;
      end;
    end;

    1:                                                
    begin
      FDM_Param.qrECustomer.DisableControls;
      try
        with FDM_Param do
        begin
          if not CheckChanges(qrECustomer, qrECustomer, FDB) then
            Exit;
          IsLock0 := False;
          Btntype := AutoNavigate(FDB, qrECustomer, 'IDCUSTOMER_T', 1, Ord(_Last), IsLock0);
          ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
        end;
      finally
        FDM_Param.qrECustomer.EnableControls;
      end;
    end;

    2:
    begin
      FDM_Param.qrEGds.DisableControls;
      try
        with FDM_Param do
        begin
          if not CheckChanges(qrEGds, qrEGds, FDB) then
            Exit;
          IsLock0 := False;
          Btntype := AutoNavigate(FDB, qrEGds, 'GDS_T', 1, Ord(_Last), IsLock0);
          ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
        end;
      finally
        FDM_Param.qrEGds.EnableControls;
      end;
    end;

    3:
    begin
      FDM_Param.qrEGdsInfo.DisableControls;
      try
        with FDM_Param do
        begin
          if not CheckChanges(qrEGdsInfo, qrEGdsInfo, FDB) then
            Exit;
          IsLock0 := False;
          Btntype := AutoNavigate(FDB, qrEGdsInfo, 'GOODSINFO_T', 1, Ord(_Last), IsLock0);
          ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
        end;
      finally
        FDM_Param.qrEGdsInfo.EnableControls;
      end;
    end;
  end;
end;

procedure TFrmEParam.sbNextClick(Sender: TObject);
var
  Btntype: Integer;
begin
  case pgMain.ActivePage.PageIndex  of
    0:
    begin
      FDM_Param.qrECustType.DisableControls;
      try
        with FDM_Param do
        begin
          if not CheckChanges(qrECustType, qrECustType, FDB) then
            Exit;
          IsLock0 := False;
          Btntype := AutoNavigate(FDB, qrECustType, 'CUSTTYPE_T', 1, Ord(_Next), IsLock0);
          ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
        end;
      finally
        FDM_Param.qrECustType.EnableControls;
      end;
    end;

    1:
    begin
      FDM_Param.qrECustomer.DisableControls;
      try
        with FDM_Param do
        begin
          if not CheckChanges(qrECustomer, qrECustomer, FDB) then
            Exit;
          IsLock0 := False;
          Btntype := AutoNavigate(FDB, qrECustomer, 'IDCUSTOMER_T', 1, Ord(_Next), IsLock0);
          ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
        end;
      finally
        FDM_Param.qrECustomer.EnableControls;
      end;
    end;

    2:
    begin
      FDM_Param.qrEGds.DisableControls;
      try
        with FDM_Param do
        begin
          if not CheckChanges(qrEGds, qrEGds, FDB) then
            Exit;
          IsLock0 := False;
          Btntype := AutoNavigate(FDB, qrEGds, 'GDS_T', 1, Ord(_Next), IsLock0);
          ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
        end;
      finally
        FDM_Param.qrEGds.EnableControls;
      end;
    end;

    3:
    begin
      FDM_Param.qrEGdsInfo.DisableControls;
      try
        with FDM_Param do
        begin
          if not CheckChanges(qrEGdsInfo, qrEGdsInfo, FDB) then
            Exit;
          IsLock0 := False;
          Btntype := AutoNavigate(FDB, qrEGdsInfo, 'GOODSINFO_T', 1, Ord(_Next), IsLock0);
          ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
        end;
      finally
        FDM_Param.qrEGdsInfo.EnableControls;
      end;
    end;
  end;
end;

procedure TFrmEParam.sbPrevClick(Sender: TObject);
var
  Btntype: Integer;
begin
  case pgMain.ActivePage.PageIndex  of
    0:
    begin
      FDM_Param.qrECustType.DisableControls;
      try
        with FDM_Param do
        begin
          if not CheckChanges(qrECustType, qrECustType, FDB) then
            Exit;
          IsLock0 := False;
          Btntype := AutoNavigate(FDB, qrECustType, 'CUSTTYPE_T', 1, Ord(_Prev), IsLock0);
          ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
        end;
      finally
        FDM_Param.qrECustType.EnableControls;
      end;
    end;

    1:
    begin
      FDM_Param.qrECustomer.DisableControls;
      try
        with FDM_Param do
        begin
          if not CheckChanges(qrECustomer, qrECustomer, FDB) then
            Exit;
          IsLock0 := False;
          Btntype := AutoNavigate(FDB, qrECustomer, 'IDCUSTOMER_T', 1, Ord(_Prev), IsLock0);
          ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
        end;
      finally
        FDM_Param.qrECustomer.EnableControls;
      end;
    end;

    2:
    begin
      FDM_Param.qrEGds.DisableControls;
      try
        with FDM_Param do
        begin
          if not CheckChanges(qrEGds, qrEGds, FDB) then
            Exit;
          IsLock0 := False;
          Btntype := AutoNavigate(FDB, qrEGds, 'GDS_T', 1, Ord(_Prev), IsLock0);
          ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
        end;
      finally
        FDM_Param.qrEGds.EnableControls;
      end;
    end;

    3:
    begin
      FDM_Param.qrEGdsInfo.DisableControls;
      try
        with FDM_Param do
        begin
          if not CheckChanges(qrEGdsInfo, qrEGdsInfo, FDB) then
            Exit;
          IsLock0 := False;
          Btntype := AutoNavigate(FDB, qrEGdsInfo, 'GOODSINFO_T', 1, Ord(_Prev), IsLock0);
          ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
        end;
      finally
        FDM_Param.qrEGdsInfo.EnableControls;
      end;
    end;
  end;
end;

procedure TFrmEParam.sbFirstClick(Sender: TObject);
var
  Btntype: Integer;
begin
  case pgMain.ActivePage.PageIndex  of
    0:
    begin
      FDM_Param.qrECustType.DisableControls;
      try
        with FDM_Param do
        begin
          if not CheckChanges(qrECustType, qrECustType, FDB) then
            Exit;
          IsLock0 := False;
          Btntype := AutoNavigate(FDB, qrECustType, 'CUSTTYPE_T', 1, Ord(_First), IsLock0);
          ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
        end;
      finally
        FDM_Param.qrECustType.EnableControls;
      end;
    end;

    1:
    begin
      FDM_Param.qrECustomer.DisableControls;
      try
        with FDM_Param do
        begin
          if not CheckChanges(qrECustomer, qrECustomer, FDB) then
            Exit;
          IsLock0 := False;
          Btntype := AutoNavigate(FDB, qrECustomer, 'IDCUSTOMER_T', 1, Ord(_First), IsLock0);
          ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
        end;
      finally
        FDM_Param.qrECustomer.EnableControls;
      end;
    end;

    2:
    begin
      FDM_Param.qrEGds.DisableControls;
      try
        with FDM_Param do
        begin
          if not CheckChanges(qrEGds, qrEGds, FDB) then
            Exit;
          IsLock0 := False;
          Btntype := AutoNavigate(FDB, qrEGds, 'GDS_T', 1, Ord(_First), IsLock0);
          ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
        end;
      finally
        FDM_Param.qrEGds.EnableControls;
      end;
    end;

    3:
    begin
      FDM_Param.qrEGdsInfo.DisableControls;
      try
        with FDM_Param do
        begin
          if not CheckChanges(qrEGdsInfo, qrEGdsInfo, FDB) then
            Exit;
          IsLock0 := False;
          Btntype := AutoNavigate(FDB, qrEGdsInfo, 'GOODSINFO_T', 1, Ord(_First), IsLock0);
          ProcButtons(SbFirst, SbPrev, SbNext, SbLast, Btntype) ;
        end;
      finally
        FDM_Param.qrEGdsInfo.EnableControls;
      end;
    end;
  end;
end;

procedure TFrmEParam.N1Click(Sender: TObject);
begin
  with FDM_Param do
  begin
    case pgMain.ActivePage.PageIndex  of
      4: qrEAddSub.Insert;
      5: qrEGoodsInfo.Insert;
      6: qrEState.Insert;
      7: qrECity.Insert;
      8: qrEBox.Insert;
      9: qrECustKind.Insert;
    end;
  end;
end;

procedure TFrmEParam.N2Click(Sender: TObject);
begin
  with FDM_Param do
  begin
    case pgMain.ActivePage.PageIndex  of
      4: qrEAddSub.Delete;
      5: qrEGoodsInfo.Delete;
      6: qrEState.Delete;
      7: qrECity.Delete;
      8: qrEBox.Delete;
      9: qrECustKind.Delete;
    end;
  end;
end;

procedure TFrmEParam.FUpdateError(DataSet: TDataSet; E: EDatabaseError;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
  MbError(ExpHandleM(E));
  Abort;
end;

procedure TFrmEParam.FOnStateChanged(Sender: TObject);
begin
  with FDM_Param do
  begin
    case pgMain.ActivePage.PageIndex  of
      0: G_StateChange(qrECustType, qrECustType, btnPost, btnDel);
      1: G_StateChange(qrECustomer, qrECustomer, btnPost, btnDel);
      2: G_StateChange(qrEGds, qrEGds, btnPost, btnDel);
      3: G_StateChange(qrEGdsInfo, qrEGdsInfo, btnPost, btnDel);
      4: G_StateChange(qrEAddSub, qrEAddSub, btnPost, btnDel);
      5: G_StateChange(qrEGoodsInfo, qrEGoodsInfo, btnPost, btnDel);
      6: G_StateChange(qrEState, qrEState, btnPost, btnDel);
      7: G_StateChange(qrECity, qrECity, btnPost, btnDel);
      8: G_StateChange(qrEBox, qrEBox, btnPost, btnDel);
      9: G_StateChange(qrECustKind, qrECustKind, btnPost, btnDel);
    end;
  end;
  btnPost.Enabled := True;
end;

procedure TFrmEParam.sbGoodClick(Sender: TObject);
var
  Code: string;
begin
  if HelpGds(Code) then
  begin
    dbedGdsCode.SetFocus;
    with FDM_Param.qrEGdsInfo do
    begin
      Edit;
      FieldByName('GDS_CODE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEParam.dbedGdsCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    sbGood.Click;
end;

procedure TFrmEParam.tbsFinalComShow(Sender: TObject);
begin
  IsLock4 := False;
  SelectEmpty(FDM_Param.qrEGdsInfo, 'GOODSINFO_T');
  FDM_Param.qrEGdsInfo.Close;
  FDM_Param.qrEGdsInfo.Open;
//  dbedGdsCode.Open;
end;

procedure TFrmEParam.dbedGdsCodeExit(Sender: TObject);
begin
  if not (dbedGdsCode.Text = '') then
  begin
    if not ExistGds(dbedGdsCode.Text) then
    begin
      MbError(InvalidGds);
      dbedGdsCode.SetFocus;
      Abort;
    end;
  end
  else
    Exit;
  IsLock4 := False;
  AutoSelect(FDB, FDM_Param.qrEGdsInfo, 'GOODSINFO_T', 1, IsLock4);
end;

procedure TFrmEParam.CF_FinProdCalcFields(DataSet: TDataSet);
begin
  with FDM_Param.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT GDS_DESCF, ON_QTY      ');
    Add('  FROM GOODS          ');
    Add(' WHERE GDS_CODE = :GDS_CODE   ');
    ParamByName('GDS_CODE').AsString := DataSet.FieldByName('GDS_CODE').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;

    DataSet.FieldByName('CF_GDSDESC').AsString:= FieldByName('GDS_DESCF').AsString;
    DataSet.FieldByName('CF_GDSQTY').AsString:= FieldByName('ON_QTY').AsString;
    DataSet.FieldByName('CF_BOXDESC').AsString:= GetBoxName(DataSet.FieldByName('GDS_BOX').AsString);
    DataSet.FieldByName('CF_UNT_CODE').AsString:= FindUntDesc(FindUntCode(DataSet.FieldByName('GDS_CODE').AsString));
    DataSet.FieldByName('CF_GDS_UNTS').AsString:= FindUntDesc(FindGDS_UNTS(DataSet.FieldByName('GDS_CODE').AsString));
    DataSet.FieldByName('CF_GDS_ECX').AsString:= FindGDS_EXC(DataSet.FieldByName('GDS_CODE').AsString);
    DataSet.FieldByName('CF_QTY').AsInteger := GetGoodsQty(DataSet.FieldByName('GDS_CODE').AsString);
    DataSet.FieldByName('CF_GDSINFO').AsString := FindGdsInfoDesc(DataSet.FieldByName('GDS_INFO').AsString);
  end;
end;

procedure TFrmEParam.ProdTypOnGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intHighPres: Text:= _stHighPres;
    _intMidPres: Text:= _stMidPres;
    _intLowPres: Text:= _stLowPres;
  end;
end;

procedure TFrmEParam.ProdTypOnSetText(Sender: TField; const Text: String);
begin
  if Text = _stHighPres then
    Sender.AsInteger:= _intHighPres;
  if Text = _stLowPres then
    Sender.AsInteger:= _intLowPres;
  if Text = _stMidPres then
    Sender.AsInteger:= _intMidPres;
end;

procedure TFrmEParam.GdsInfoSave;
begin
  if IsLock4 then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if not GdsInfoCheckBeforeSave then
    Exit;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_Param.qrEGdsInfo do
    begin
      ApplyUpdates;
    end;

    MbDB.Commit(FDB);
    SelectEmpty(FDM_Param.qrEGdsInfo, 'GOODSINFO_T');
    dbedGdsCode.SetFocus;
    btnPost.Enabled:= False;
  except
    MbDB.RollBack(FDB);
  end;
end;

function TFrmEParam.GdsInfoCheckBeforeSave: Boolean;
begin
  Result:= True;
  with FDM_Param.qrEGdsInfo do
  begin
    if FieldByName('GDS_CODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedGdsCode.SetFocus;
      Result:= False;
      Exit;
    end;
    if FieldByName('SALE_RATE').AsString = '' then
    begin
      MbError(NotDataComplete);
      DBEdit7.SetFocus;
      Result:= False;
      Exit;
    end;
  end;
end;

procedure TFrmEParam.GdsInfoDelete;
var
  FQuery: TQuery;
  Code: string;
begin
  if IsLock4 then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if MbMessage(DeleteConfirm, mtWarning, [mbYes,mbNo], mbNo) = mrYes then
  begin
    if not MbDB.InTransaction[FDB] then
      MbDB.StartTransaction(FDB);

    Code:= FDM_Param.qrEGdsInfo.FieldByName('GDS_CODE').AsString;
    FQuery:= TQuery.Create(Self);
    try
      FQuery.DataBaseName:= MbDB.DataBaseName[FDB];
      try
        with FQuery, SQL do
        begin
          Clear;
          Add('DELETE FROM ' + SchemaName + 'GOODSINFO_T');
          Add('WHERE');
          Add('     GDS_CODE = :GDS_CODE');
          ParamByName('GDS_CODE').AsString:= Code;
          SQL:= MbSqlConvert(SQL);
          ExecSql;
        end;

        SelectEmpty(FDM_Param.qrEGdsInfo, 'GOODSINFO_T');
        dbedGdsCode.SetFocus;
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

procedure TFrmEParam.tbsGdsShow(Sender: TObject);
begin
  SelectEmpty(FDM_Param.qrEGds, 'GDS_T');
//  dbedGCode.SetFocus;
  tbsGds.Repaint;
end;

procedure TFrmEParam.SrvAfterDelete(DataSet: TDataSet);
begin
  btnPost.Enabled:= True;
end;

procedure TFrmEParam.GdsDelete;
var
  FQuery: TQuery;
  Code: string;
begin
  if IsLock2 then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if MbMessage(DeleteConfirm, mtWarning, [mbYes,mbNo], mbNo) = mrYes then
  begin
    if not MbDB.InTransaction[FDB] then
      MbDB.StartTransaction(FDB);

    Code:= FDM_Param.qrEGds.FieldByName('GDS_CODE').AsString;
    FQuery:= TQuery.Create(Self);
    try
      FQuery.DataBaseName:= MbDB.DataBaseName[FDB];
      try
        with FQuery, SQL do
        begin
          Clear;
          Add('DELETE FROM ' + SchemaName + 'GDS_T');
          Add('WHERE');
          Add('     GDS_CODE = :GDS_CODE');
          ParamByName('GDS_CODE').AsString:= Code;
          SQL:= MbSqlConvert(SQL);
          ExecSql;
        end;

        SelectEmpty(FDM_Param.qrEGds, 'GDS_T');
        dbedGCode.SetFocus;
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

procedure TFrmEParam.GdsSave;
begin
  if IsLock2 then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if not GdsCheckBeforeSave then
    Exit;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_Param.qrEGds do
    begin
      ApplyUpdates;
    end;

    MbDB.Commit(FDB);
    SelectEmpty(FDM_Param.qrEGds, 'GDS_T');
    dbedGCode.SetFocus;
    btnPost.Enabled:= False;
  except
    MbDB.RollBack(FDB);
  end;
end;

procedure TFrmEParam.FormDestroy(Sender: TObject);
begin
  SeqControlFinPro.Free;
  SeqControlPck.Free;
  SeqControlTec.Free;
end;

procedure TFrmEParam.FinPrAfterDelete(DataSet: TDataSet);
begin
  btnPost.Enabled:= True;
end;

procedure TFrmEParam.InsFinProdDet(AHasDetail: Boolean);
begin
  FDM_Param.qrEFinProdDet.DisableControls;
  try
    FDM_Param.qrEFinProdDet.First;

    if AHasDetail then
    begin
      while not FDM_Param.qrEFinProdDet.Eof do
      begin
        with FDM_Param.qrETemp, SQL do
        begin
          Clear;
          Add('INSERT INTO FINITEMR_T');
          Add('  (FIN_GDS_CODE, FINITROW, PCKID, GDS_CODE, CU_CODE,');
          Add('   FINITMVAL, MOIN_YEAR, MOIN_CODE, TAFSILY_CODE, FINITQTY)');
          Add('VALUES');
          Add('  (:FIN_GDS_CODE, :FINITROW, :PCKID, :GDS_CODE, :CU_CODE,');
          Add('   :FINITMVAL, :MOIN_YEAR, :MOIN_CODE, :TAFSILY_CODE, :FINITQTY)');
          ParamByName('FIN_GDS_CODE').AsString := FDM_Param.qrEFinProd.FieldByName('GDS_CODE').AsString;
          ParamByName('FINITROW').AsString     := FDM_Param.qrEFinProdDet.FieldByName('FINITROW').AsString;
          ParamByName('PCKID').AsString        := FDM_Param.qrEFinProdDet.FieldByName('PCKID').AsString;
          ParamByName('GDS_CODE').AsString     := FDM_Param.qrEFinProdDet.FieldByName('GDS_CODE').AsString;
          ParamByName('FINITMVAL').AsString    := FDM_Param.qrEFinProdDet.FieldByName('FINITMVAL').AsString;

          ParamByName('MOIN_CODE').AsString    := FDM_Param.qrEFinProdDet.FieldByName('MOIN_CODE').AsString;

          if not (FDM_Param.qrEFinProdDet.FieldByName('MOIN_CODE').AsString = '') then
            ParamByName('MOIN_YEAR').AsInteger    := System_YY
          else
            ParamByName('MOIN_YEAR').AsString:= '';

          ParamByName('TAFSILY_CODE').AsString := FDM_Param.qrEFinProdDet.FieldByName('TAFSILY_CODE').AsString;
          ParamByName('FINITQTY').AsString     := FDM_Param.qrEFinProdDet.FieldByName('FINITQTY').AsString;

          SQL := MbSqlConvert(SQL);
          ExecSql;
        end;

        FDM_Param.qrEFinProdDet.Next;
      end;
    end
    else begin
      with FDM_Param.qrETemp, SQL do
      begin
        Clear;
        Add('INSERT INTO FINITEMR_T');
        Add('  (FIN_GDS_CODE, FINITROW, PCKID, GDS_CODE, CU_CODE,');
        Add('   FINITMVAL, MOIN_YEAR, MOIN_CODE, TAFSILY_CODE, FINITQTY)');
        Add('VALUES');
        Add('  (:FIN_GDS_CODE, :FINITROW, :PCKID, :GDS_CODE, :CU_CODE,');
        Add('   :FINITMVAL, :MOIN_YEAR, :MOIN_CODE, :TAFSILY_CODE, :FINITQTY)');
        ParamByName('FIN_GDS_CODE').AsString := FDM_Param.qrEFinProd.FieldByName('GDS_CODE').AsString;
        ParamByName('FINITROW').AsInteger    := 1;
        ParamByName('PCKID').AsString        := FDM_Param.qrEFinProdDet.FieldByName('PCKID').AsString;
        ParamByName('GDS_CODE').AsString     := FDM_Param.qrEFinProd.FieldByName('GDS_CODE').AsString;
        ParamByName('FINITMVAL').AsFloat     := FVal;
        ParamByName('MOIN_CODE').AsString    := FDM_Param.qrEFinProdDet.FieldByName('MOIN_CODE').AsString;
        if not (FDM_Param.qrEFinProdDet.FieldByName('MOIN_CODE').AsString = '') then
          ParamByName('MOIN_YEAR').AsInteger    := System_YY
        else
          ParamByName('MOIN_YEAR').AsString  := '';
        ParamByName('TAFSILY_CODE').AsString := FDM_Param.qrEFinProdDet.FieldByName('TAFSILY_CODE').AsString;
        ParamByName('FINITQTY').AsInteger    := 1;

        SQL := MbSqlConvert(SQL);
        ExecSql;
      end;
    end;

  finally
    FDM_Param.qrEFinProdDet.EnableControls;
  end;
end;

procedure TFrmEParam.dbgrAddSubKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if dbgrAddSub.SelectedIndex = 0 then
  begin
    if Key = VK_DELETE then
      if ExistAddInValidity(FDM_Param.qrEAddSub.FieldByName('ADCODE')) then
      begin
        MbError(CannotModify);
        FDM_Param.qrEAddSub.Cancel;
        Abort;
      end;
  end;

{  if Key = VK_F1 then
    dbgrAddSubEditButtonClick(Self);}
end;

procedure TFrmEParam.CF_AddSubCalc(DataSet: TDataSet);
begin
end;

procedure TFrmEParam.tbsKasrShow(Sender: TObject);
begin
  IsLock3 := False;
  DelFlag3:= True;
  SelectData(FDM_Param.qrEAddSub, 'ADDSUB_T', 'WHERE ADCODE > 0', 'GRIDVIEW');
  if not (FDM_Param.qrEAddSub.IsEmpty) then
  begin
    FDM_Param.qrEAddSub.Last;
    btnPost.Enabled:= False;
    btnDel.Enabled:= True;
  end;
//  dbgrAddSub.SetFocus;
  dbgrAddSub.SelectedIndex := 0;
end;

procedure TFrmEParam.ASAfterDelete(DataSet: TDataSet);
begin
  DelFlag3:= True;
  btnPost.Enabled:= True;
end;

procedure TFrmEParam.ASBeforeDelete(DataSet: TDataSet);
begin
  if ExistAddInValidity(DataSet.FieldByName('ADCODE')) then
  begin
    MbError(CannotModify);
    FDM_Param.qrEAddSub.Cancel;
    Abort;
  end;

  DelFlag3:= False;
end;

procedure TFrmEParam.ASBeforePost(DataSet: TDataSet);
begin
{  if ExistAddInValidity(DataSet.FieldByName('ADCODE')) then
  begin
    MbError(CannotModify);
    DataSet.Cancel;
    Abort;
  end;
}
  with DataSet do
  begin
    if FieldByName('ADCODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrAddSub.SetFocus;
      dbgrAddSub.SelectedIndex:= 0;
      Abort;
    end;

    if FieldByName('ADFNAME').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrAddSub.SetFocus;
      dbgrAddSub.SelectedIndex:= 1;
      Abort;
    end;

    if FieldByName('ADTYPE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrAddSub.SetFocus;
      dbgrAddSub.SelectedIndex:= 3;
      Abort;
    end;

    if FieldByName('ADKIND').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrAddSub.SetFocus;
      dbgrAddSub.SelectedIndex:= 4;
      Abort;
    end;

    if FieldByName('ADKIND').AsInteger in [_intPercent, _intDePercent] then
      if FieldByName('VALDEF').AsString = '' then
      begin
        MbError(NotDataComplete);
        dbgrAddSub.SetFocus;
        dbgrAddSub.SelectedIndex:= 4;
        Abort;
      end;
  end;
end;

procedure TFrmEParam.ASBeforeScroll(DataSet: TDataSet);
begin
  if not DelFlag3 then
    Exit;
  if IsRowDuplicate(dbgrAddSub, ['ADCODE']) then
  begin
    MbError(RepeatedError);
    dbgrAddSub.SelectedIndex:= 0;
    Abort;
  end;
end;

procedure TFrmEParam.ADCodeValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
    if (Sender.AsFloat > 999) or (Sender.AsFloat <= 0) then
    begin
      MbError(RangeErr);
      Abort;
    end;
end;

procedure TFrmEParam.AddSubDelete;
var
  FQuery: TQuery;
begin
  if IsLock3 then
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
          Add('DELETE FROM ' + SchemaName + 'ADDSUB_T');
          SQL:= MbSqlConvert(SQL);
          ExecSql;
        end;

        SelectEmpty(FDM_Param.qrEAddSub, 'ADDSUB_T');
        dbgrAddSub.SetFocus;
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

procedure TFrmEParam.AddSubSave;
begin
  if IsLock3 then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_Param.qrEAddSub do
    begin
      ApplyUpdates;
    end;

    MbDB.Commit(FDB);
    IsLock3:= False;
    AutoSelect(FDB, FDM_Param.qrEAddSub, 'ADDSUB_T', 0, IsLock3, 'WHERE ADCODE > 0' , 'ORDER BY ADCODE');
    dbgrAddSub.SetFocus;
    btnPost.Enabled:= False;
  except
    MbDB.RollBack(FDB);
  end;
end;

procedure TFrmEParam.TypGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intAdd: Text:= _stAdd;
    _intSub: Text:= _stSub;
  end;
end;

procedure TFrmEParam.TypSetText(Sender: TField; const Text: string);
begin
  if Text = _stAdd then
    Sender.AsInteger:= _intAdd;

  if Text = _stSub then
    Sender.AsInteger:= _intSub;
end;

procedure TFrmEParam.KndGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intPrice: Text:= _stPrice;
    _intPercent: Text:= _stPercent;
    _intDePercent: Text:= _stDePercent;
  end;
end;

procedure TFrmEParam.KndSetText(Sender: TField; const Text: string);
begin
  if Text = _stPrice then
    Sender.AsInteger:= _intPrice;

  if Text = _stPercent then
    Sender.AsInteger:= _intPercent;

  if Text = _stDePercent then
    Sender.AsInteger:= _intDePercent;
end;

{procedure TFrmEParam.KndPriceValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
    if (Sender.AsFloat > 9999999999.999) or (Sender.AsFloat < 0) then
    begin
      MbError(RangeErr);
      Abort;
    end;
end;}

function TFrmEParam.ExistAddInValidity(Sender: TField): Boolean;
var
  FQuery: TQuery;
begin
  FQuery:= TQuery.Create(Self);
  try
    with FQuery, SQL do
    begin
      DataBaseName:= MbDB.DataBaseName[FDB];
      Clear;
      Add('SELECT *');
      Add('FROM VALIDITY_T ');
      Add('WHERE');
      Add('     ADCODE = :ADCODE');
      ParamByName('ADCODE').AsString:= Sender.AsString;
      SQL:= MbSqlConvert(SQL);
      Open;
      Result:= not IsEmpty;
      Close;
    end;
  finally
    FQuery.Free;
  end;
end;

procedure TFrmEParam.AddToInventory;
  function ExistCust(AQuery: TQuery; ACustNo: string): Boolean;
  begin
    with AQuery, SQL do
    begin
      Clear;
      Add('SELECT CUT_CODE             ');
      Add('  FROM INVENTORY.CUT_T    ');
      Add(' WHERE CUT_CODE = :CUT_CODE ');
      Add('   AND CUT_YEAR  = :CUT_YEAR');
      ParamByName('CUT_CODE').AsString  := ACustNo;
      ParamByName('CUT_YEAR').AsInteger := System_YY;
      SQL:= MbSqlConvert(SQL);
      Open;
      Result:= not IsEmpty;
      Close;
    end;
  end;
var
  TmpQr: TQuery;
  FName: string;
begin
  TmpQr:= TQuery.Create(Self);
  TmpQr.DataBaseName:= MbDB.DataBaseName[FDB];
  try
    if not ExistCust(TmpQr, FDM_Param.qrECustomer.FieldByName('CUSTNO').AsString) then
    begin
      with TmpQr, SQL do
      begin
        FName:= FDM_Param.qrECustomer.FieldByName('CUSTNAME').AsString;
        Clear;
        Add('INSERT INTO INVENTORY.CUT_T');
        Add('  (CUT_YEAR,CUT_CODE,  TAFSILY_CODE, CUT_NAME, CUT_FAMILY,	CUT_KIND, CUT_NUMBER, CUT_ADRESS, CUT_PHONE, CUT_TYPE)');
        Add('VALUES');
        Add('  (:CUT_YEAR,:CUT_CODE, :TAFSILY_CODE, :CUT_NAME, :CUT_FAMILY,	:CUT_KIND, :CUT_NUMBER, :CUT_ADRESS, :CUT_PHONE, :CUT_TYPE)');
        ParamByName('CUT_CODE').AsString      := FDM_Param.qrECustomer.FieldByName('CUSTNO').AsString;
        ParamByName('CUT_YEAR').AsInteger     := System_YY;
        ParamByName('TAFSILY_CODE').AsString  := '';
        ParamByName('CUT_NAME').AsString      := Copy(FName, 1, 250);
        ParamByName('CUT_FAMILY').AsString    := Copy(FName, 1, 250);
        ParamByName('CUT_KIND').AsString      := '';
        ParamByName('CUT_NUMBER').AsString    := FDM_Param.qrECustomer.FieldByName('CUST_CO').AsString;
        ParamByName('CUT_ADRESS').AsString    := Copy(FDM_Param.qrECustomer.FieldByName('CUSTADD').AsString, 1, 50);
        ParamByName('CUT_PHONE').AsString     := Copy(FDM_Param.qrECustomer.FieldByName('CUSTTEL').AsString, 1, 40);
        ParamByName('CUT_TYPE').AsString      := '2';
        SQL:= MbSqlConvert(SQL);
        ExecSQL;
      end;
    end
    else
    begin
      with TmpQr, SQL do
      begin
        FName:= FDM_Param.qrECustomer.FieldByName('CUSTNAME').AsString;
        Clear;
        Add('UPDATE INVENTORY.CUT_T');
        Add('SET');
        Add('     TAFSILY_CODE  = :TAFSILY_CODE,');
        Add('     CUT_NAME      = :CUT_NAME,');
        Add('     CUT_FAMILY    = :CUT_FAMILY,');
        Add('     CUT_KIND      = :CUT_KIND,');
        Add('     CUT_NUMBER    = :CUT_NUMBER,');
        Add('     CUT_ADRESS    = :CUT_ADRESS,');
        Add('     CUT_PHONE     = :CUT_PHONE,');
        Add('     CUT_TYPE      = :CUT_TYPE');
        Add('WHERE');
        Add('     CUT_CODE = :CUT_CODE ');
        Add('AND  CUT_YEAR = :CUT_YEAR ');
        ParamByName('CUT_CODE').AsString      := FDM_Param.qrECustomer.FieldByName('CUSTNO').AsString;
        ParamByName('CUT_YEAR').AsInteger     := System_YY;
        ParamByName('TAFSILY_CODE').AsString  := FDM_Param.qrECustomer.FieldByName('TAFSILY_CODE').AsString;
        ParamByName('CUT_NAME').AsString      := Copy(FName, 1, 25);
        ParamByName('CUT_FAMILY').AsString    := Copy(FName, 1, 25);
        ParamByName('CUT_KIND').AsString      := '';
        ParamByName('CUT_NUMBER').AsString    := FDM_Param.qrECustomer.FieldByName('CUST_CO').AsString;
        ParamByName('CUT_ADRESS').AsString    := Copy(FDM_Param.qrECustomer.FieldByName('CUSTADD').AsString, 1, 50);
        ParamByName('CUT_PHONE').AsString     := Copy(FDM_Param.qrECustomer.FieldByName('CUSTTEL').AsString, 1, 40);
        ParamByName('CUT_TYPE').AsString      := '2';
        SQL:= MbSqlConvert(SQL);
        ExecSQL;
      end;
    end;
  finally
    TmpQr.Free;
  end;
end;

procedure TFrmEParam.ValDefValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
  begin
    case FDM_Param.qrEAddSub.FieldByName('ADKIND').AsInteger of
      _intPrice:
      begin
        if (Sender.AsFloat > 9999999999.999) or (Sender.AsFloat < 0) then
        begin
          MbError(RangeErr);
          Abort;
        end;
      end;

      _intPercent:
      begin
        if (Sender.AsFloat > 100) or (Sender.AsFloat < 0) then
        begin
          MbError(RangeErr);
          Abort;
        end;
      end;
    end;
  end;
end;

procedure TFrmEParam.edCuCodeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#13, #27, #8, '0'..'9']) then
    Key:= #7
  else
    FDM_Param.qrEFinProd.Edit;
end;

procedure TFrmEParam.ADKindValidate(Sender: TField);
begin
  if Sender.AsString = '' then
    Exit;

  with Sender.DataSet do
  begin
    if (FieldByName('ADTYPE').AsInteger = _intSub) then
      if Sender.AsInteger = _intDePercent then
      begin
        MbError(AddDebate);
        Abort;
      end;
  end;
end;

procedure TFrmEParam.ADTypeValidate(Sender: TField);
begin
  Sender.DataSet.FieldByName('ADKIND').AsString:= '';
end;

procedure TFrmEParam.VCH_TYPEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intMoinLevel: Text:= _stMoinLevel;
    _intTafLevel: Text := _stTafLevel;
  end;
end;

procedure TFrmEParam.VCH_TYPESetText(Sender: TField; const Text: string);
begin
  if Text = _stMoinLevel then
    Sender.AsInteger:= _intMoinLevel;

  if Text = _stTafLevel then
    Sender.AsInteger:= _intTafLevel;
end;

procedure TFrmEParam.tbsCustTypeShow(Sender: TObject);
begin
  IsLock0 := False;
  SelectEmpty(FDM_Param.qrECustType, 'CUSTTYPE_T');
//  dbedCustType.SetFocus;
  tbsCustType.Repaint;
end;

procedure TFrmEParam.CustomerTypeDelete;
var
  FQuery: TQuery;
  Code: string;
begin
  if IsLock0 then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if MbMessage(DeleteConfirm, mtWarning, [mbYes,mbNo], mbNo) = mrYes then
  begin
    if not MbDB.InTransaction[FDB] then
      MbDB.StartTransaction(FDB);

    Code:= FDM_Param.qrECustType.FieldByName('CUSTTYPE_CODE').AsString;
    FQuery:= TQuery.Create(Self);
    try
      FQuery.DataBaseName:= MbDB.DataBaseName[FDB];
      try
        with FQuery, SQL do
        begin
          Clear;
          Add('DELETE FROM ' + SchemaName + 'CUSTTYPE_T');
          Add('WHERE');
          Add('     CUSTTYPE_CODE = :CUSTTYPE_CODE');
          ParamByName('CUSTTYPE_CODE').AsString:= Code;
          SQL:= MbSqlConvert(SQL);
          ExecSql;
        end;

        SelectEmpty(FDM_Param.qrECustType, 'CUSTTYPE_T');
        dbedCustType.SetFocus;
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

procedure TFrmEParam.CustomerTypeSave;
begin
  if IsLock0 then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if not CustTypeCheckBeforeSave then
    Exit;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_Param.qrECustType do
    begin
      Edit;
      FieldByName('SEND_STAT').AsString := '2';
      ApplyUpdates;
    end;

    MbDB.Commit(FDB);
    SelectEmpty(FDM_Param.qrECustType, 'CUSTTYPE_T');
    dbedCustType.SetFocus;
    btnPost.Enabled:= False;
  except
    MbDB.RollBack(FDB);
  end;
end;

function TFrmEParam.CustTypeCheckBeforeSave: Boolean;
begin
  Result:= True;
  with FDM_Param.qrECustType do
  begin
    if StrToIntDef(FieldByName('CUSTTYPE_CODE').AsString ,0)= 0 then
    begin
      MbError(NotDataComplete);
      dbedCustType.SetFocus;
      Result:= False;
      Exit;
    end;
    if StringReplace(FieldByName('CUSTTYPE_DESC').AsString,' ','',[rfReplaceAll]) = '' then
    begin
      MbError(NotDataComplete);
      dbedCustTypeDesc.SetFocus;
      Result:= False;
      Exit;
    end;
  end;
end;

procedure TFrmEParam.dbedCustTypeExit(Sender: TObject);
begin
  IsLock0 := False;
  AutoSelect(FDB, FDM_Param.qrECustType, 'CUSTTYPE_T', 1, IsLock0);
  Flag:= False;
end;

procedure TFrmEParam.sbHelpCustTypeClick(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomerType(Code) then
  begin
    dbedCustType.SetFocus;
    with FDM_Param.qrECustType do
    begin
      Edit;
      FieldByName('CUSTTYPE_CODE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEParam.SpeedButton1Click(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomerType(Code) then
  begin
    DBEdit3.SetFocus;
    with FDM_Param.qrECustomer do
    begin
      Edit;
      FieldByName('CUSTTYPE_CODE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEParam.DBEdit3Exit(Sender: TObject);
begin
  if not (DBEdit3.Text = '') then
  if not ExistCustType(DBEdit3.Text) then
  begin
    MbError(InvalidCustType);
    DBEdit3.SetFocus;
    Abort;
  end;
end;

procedure TFrmEParam.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    SpeedButton1.Click;
end;

procedure TFrmEParam.dbedCustTypeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    sbHelpCustType.Click;
end;

procedure TFrmEParam.SpeedButton2Click(Sender: TObject);
var
  Code: string;
begin
  if HelpGds(Code) then
  begin
    dbedGCode.SetFocus;
    with FDM_Param.qrEGds do
    begin
      Edit;
      FieldByName('GDS_CODE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEParam.dbedGCodeExit(Sender: TObject);
begin
  if not (dbedGCode.Text = '') then
  begin
    if not ExistGds(dbedGCode.Text) then
    begin
      MbError(InvalidGds);
      dbedGCode.SetFocus;
      Abort;
    end;
  end
  else
    Exit;
  IsLock2:=False;
  AutoSelect(FDB, FDM_Param.qrEGds, 'GDS_T', 1, IsLock2);
end;

function TFrmEParam.GdsCheckBeforeSave: Boolean;
begin
  Result:= True;
  with FDM_Param.qrEGds do
  begin
    if FieldByName('GDS_CODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedGCode.SetFocus;
      Exit;
    end;

    if StringReplace(FieldByName('GDS_DESC').AsString,' ','',[rfReplaceAll]) = '' then
    begin
      MbError(NotDataComplete);
      dbedGDesc.SetFocus;
      Exit;
    end;
  end;  
end;

procedure TFrmEParam.REDUCTION_PACKOnGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intREDUCTION   : Text:= _stREDUCTION;
    _intNoREDUCTION : Text:= _stNoREDUCTION;
  end;
end;

procedure TFrmEParam.REDUCTION_PACKOnSetText(Sender: TField;
  const Text: String);
begin
  if Text = _stREDUCTION then
    Sender.AsInteger:= _intREDUCTION;
  if Text = _stNoREDUCTION then
    Sender.AsInteger:= _intNoREDUCTION;
end;

procedure TFrmEParam.CustomerNewRecord(DataSet: TDataSet);
begin
  with DataSet do
  begin
    Edit;
    FieldByName('CUSTGRP').AsInteger:= 1;
  end;
end;

procedure TFrmEParam.REDUCTION_PACKNewRecord(DataSet: TDataSet);
begin
  with DataSet do
  begin
    Edit;
    FieldByName('REDUCTION_PACK').AsInteger:= 2;
    FieldByName('PACK_TYPE').AsInteger:= 1;
    FieldByName('ISO_TYPE').AsInteger:= 1;
  end;
end;

procedure TFrmEParam.PACK_TYPEOnGetText(Sender: TField; var Text: String;
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

procedure TFrmEParam.PACK_TYPEOnSetText(Sender: TField;
  const Text: String);
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

procedure TFrmEParam.CF_GdsCalcFields(DataSet: TDataSet);
begin
  with FDM_Param.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT GDS_DESCF      ');
    Add('  FROM GOODS          ');
    Add(' WHERE GDS_CODE = :GDS_CODE   ');
    ParamByName('GDS_CODE').AsString:= DataSet.FieldByName('GDS_CODE').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;
    DataSet.FieldByName('CF_GDSDESC').AsString:= FieldByName('GDS_DESCF').AsString;
  end;
end;

procedure TFrmEParam.ISO_TYPEOnGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intIsoType1 : Text:= _stIsoType1;
    _intIsoType2 : Text:= _stIsoType2;
  end;
end;

procedure TFrmEParam.ISO_TYPEOnSetText(Sender: TField; const Text: String);
begin
  if Text = _stIsoType1 then
    Sender.AsInteger:= _intIsoType1;
  if Text = _stIsoType2 then
    Sender.AsInteger:= _intIsoType2;
end;

procedure TFrmEParam.qrEGdsInfoGDS_ABATEValidate(Sender: TField);
begin
  if Sender.Value = Null then Exit;
  if (Sender.AsFloat > 99.99) or (Sender.AsFloat <  0) then
  begin
    Raise Exception.Create(RangeErr);
    Abort;
  end; 
end;

procedure TFrmEParam.AddToAccCust;
  function ExistAccCust(AQuery: TQuery; ACustNo: string): Boolean;
  begin
    with AQuery, SQL do
    begin
      Clear;
      Add('SELECT CUSTNO             ');
      Add('  FROM ACCCUST_T    ');
      Add(' WHERE CUSTNO = :CUSTNO ');
      Add('   AND MOIN_YEAR  = :MOIN_YEAR');
      ParamByName('CUSTNO').AsString  := ACustNo;
      ParamByName('MOIN_YEAR').AsInteger := System_YY;
      SQL:= MbSqlConvert(SQL);
      Open;
      Result:= not IsEmpty;
      Close;
    end;
  end;
var
  TmpQr: TQuery;
  FName: string;
begin
  TmpQr:= TQuery.Create(Self);
  TmpQr.DataBaseName:= MbDB.DataBaseName[FDB];
  try
    if not ExistAccCust(TmpQr, FDM_Param.qrECustomer.FieldByName('CUSTNO').AsString) then
    begin
      with TmpQr, SQL do
      begin
        FName:= FDM_Param.qrECustomer.FieldByName('CUSTNAME').AsString;
        Clear;
        Add('INSERT INTO ACCCUST_T (       ');
        Add('  CUSTNO, MOIN_YEAR, MOIN_CODE, TAF_CODE, SEC_TAF_CODE)');
        Add('VALUES (:CUSTNO, :MOIN_YEAR, :MOIN_CODE, :TAF_CODE, :SEC_TAF_CODE)');
        ParamByName('CUSTNO').AsString        := FDM_Param.qrECustomer.FieldByName('CUSTNO').AsString;
        ParamByName('MOIN_YEAR').AsInteger    := System_YY;
        ParamByName('MOIN_CODE').AsString     := '2411';
        ParamByName('TAF_CODE').AsString  := FDM_Param.qrECustomer.FieldByName('CUSTNO').AsString;
        ParamByName('SEC_TAF_CODE').AsString      := '';
        SQL:= MbSqlConvert(SQL);
        ExecSQL;
      end;
    end;
  finally
    TmpQr.Free;
  end;
end;

procedure TFrmEParam.tbsGoodsInfoShow(Sender: TObject);
begin
  IsLock5 := False;
  DelFlag5:= True;
  AutoSelect(FDB, FDM_Param.qrEGoodsInfo, 'GDS_INFO_T', 0, IsLock5, '', 'ORDER BY INFO_CODE');
  if not (FDM_Param.qrEGoodsInfo.IsEmpty) then
  begin
    FDM_Param.qrEGoodsInfo.Last;
    btnPost.Enabled:= False;
    btnDel.Enabled:= True;
  end;
//  dbgrGoodsInfo.SetFocus;
  dbgrGoodsInfo.SelectedIndex := 0;
end;

procedure TFrmEParam.GdsBeforePost(DataSet: TDataSet);
begin
  with DataSet do
  begin
    if FieldByName('INFO_CODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrGoodsInfo.SetFocus;
      dbgrGoodsInfo.SelectedIndex:= 0;
      Abort;
    end;

    if FieldByName('INFO_DESC').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrGoodsInfo.SetFocus;
      dbgrGoodsInfo.SelectedIndex:= 1;
      Abort;
    end;
  end;
end;

procedure TFrmEParam.GdsBeforeScroll(DataSet: TDataSet);
begin
  if not DelFlag5 then
    Exit;
  if IsRowDuplicate(dbgrGoodsInfo, ['INFO_CODE']) then
  begin
    MbError(RepeatedError);
    dbgrGoodsInfo.SelectedIndex:= 0;
    Abort;
  end;
end;

procedure TFrmEParam.GdsBeforeDelete(DataSet: TDataSet);
begin
  DelFlag5:= False;
end;

procedure TFrmEParam.GdsAfterDelete(DataSet: TDataSet);
begin
  DelFlag5:= True;
  btnPost.Enabled:= True;
end;

procedure TFrmEParam.InfoCodeValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
  if (Sender.AsFloat > 9999) or (Sender.AsFloat < 0) then
  begin
    MbError(RangeErr);
    Abort;
  end;
end;

procedure TFrmEParam.GoodsInfoDelete;
var
  FQuery: TQuery;
begin
  if IsLock5 then
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
          Add('DELETE FROM ' + SchemaName + 'GDS_INFO_T');
          SQL:= MbSqlConvert(SQL);
          ExecSql;
        end;

        SelectEmpty(FDM_Param.qrEGoodsInfo, 'GDS_INFO_T');
        dbgrGoodsInfo.SetFocus;
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

procedure TFrmEParam.GoodsInfoSave;
begin
  if IsLock5 then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_Param.qrEGoodsInfo do
    begin
      ApplyUpdates;
    end;

    MbDB.Commit(FDB);
    IsLock5:= False;
    AutoSelect(FDB, FDM_Param.qrEGoodsInfo, 'GDS_INFO_T', 0, IsLock5, '', 'ORDER BY INFO_CODE');
    dbgrGoodsInfo.SetFocus;
    btnPost.Enabled:= False;
  except
    MbDB.RollBack(FDB);
  end;
end;

procedure TFrmEParam.StateSave;
begin
  if IsLock6 then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_Param.qrEState do
      ApplyUpdates;

    MbDB.Commit(FDB);
    IsLock6 := False;
    AutoSelect(FDB, FDM_Param.qrEState, 'STATE_T', 0, IsLock6);
    dbgrState.SetFocus;
    btnPost.Enabled:= False;
  except
    MbDB.RollBack(FDB);
  end;
end;

procedure TFrmEParam.StateDelete;
var
  FQuery: TQuery;
begin
  if IsLock6 then
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
          Add('DELETE FROM ' + SchemaName + 'STATE_T');
          SQL:= MbSqlConvert(SQL);
          ExecSql;
        end;

        SelectEmpty(FDM_Param.qrEState, 'STATE_T');
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

procedure TFrmEParam.tbsStateInfoShow(Sender: TObject);
begin
  IsLock6 := False;
  DelFlag6:= True;
  AutoSelect(FDB, FDM_Param.qrEState, 'STATE_T', 0, IsLock6, '', 'ORDER BY ST_CODE');
  if not (FDM_Param.qrEState.IsEmpty) then
  begin
    FDM_Param.qrEState.Last;
    btnPost.Enabled:= False;
    btnDel.Enabled:= True;
  end;
//  dbgrState.SetFocus;
  dbgrState.SelectedIndex := 0;
end;

procedure TFrmEParam.StateAfterDelete(DataSet: TDataSet);
begin
  DelFlag6 := True;
  btnPost.Enabled:= True;
end;

procedure TFrmEParam.StateBeforeDelete(DataSet: TDataSet);
begin
  DelFlag6:= False;
end;

procedure TFrmEParam.StateBeforePost(DataSet: TDataSet);
begin
  with DataSet do
  begin
    if FieldByName('ST_CODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrState.SetFocus;
      dbgrState.SelectedIndex:= 0;
      Abort;
    end;

    if FieldByName('ST_NAME').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrState.SetFocus;
      dbgrState.SelectedIndex:= 1;
      Abort;
    end;
  end;
end;

procedure TFrmEParam.StateBeforeScroll(DataSet: TDataSet);
begin
  if not DelFlag6 then
    Exit;
  if IsRowDuplicate(dbgrState, ['ST_CODE']) then
  begin
    MbError(RepeatedError);
    dbgrState.SelectedIndex:= 0;
    Abort;
  end;
end;

procedure TFrmEParam.TabSheet2Show(Sender: TObject);
begin
  IsLock7 := False;
  DelFlag7 := True;
  AutoSelect(FDB, FDM_Param.qrECity, 'CITY_T', 0, IsLock7, '', 'ORDER BY CT_CODE');
  if not (FDM_Param.qrECity.IsEmpty) then
  begin
    FDM_Param.qrECity.Last;
    btnPost.Enabled:= False;
    btnDel.Enabled:= True;
  end;
//  dbgrCity.SetFocus;
  dbgrCity.SelectedIndex := 0;
end;

procedure TFrmEParam.CityAfterDelete(DataSet: TDataSet);
begin
  DelFlag7 := True;
  btnPost.Enabled:= True;
end;

procedure TFrmEParam.CityBeforeDelete(DataSet: TDataSet);
begin
  DelFlag7:= False;
end;

procedure TFrmEParam.CityBeforePost(DataSet: TDataSet);
begin
  with DataSet do
  begin
    if FieldByName('CT_CODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrCity.SetFocus;
      dbgrCity.SelectedIndex:= 0;
      Abort;
    end;

    if FieldByName('CT_NAME').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrCity.SetFocus;
      dbgrCity.SelectedIndex:= 1;
      Abort;
    end;
  end;
end;

procedure TFrmEParam.CityBeforeScroll(DataSet: TDataSet);
begin
  if not DelFlag7 then
    Exit;
  if IsRowDuplicate(dbgrCity, ['CT_CODE']) then
  begin
    MbError(RepeatedError);
    dbgrCity.SelectedIndex:= 0;
    Abort;
  end;
end;

procedure TFrmEParam.CityDelete;
var
  FQuery: TQuery;
begin
  if IsLock7 then
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
          Add('DELETE FROM ' + SchemaName + 'CITY_T');
          SQL:= MbSqlConvert(SQL);
          ExecSql;
        end;

        SelectEmpty(FDM_Param.qrECity, 'CITY_T');
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

procedure TFrmEParam.CitySave;
begin
  if IsLock7 then
  begin
    MbError(LockRecord);
    Exit;
  end;
  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);
  try
    with FDM_Param.qrECity do
      ApplyUpdates;
    MbDB.Commit(FDB);
    IsLock7 := False;
    AutoSelect(FDB, FDM_Param.qrECity, 'CITY_T', 0, IsLock7);
    dbgrCity.SetFocus;
    btnPost.Enabled:= False;
  except
    MbDB.RollBack(FDB);
  end;
end;

procedure TFrmEParam.CF_STATENAMECalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CF_STATENAME').AsString := GetStateName(DataSet.FieldByName('CT_STATE').AsString);
end;

procedure TFrmEParam.qrECityCT_STATEValidate(Sender: TField);
begin
  if Sender.AsInteger > 9999 then
  begin
    MbError(OutOfRange);
    Abort;
  end;
  if GetStateName(Sender.AsString) = '' then
  begin
    MbError(InvalidCode);
    Abort;
  end;
end;

procedure TFrmEParam.dbgrCityEditButtonClick(Sender: TObject);
var
  Code: String;
begin
  if dbgrCity.SelectedField = dbgrCity.DataSource.DataSet.FieldByName('CT_STATE') then
  begin
    if HelpState(Code) then
      with FDM_Param.qrECity do
      begin
        Edit;
        FieldByName('CT_STATE').AsString:= Code;
      end;
  end;
end;

procedure TFrmEParam.btnLockClick(Sender: TObject);
begin
  with FDM_Param.qrECustomer do
  begin
    Edit;
    FieldByName('CUST_ADMIN').AsString := GetUserNameId(MabnaInfo.CurrentUserID);
    FieldByName('CUST_ADMIN_DATE').AsString := MbSystemDate;
  end;
  CustomerSave;
end;

procedure TFrmEParam.dbedStateExit(Sender: TObject);
begin
  if FDM_Param.qrECustomer.FieldByName('CUST_STATE').AsString = '' then
  begin
    FDM_Param.qrECustomer.Edit;
    FDM_Param.qrECustomer.FieldByName('CUST_CTCODE').AsString := '';
    Exit;
  end;
  if GetStateName(FDM_Param.qrECustomer.FieldByName('CUST_STATE').AsString) = '' then
  begin
    MbError(InvalidCode);
    dbedState.SetFocus;
    Exit;
  end;
  if FDM_Param.qrECustomer.FieldByName('CUST_CTCODE').AsString <> '' then
    if GetCityName(FDM_Param.qrECustomer.FieldByName('CUST_CTCODE').AsString, FDM_Param.qrECustomer.FieldByName('CUST_STATE').AsString) = '' then
    begin
      MbError(UnRelatedCode);
      dbedCity.SetFocus;
      Exit;
    end;
end;

procedure TFrmEParam.dbedCityExit(Sender: TObject);
begin
  if FDM_Param.qrECustomer.FieldByName('CUST_CTCODE').AsString = '' then Exit;
   if GetCityName(FDM_Param.qrECustomer.FieldByName('CUST_CTCODE').AsString, FDM_Param.qrECustomer.FieldByName('CUST_STATE').AsString) = '' then
  begin
    MbError(InvalidCode);
    dbedCity.SetFocus;
    Exit;
  end;
end;

procedure TFrmEParam.SpeedButton3Click(Sender: TObject);
var
  Code: string;
begin
  if HelpState(Code) then
  begin
    dbedState.SetFocus;
    with FDM_Param.qrECustomer do
    begin
      Edit;
      FieldByName('CUST_STATE').AsString := Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEParam.SpeedButton4Click(Sender: TObject);
var
  Code: string;
begin
  if HelpCity(Code, FDM_Param.qrECustomer.FieldByName('CUST_STATE').AsString) then
  begin
    dbedCity.SetFocus;
    with FDM_Param.qrECustomer do
    begin
      Edit;
      FieldByName('CUST_CTCODE').AsString := Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEParam.dbedVisitiorExit(Sender: TObject);
begin
  if FDM_Param.qrECustomer.FieldByName('CUST_VISITOR').AsString = '' then Exit;
  if GetVisitorName(FDM_Param.qrECustomer.FieldByName('CUST_VISITOR').AsString) = '' then
  begin
    MbError(InvalidCode);
    dbedVisitior.SetFocus;
    Exit;
  end;
end;

procedure TFrmEParam.SpeedButton5Click(Sender: TObject);
var
  Code: string;
begin
  if HelpVisitor(Code) then
  begin
    dbedVisitior.SetFocus;
    with FDM_Param.qrECustomer do
    begin
      Edit;
      FieldByName('CUST_VISITOR').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEParam.chbOtherClick(Sender: TObject);
begin
  dbedOthr.Enabled := chbOther.Checked;
end;

procedure TFrmEParam.BitBtn2Click(Sender: TObject);
begin
  with FDM_Param.qrECustomer do
  begin
    Edit;
    FieldByName('CUST_CONTROL').AsString := GetUserNameId(MabnaInfo.CurrentUserID);
    FieldByName('CUST_CONTROL_DATE').AsString := MbSystemDate;
  end;
  CustomerSave;
end;

procedure TFrmEParam.qrECustomerAfterScroll(DataSet: TDataSet);
begin
  CustId := DataSet.FieldByName('CUSTNO').AsString;
end;

procedure TFrmEParam.dbedCustDirExit(Sender: TObject);
begin
  if FDM_Param.qrECustomer.FieldByName('CUST_DIR').AsString = '' then Exit;
  if GetDirectName(FDM_Param.qrECustomer.FieldByName('CUSTTYPE_CODE').AsString, FDM_Param.qrECustomer.FieldByName('CUST_DIR').AsString) = '' then
  begin
    MbError(InvalidCode);
    dbedCustDir.SetFocus;
    Exit;
  end;
end;

procedure TFrmEParam.SpeedButton6Click(Sender: TObject);
var
  Code: string;
begin
  if HelpDirect(Code, FDM_Param.qrECustomer.FieldByName('CUSTTYPE_CODE').AsString) then
  begin
    dbedCustDir.SetFocus;
    with FDM_Param.qrECustomer do
    begin
      Edit;
      FieldByName('CUST_DIR').AsString := Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEParam.BoxBeforePost(DataSet: TDataSet);
begin
  with DataSet do
  begin
    if FieldByName('BOX_CODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrEBox.SetFocus;
      dbgrEBox.SelectedIndex:= 0;
      Abort;
    end;
  end;
end;

procedure TFrmEParam.BoxBeforeScroll(DataSet: TDataSet);
begin
  if not DelFlag8 then
    Exit;
  if IsRowDuplicate(dbgrEBox, ['BOX_CODE']) then
  begin
    MbError(RepeatedError);
    dbgrEBox.SelectedIndex:= 0;
    Abort;
  end;
end;

procedure TFrmEParam.BoxBeforeDelete(DataSet: TDataSet);
begin
  DelFlag8:= False;
end;

procedure TFrmEParam.BoxAfterDelete(DataSet: TDataSet);
begin
  DelFlag8 := True;
  btnPost.Enabled:= True;
end;

procedure TFrmEParam.BoxSave;
begin
  if IsLock8 then
  begin
    MbError(LockRecord);
    Exit;
  end;
  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);
  try
    with FDM_Param.qrEBox do
      ApplyUpdates;
    MbDB.Commit(FDB);
    IsLock8 := False;
    AutoSelect(FDB, FDM_Param.qrEBox, 'BOX_T', 0, IsLock8);
    dbgrEBox.SetFocus;
    btnPost.Enabled:= False;
  except
    MbDB.RollBack(FDB);
  end;
end;

procedure TFrmEParam.BoxDelete;
var
  FQuery: TQuery;
begin
  if IsLock8 then
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
          Add('DELETE FROM ' + SchemaName + 'BOX_T');
          SQL:= MbSqlConvert(SQL);
          ExecSql;
        end;

        SelectEmpty(FDM_Param.qrEBox, 'BOX_T');
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

procedure TFrmEParam.TabSheet1Show(Sender: TObject);
begin
  IsLock8 := False;
  DelFlag8:= True;
  SelectData(FDM_Param.qrEBox, 'BOX_T', 'FALSE', 'GRIDVIEW');
  if not (FDM_Param.qrEBox.IsEmpty) then
  begin
    FDM_Param.qrEBox.Last;
    btnPost.Enabled:= False;
    btnDel.Enabled:= True;
  end;
//  dbgrEBox.SetFocus;
  dbgrEBox.SelectedIndex := 0;
end;

procedure TFrmEParam.qrEBoxValidate(Sender: TField);
begin
  if Sender.AsFloat > 99.99 then
  begin
    MbError(OutOfRange);
    Abort;
  end;
end;

procedure TFrmEParam.SpeedButton7Click(Sender: TObject);
var
  Code: string;
begin
  if HelpBox(Code) then
  begin
    dbedGDSBox.SetFocus;
    with FDM_Param.qrEGdsInfo do
    begin
      Edit;
      FieldByName('GDS_BOX').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEParam.dbedGDSBoxExit(Sender: TObject);
begin
  if FDM_Param.qrEGdsInfo.FieldByName('GDS_BOX').AsString = '' then Exit;
  if GetBoxName(FDM_Param.qrEGdsInfo.FieldByName('GDS_BOX').AsString) = '' then
  begin
    MbError(InvalidCode);
    dbedGDSBox.SetFocus;
  end;
end;

procedure TFrmEParam.GdsStatOnGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intActiveMode: Text:= _stActiveMode;
    _intDeActiveMode: Text:= _stDeActiveMode;
  end;
end;

procedure TFrmEParam.GdsStatOnSetText(Sender: TField; const Text: String);
begin
  if Text = _stActiveMode then
    Sender.AsInteger:= _intActiveMode;
  if Text = _stDeActiveMode then
    Sender.AsInteger:= _intDeActiveMode;
end;

procedure TFrmEParam.CustKindAfterDelete(DataSet: TDataSet);
begin
  DelFlag9 := True;
  btnPost.Enabled:= True;
end;

procedure TFrmEParam.CustKindBeforeDelete(DataSet: TDataSet);
begin
  DelFlag9:= False;
end;

procedure TFrmEParam.CustKindBeforePost(DataSet: TDataSet);
begin
  with DataSet do
  begin
    if FieldByName('CK_CODE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrECustKind.SetFocus;
      dbgrECustKind.SelectedIndex:= 0;
      Abort;
    end;
  end;
end;

procedure TFrmEParam.CustKindBeforeScroll(DataSet: TDataSet);
begin
  if not DelFlag9 then
    Exit;          
  if IsRowDuplicate(dbgrECustKind, ['CK_CODE']) then
  begin
    MbError(RepeatedError);
    dbgrECustKind.SelectedIndex:= 0;
    Abort;
  end;
end;

procedure TFrmEParam.CustKindDelete;
var
  FQuery: TQuery;
begin
  if IsLock9 then
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
          Add('DELETE FROM ' + SchemaName + 'CUSTKIND_T');
          SQL:= MbSqlConvert(SQL);
          ExecSql;
        end;
        SelectEmpty(FDM_Param.qrECustKind, 'CUSTKIND_T');
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

procedure TFrmEParam.CustKindSave;
begin
  if IsLock9 then
  begin
    MbError(LockRecord);
    Exit;
  end;
  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);
  try
    with FDM_Param.qrECustKind do
      ApplyUpdates;
    MbDB.Commit(FDB);
    IsLock9 := False;
    AutoSelect(FDB, FDM_Param.qrECustKind, 'CUSTKIND_T', 0, IsLock9);
    dbgrECustKind.SetFocus;
    btnPost.Enabled:= False;
  except
    MbDB.RollBack(FDB);
  end;
end;

procedure TFrmEParam.tbsCustKindShow(Sender: TObject);
begin
  IsLock9 := False;
  DelFlag9:= True;
  SelectData(FDM_Param.qrECustKind, 'CUSTKIND_T', 'FALSE', 'GRIDVIEW');
  if not (FDM_Param.qrECustKind.IsEmpty) then
  begin
    FDM_Param.qrECustKind.Last;
    btnPost.Enabled:= False;
    btnDel.Enabled:= True;
  end;
//  dbgrECustKind.SetFocus;
  dbgrECustKind.SelectedIndex := 0;
  tbsCustKind.Repaint;
end;

procedure TFrmEParam.SpeedButton8Click(Sender: TObject);
var
  Code: string;
begin
  if HelpCustKind(Code) then
  begin
    dbedCustKind.SetFocus;
    with FDM_Param.qrECustomer do
    begin
      Edit;        
      FieldByName('CUST_CUSTKIND').AsString := Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEParam.dbedCustKindExit(Sender: TObject);
begin
  if dbedCustKind.Text = '' then Exit;
  if GetCustKindName(FDM_Param.qrECustomer.FieldByName('CUST_CUSTKIND').AsString) = '' then
  begin
    MbError(InvalidCustType);
    dbedCustKind.SetFocus;
    Abort;
  end;
end;

procedure TFrmEParam.dbedCustKindKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    SpeedButton8.Click;
end;

procedure TFrmEParam.dbedCityKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    SpeedButton4.Click;
end;

procedure TFrmEParam.dbedCustDirKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    SpeedButton6.Click;
end;

procedure TFrmEParam.SpeedButton9Click(Sender: TObject);
var
  Code: string;
begin
  if HelpCustomerType(Code) then
  begin
    dbedCustType.SetFocus;
    with FDM_Param.qrECustType do
    begin
      Edit;
      FieldByName('CUSTTYPE_CODE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

{procedure TFrmEParam.AddToForSend(CustNo: String;);
var
  TmpQr: TQuery;
begin
  TmpQr:= TQuery.Create(Self);
  TmpQr.DataBaseName:= MbDB.DataBaseName[FDB];
  try
    with TmpQr do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CUSTNO FROM IDCUSTOMER_SEND_T');
      SQL.Add('WHERE CUSTNO = :CUSTNO');
      ParamByName('CUSTNO').AsString := CustNo;
      Open;
      if not IsEmpty then
      begin
        Close;
        SQL.Clear;
        SQL.Add('INSERT INTO IDCUSTOMER_SEND_T');
        SQL.Add('(CUSTNO, CUST_STAT)');
        SQL.Add('VALUES');
        SQL.Add('(:CUSTNO, :CUST_STAT)');
        ParamByName('CUSTNO').AsString := CustNo;
        ParamByName('CUST_STAT').AsInteger := 0;
        ExecSQL;
      end;
    end;
  finally
    TmpQr.Free;
  end;
end;}

procedure TFrmEParam.TAF_YEAROnGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if Sender.AsString = '0' then Text:= '€Ì— ›⁄«·';
  if Sender.AsString = '1' then Text:= '›⁄«·';
  if Sender.AsString = '2' then Text:= 'çò »—ê‘ Ì';
end;

procedure TFrmEParam.TAF_YEAROnSetText(Sender: TField; const Text: String);
begin
  if Text = '€Ì— ›⁄«·' then
    Sender.AsString := '0';
  if Text = '›⁄«·' then
    Sender.AsString := '1';
  if Text = 'çò »—ê‘ Ì' then
    Sender.AsString := '2';
end;

procedure TFrmEParam.SpeedButton10Click(Sender: TObject);
var
  Code: string;
begin
  if HelpGdsInfo(Code) then
  begin
    DBEdit36.SetFocus;
    with FDM_Param.qrEGdsInfo do
    begin
      Edit;
      FieldByName('GDS_INFO').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEParam.DBEdit36Exit(Sender: TObject);
begin
  if FDM_Param.qrEGdsInfo.FieldByName('GDS_INFO').AsString = '' then Exit;
  if FindGdsInfoDesc(FDM_Param.qrEGdsInfo.FieldByName('GDS_INFO').AsString) = '' then
  begin
    MbError(InvalidCode);
    DBEdit36.SetFocus;
  end;
end;

procedure TFrmEParam.TAF_YEARValidate(Sender: TField);
begin
  if Sender.AsString = '2' then
  begin
    MbError('«Ì‰ ê“Ì‰Â  ‰Â«  Ê”ÿ ”Ì” „ ﬁ«»· «‰ Œ«» «” ');
    Abort;
  end;
end;

procedure TFrmEParam.InsertIntoIdCustomer(CustNo: string);
var
  I: Integer;
begin
  if FindCusName(CustNo) <> '' then
    with qrTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE IDCUSTOMER_T SET');
      SQL.Add('  CUSTNO = :CUSTNO,');
      SQL.Add('  CUSTNAME = :CUSTNAME,');
      SQL.Add('  CUSTADD = :CUSTADD,');
      SQL.Add('  CUSTPOST = :CUSTPOST,');
      SQL.Add('  CUSTTEL = :CUSTTEL,');
      SQL.Add('  CUSTFAX = :CUSTFAX,');
      SQL.Add('  CUSTMOB = :CUSTMOB,');
      SQL.Add('  CUSTGRP = :CUSTGRP,');
      SQL.Add('  MOIN_CODE = :MOIN_CODE,');
      SQL.Add('  MOIN_YEAR = :MOIN_YEAR,');
      SQL.Add('  TAFSILY_CODE = :TAFSILY_CODE,');
      SQL.Add('  TAF_YEAR = :TAF_YEAR,');
      SQL.Add('  ECONOMIC_CODE = :ECONOMIC_CODE,');
      SQL.Add('  CUST_EMAIL = :CUST_EMAIL,');
      SQL.Add('  PERCENT_REDUCTION = :PERCENT_REDUCTION,');
      SQL.Add('  CUSTTYPE_CODE = :CUSTTYPE_CODE,');
      SQL.Add('  CUST_DESC = :CUST_DESC,');
      SQL.Add('  CUST_CO = :CUST_CO,');
      SQL.Add('  CUSTREGISTER = :CUSTREGISTER,');
      SQL.Add('  CUST_VISITOR = :CUST_VISITOR,');
      SQL.Add('  CUST_ADMIN = :CUST_ADMIN,');
      SQL.Add('  CUST_ADMIN_DATE = :CUST_ADMIN_DATE,');
      SQL.Add('  CUST_VISITOR_DATE = :CUST_VISITOR_DATE,');
      SQL.Add('  CUST_CONTROL_DATE = :CUST_CONTROL_DATE,');
      SQL.Add('  CUST_OPRATOR_DATE = :CUST_OPRATOR_DATE,');
      SQL.Add('  CUST_LICENCE = :CUST_LICENCE,');
      SQL.Add('  CUST_CONTROL = :CUST_CONTROL,');
      SQL.Add('  CUST_OPRATOR = :CUST_OPRATOR,');
      SQL.Add('  CUST_DIR = :CUST_DIR,');
      SQL.Add('  CUST_LICENCE_CARD = :CUST_LICENCE_CARD,');
      SQL.Add('  CUST_LICENCE_OTHER = :CUST_LICENCE_OTHER,');
      SQL.Add('  CUST_CTCODE = :CUST_CTCODE,');
      SQL.Add('  CUST_STATE = :CUST_STATE,');
      SQL.Add('  NAT_CODE = :NAT_CODE,');
      SQL.Add('  CUST_CUSTKIND = :CUST_CUSTKIND,');
      SQL.Add('  CUST_DISTPERSENT = :CUST_DISTPERSENT,');
      SQL.Add('  CUST_DISTRIAL = :CUST_DISTRIAL,');
      SQL.Add('  CUST_DISTQTY = :CUST_DISTQTY,');
      SQL.Add('  SALECHANNEL = :SALECHANNEL,');
      SQL.Add('  CUST_DRORDER = :CUST_DRORDER,');
      SQL.Add('  CUST_DISTROW = :CUST_DISTROW,');
      SQL.Add('  SEND_STAT = :SEND_STAT,');
      SQL.Add('  BR_CODE = :BR_CODE,');
      SQL.Add('  COUNTERY_CODE = :COUNTERY_CODE,');
      SQL.Add('  CUSTMIDNAME = :CUSTMIDNAME,');
      SQL.Add('  ISPERSONEL = :ISPERSONEL,');
      SQL.Add('  NAGHSH_CODE = :NAGHSH_CODE');
      SQL.Add('WHERE CUSTNO = :CUSTNO');
      ParamByName('CUSTNO').AsString := FDM_Param.qrECustomer.FieldByName('CUSTNO').AsString;
      ParamByName('CUSTNAME').AsString := FDM_Param.qrECustomer.FieldByName('CUSTNAME').AsString;
      ParamByName('CUSTADD').AsString := FDM_Param.qrECustomer.FieldByName('CUSTADD').AsString;
      ParamByName('CUSTPOST').AsString := FDM_Param.qrECustomer.FieldByName('CUSTPOST').AsString;
      ParamByName('CUSTTEL').AsString := FDM_Param.qrECustomer.FieldByName('CUSTTEL').AsString;
      ParamByName('CUSTFAX').AsString := FDM_Param.qrECustomer.FieldByName('CUSTFAX').AsString;
      ParamByName('CUSTMOB').AsString := FDM_Param.qrECustomer.FieldByName('CUSTMOB').AsString;
      ParamByName('CUSTGRP').AsString := FDM_Param.qrECustomer.FieldByName('CUSTGRP').AsString;
      ParamByName('MOIN_CODE').AsString := FDM_Param.qrECustomer.FieldByName('MOIN_CODE').AsString;
      ParamByName('MOIN_YEAR').AsString := FDM_Param.qrECustomer.FieldByName('MOIN_YEAR').AsString;
      ParamByName('TAFSILY_CODE').AsString := FDM_Param.qrECustomer.FieldByName('TAFSILY_CODE').AsString;
      ParamByName('TAF_YEAR').AsString := FDM_Param.qrECustomer.FieldByName('TAF_YEAR').AsString;
      ParamByName('ECONOMIC_CODE').AsString := FDM_Param.qrECustomer.FieldByName('ECONOMIC_CODE').AsString;
      ParamByName('CUST_EMAIL').AsString := FDM_Param.qrECustomer.FieldByName('CUST_EMAIL').AsString;
      ParamByName('PERCENT_REDUCTION').AsString := FDM_Param.qrECustomer.FieldByName('PERCENT_REDUCTION').AsString;
      ParamByName('CUSTTYPE_CODE').AsString := FDM_Param.qrECustomer.FieldByName('CUSTTYPE_CODE').AsString;
      ParamByName('CUST_DESC').AsString := FDM_Param.qrECustomer.FieldByName('CUST_DESC').AsString;
      ParamByName('CUST_CO').AsString := FDM_Param.qrECustomer.FieldByName('CUST_CO').AsString;
      ParamByName('CUSTREGISTER').AsString := FDM_Param.qrECustomer.FieldByName('CUSTREGISTER').AsString;
      ParamByName('CUST_VISITOR').AsString := FDM_Param.qrECustomer.FieldByName('CUST_VISITOR').AsString;
      ParamByName('CUST_ADMIN').AsString := FDM_Param.qrECustomer.FieldByName('CUST_ADMIN').AsString;
      ParamByName('CUST_ADMIN_DATE').AsString := FDM_Param.qrECustomer.FieldByName('CUST_ADMIN_DATE').AsString;
      ParamByName('CUST_VISITOR_DATE').AsString := FDM_Param.qrECustomer.FieldByName('CUST_VISITOR_DATE').AsString;
      ParamByName('CUST_CONTROL_DATE').AsString := FDM_Param.qrECustomer.FieldByName('CUST_CONTROL_DATE').AsString;
      ParamByName('CUST_OPRATOR_DATE').AsString := FDM_Param.qrECustomer.FieldByName('CUST_OPRATOR_DATE').AsString;
      ParamByName('CUST_LICENCE').AsString := FDM_Param.qrECustomer.FieldByName('CUST_LICENCE').AsString;
      ParamByName('CUST_CONTROL').AsString := FDM_Param.qrECustomer.FieldByName('CUST_CONTROL').AsString;
      ParamByName('CUST_OPRATOR').AsString := FDM_Param.qrECustomer.FieldByName('CUST_OPRATOR').AsString;
      ParamByName('CUST_DIR').AsString := FDM_Param.qrECustomer.FieldByName('CUST_DIR').AsString;
      ParamByName('CUST_LICENCE_CARD').AsString := FDM_Param.qrECustomer.FieldByName('CUST_LICENCE_CARD').AsString;
      ParamByName('CUST_LICENCE_OTHER').AsString := FDM_Param.qrECustomer.FieldByName('CUST_LICENCE_OTHER').AsString;
      ParamByName('CUST_CTCODE').AsString := FDM_Param.qrECustomer.FieldByName('CUST_CTCODE').AsString;
      ParamByName('CUST_STATE').AsString := FDM_Param.qrECustomer.FieldByName('CUST_STATE').AsString;
      ParamByName('NAT_CODE').AsString := FDM_Param.qrECustomer.FieldByName('NAT_CODE').AsString;
      ParamByName('CUST_CUSTKIND').AsString := FDM_Param.qrECustomer.FieldByName('CUST_CUSTKIND').AsString;
      ParamByName('CUST_DISTPERSENT').AsString := FDM_Param.qrECustomer.FieldByName('CUST_DISTPERSENT').AsString;
      ParamByName('CUST_DISTRIAL').AsString := FDM_Param.qrECustomer.FieldByName('CUST_DISTRIAL').AsString;
      ParamByName('CUST_DISTQTY').AsString := FDM_Param.qrECustomer.FieldByName('CUST_DISTQTY').AsString;
      ParamByName('SALECHANNEL').AsString := FDM_Param.qrECustomer.FieldByName('SALECHANNEL').AsString;
      ParamByName('CUST_DRORDER').AsString := FDM_Param.qrECustomer.FieldByName('CUST_DRORDER').AsString;
      ParamByName('CUST_DISTROW').AsString := FDM_Param.qrECustomer.FieldByName('CUST_DISTROW').AsString;
      ParamByName('SEND_STAT').AsString := FDM_Param.qrECustomer.FieldByName('SEND_STAT').AsString;
      ParamByName('BR_CODE').AsString := FDM_Param.qrECustomer.FieldByName('BR_CODE').AsString;
      ParamByName('COUNTERY_CODE').AsString := FDM_Param.qrECustomer.FieldByName('COUNTERY_CODE').AsString;
      ParamByName('CUSTMIDNAME').AsString := FDM_Param.qrECustomer.FieldByName('CUSTMIDNAME').AsString;
      ParamByName('ISPERSONEL').AsString := FDM_Param.qrECustomer.FieldByName('ISPERSONEL').AsString;
      ParamByName('NAGHSH_CODE').AsString := FDM_Param.qrECustomer.FieldByName('NAGHSH_CODE').AsString;
//      for I := 0 to FDM_Param.qrECustomer.FieldCount - 1 do
//        ParamByName(Params[I].Name).AsString := FDM_Param.qrECustomer.FieldByName(Params[I].Name).AsString;
{        if Copy(FDM_Param.qrECustomer.Fields[I].FieldName, 1, 3) <> 'CF_' then
          ParamByName(FDM_Param.qrECustomer.Fields[I].FieldName).AsString := FDM_Param.qrECustomer.Fields[I].AsString;}
      ExecSQL;
    end
  else
    with qrTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO IDCUSTOMER_T (');
      SQL.Add('  CUSTNO, CUSTNAME, CUSTADD, CUSTPOST, CUSTTEL, CUSTFAX, CUSTMOB,');
      SQL.Add('  CUSTGRP, MOIN_CODE, MOIN_YEAR, TAFSILY_CODE, TAF_YEAR, ECONOMIC_CODE,');
      SQL.Add('  CUST_EMAIL, PERCENT_REDUCTION, CUSTTYPE_CODE, CUST_DESC, CUST_CO,');
      SQL.Add('  CUSTREGISTER, CUST_VISITOR, CUST_ADMIN, CUST_ADMIN_DATE, CUST_VISITOR_DATE,');
      SQL.Add('  CUST_CONTROL_DATE, CUST_OPRATOR_DATE, CUST_LICENCE, CUST_CONTROL,');
      SQL.Add('  CUST_OPRATOR, CUST_DIR, CUST_LICENCE_CARD, CUST_LICENCE_OTHER, CUST_CTCODE,');
      SQL.Add('  CUST_STATE, NAT_CODE, CUST_CUSTKIND, CUST_DISTPERSENT, CUST_DISTRIAL,');
      SQL.Add('  CUST_DISTQTY, SALECHANNEL, CUST_DRORDER, CUST_DISTROW, SEND_STAT,');
      SQL.Add('  BR_CODE, COUNTERY_CODE, CUSTMIDNAME, ISPERSONEL, NAGHSH_CODE)');
      SQL.Add('VALUES (:CUSTNO, :CUSTNAME, :CUSTADD, :CUSTPOST, :CUSTTEL, :CUSTFAX,');
      SQL.Add('  :CUSTMOB, :CUSTGRP, :MOIN_CODE, :MOIN_YEAR, :TAFSILY_CODE, :TAF_YEAR,');
      SQL.Add('  :ECONOMIC_CODE, :CUST_EMAIL, :PERCENT_REDUCTION, :CUSTTYPE_CODE,');
      SQL.Add('  :CUST_DESC, :CUST_CO, :CUSTREGISTER, :CUST_VISITOR, :CUST_ADMIN,');
      SQL.Add('  :CUST_ADMIN_DATE, :CUST_VISITOR_DATE, :CUST_CONTROL_DATE, :CUST_OPRATOR_DATE,');
      SQL.Add('  :CUST_LICENCE, :CUST_CONTROL, :CUST_OPRATOR, :CUST_DIR, :CUST_LICENCE_CARD,');
      SQL.Add('  :CUST_LICENCE_OTHER, :CUST_CTCODE, :CUST_STATE, :NAT_CODE, :CUST_CUSTKIND,');
      SQL.Add('  :CUST_DISTPERSENT, :CUST_DISTRIAL, :CUST_DISTQTY, :SALECHANNEL,');
      SQL.Add('  :CUST_DRORDER, :CUST_DISTROW, :SEND_STAT, :BR_CODE, :COUNTERY_CODE, :CUSTMIDNAME, :ISPERSONEL, :NAGHSH_CODE)');
      ParamByName('CUSTNO').AsString := FDM_Param.qrECustomer.FieldByName('CUSTNO').AsString;
      ParamByName('CUSTNAME').AsString := FDM_Param.qrECustomer.FieldByName('CUSTNAME').AsString;
      ParamByName('CUSTADD').AsString := FDM_Param.qrECustomer.FieldByName('CUSTADD').AsString;
      ParamByName('CUSTPOST').AsString := FDM_Param.qrECustomer.FieldByName('CUSTPOST').AsString;
      ParamByName('CUSTTEL').AsString := FDM_Param.qrECustomer.FieldByName('CUSTTEL').AsString;
      ParamByName('CUSTFAX').AsString := FDM_Param.qrECustomer.FieldByName('CUSTFAX').AsString;
      ParamByName('CUSTMOB').AsString := FDM_Param.qrECustomer.FieldByName('CUSTMOB').AsString;
      ParamByName('CUSTGRP').AsString := FDM_Param.qrECustomer.FieldByName('CUSTGRP').AsString;
      ParamByName('MOIN_CODE').AsString := FDM_Param.qrECustomer.FieldByName('MOIN_CODE').AsString;
      ParamByName('MOIN_YEAR').AsString := FDM_Param.qrECustomer.FieldByName('MOIN_YEAR').AsString;
      ParamByName('TAFSILY_CODE').AsString := FDM_Param.qrECustomer.FieldByName('TAFSILY_CODE').AsString;
      ParamByName('TAF_YEAR').AsString := FDM_Param.qrECustomer.FieldByName('TAF_YEAR').AsString;
      ParamByName('ECONOMIC_CODE').AsString := FDM_Param.qrECustomer.FieldByName('ECONOMIC_CODE').AsString;
      ParamByName('CUST_EMAIL').AsString := FDM_Param.qrECustomer.FieldByName('CUST_EMAIL').AsString;
      ParamByName('PERCENT_REDUCTION').AsString := FDM_Param.qrECustomer.FieldByName('PERCENT_REDUCTION').AsString;
      ParamByName('CUSTTYPE_CODE').AsString := FDM_Param.qrECustomer.FieldByName('CUSTTYPE_CODE').AsString;
      ParamByName('CUST_DESC').AsString := FDM_Param.qrECustomer.FieldByName('CUST_DESC').AsString;
      ParamByName('CUST_CO').AsString := FDM_Param.qrECustomer.FieldByName('CUST_CO').AsString;
      ParamByName('CUSTREGISTER').AsString := FDM_Param.qrECustomer.FieldByName('CUSTREGISTER').AsString;
      ParamByName('CUST_VISITOR').AsString := FDM_Param.qrECustomer.FieldByName('CUST_VISITOR').AsString;
      ParamByName('CUST_ADMIN').AsString := FDM_Param.qrECustomer.FieldByName('CUST_ADMIN').AsString;
      ParamByName('CUST_ADMIN_DATE').AsString := FDM_Param.qrECustomer.FieldByName('CUST_ADMIN_DATE').AsString;
      ParamByName('CUST_VISITOR_DATE').AsString := FDM_Param.qrECustomer.FieldByName('CUST_VISITOR_DATE').AsString;
      ParamByName('CUST_CONTROL_DATE').AsString := FDM_Param.qrECustomer.FieldByName('CUST_CONTROL_DATE').AsString;
      ParamByName('CUST_OPRATOR_DATE').AsString := FDM_Param.qrECustomer.FieldByName('CUST_OPRATOR_DATE').AsString;
      ParamByName('CUST_LICENCE').AsString := FDM_Param.qrECustomer.FieldByName('CUST_LICENCE').AsString;
      ParamByName('CUST_CONTROL').AsString := FDM_Param.qrECustomer.FieldByName('CUST_CONTROL').AsString;
      ParamByName('CUST_OPRATOR').AsString := FDM_Param.qrECustomer.FieldByName('CUST_OPRATOR').AsString;
      ParamByName('CUST_DIR').AsString := FDM_Param.qrECustomer.FieldByName('CUST_DIR').AsString;
      ParamByName('CUST_LICENCE_CARD').AsString := FDM_Param.qrECustomer.FieldByName('CUST_LICENCE_CARD').AsString;
      ParamByName('CUST_LICENCE_OTHER').AsString := FDM_Param.qrECustomer.FieldByName('CUST_LICENCE_OTHER').AsString;
      ParamByName('CUST_CTCODE').AsString := FDM_Param.qrECustomer.FieldByName('CUST_CTCODE').AsString;
      ParamByName('CUST_STATE').AsString := FDM_Param.qrECustomer.FieldByName('CUST_STATE').AsString;
      ParamByName('NAT_CODE').AsString := FDM_Param.qrECustomer.FieldByName('NAT_CODE').AsString;
      ParamByName('CUST_CUSTKIND').AsString := FDM_Param.qrECustomer.FieldByName('CUST_CUSTKIND').AsString;
      ParamByName('CUST_DISTPERSENT').AsString := FDM_Param.qrECustomer.FieldByName('CUST_DISTPERSENT').AsString;
      ParamByName('CUST_DISTRIAL').AsString := FDM_Param.qrECustomer.FieldByName('CUST_DISTRIAL').AsString;
      ParamByName('CUST_DISTQTY').AsString := FDM_Param.qrECustomer.FieldByName('CUST_DISTQTY').AsString;
      ParamByName('SALECHANNEL').AsString := FDM_Param.qrECustomer.FieldByName('SALECHANNEL').AsString;
      ParamByName('CUST_DISTROW').AsString := FDM_Param.qrECustomer.FieldByName('CUST_DISTROW').AsString;
      ParamByName('CUST_DRORDER').AsString := FDM_Param.qrECustomer.FieldByName('CUST_DRORDER').AsString;
      ParamByName('SEND_STAT').AsString := FDM_Param.qrECustomer.FieldByName('SEND_STAT').AsString;
      ParamByName('BR_CODE').AsString := FDM_Param.qrECustomer.FieldByName('BR_CODE').AsString;
      ParamByName('COUNTERY_CODE').AsString := FDM_Param.qrECustomer.FieldByName('COUNTERY_CODE').AsString;
      ParamByName('CUSTMIDNAME').AsString := FDM_Param.qrECustomer.FieldByName('CUSTMIDNAME').AsString;
      ParamByName('ISPERSONEL').AsString := FDM_Param.qrECustomer.FieldByName('ISPERSONEL').AsString;
      ParamByName('NAGHSH_CODE').AsString := FDM_Param.qrECustomer.FieldByName('NAGHSH_CODE').AsString;
//      for I := 0 to FDM_Param.qrECustomer.FieldCount - 1 do
//        ParamByName(Params[I].Name).AsString := FDM_Param.qrECustomer.FieldByName(Params[I].Name).AsString;
{        if Copy(FDM_Param.qrECustomer.Fields[I].FieldName, 1, 3) <> 'CF_' then
          ParamByName(FDM_Param.qrECustomer.Fields[I].FieldName).AsString := FDM_Param.qrECustomer.Fields[I].AsString;}
      ExecSQL;
    end;
end;

procedure TFrmEParam.SpeedButton11Click(Sender: TObject);
var
  Code: String;
begin
  if HelpCountry(Code) then
  begin
    DBEdit39.SetFocus;
    with FDM_Param.qrECustomer do
    begin
      Edit;
      FieldByName('COUNTERY_CODE').AsString := Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEParam.DBEdit39Exit(Sender: TObject);
begin
  if FindCountryName(FDM_Param.qrECustomer.FieldByName('COUNTERY_CODE').AsString) = '' then
  begin
    MbError(InvalidCode);
    DBEdit39.SetFocus;
    Exit;
  end;

end;

procedure TFrmEParam.dbedStateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    SpeedButton3.Click;
end;

procedure TFrmEParam.DBEdit39KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    SpeedButton11.Click;
end;

procedure TFrmEParam.SpeedButton12Click(Sender: TObject);
var
  Code: string;
begin
  if HelpGoodsIdentity(Code) then
  begin
    DBEdit41.SetFocus;
    with FDM_Param.qrEGdsInfo do
    begin
      Edit;
      FieldByName('G_ID').AsString := Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmEParam.DBEdit41Exit(Sender: TObject);
begin
  if FDM_Param.qrEGdsInfo.FieldByName('G_ID').AsString = '' then Exit;
  if GetGIdUnit(FDM_Param.qrEGdsInfo.FieldByName('G_ID').AsString) = '' then
  begin
    MbError(InvalidCode);
    DBEdit41.SetFocus;
  end;
end;

procedure TFrmEParam.Button2Click(Sender: TObject);
begin
  with qrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE IDCUSTOMER_T');
    SQL.Add('SET TAF_YEAR = 1');
    SQL.Add('WHERE CUSTTYPE_CODE = :CUSTTYPE_CODE');
    ParamByName('CUSTTYPE_CODE').AsString := FDM_Param.qrECustType.FieldByName('CUSTTYPE_CODE').AsString;
    ExecSQL;
  end;
end;

procedure TFrmEParam.Button3Click(Sender: TObject);
begin
  with qrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE IDCUSTOMER_T');
    SQL.Add('SET TAF_YEAR = 0');
    SQL.Add('WHERE CUSTTYPE_CODE = :CUSTTYPE_CODE');
    ParamByName('CUSTTYPE_CODE').AsString := FDM_Param.qrECustType.FieldByName('CUSTTYPE_CODE').AsString;
    ExecSQL;
  end;
end;

procedure TFrmEParam.Button4Click(Sender: TObject);
begin
  with qrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE IDCUSTOMER_T');
    SQL.Add('SET TAF_YEAR = 2');
    SQL.Add('WHERE CUSTTYPE_CODE = :CUSTTYPE_CODE');
    ParamByName('CUSTTYPE_CODE').AsString := FDM_Param.qrECustType.FieldByName('CUSTTYPE_CODE').AsString;
    ExecSQL;
  end;
end;

end.




