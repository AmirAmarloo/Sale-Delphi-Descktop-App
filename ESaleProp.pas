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
    dbedReqID: TDBEdit;
    Label11: TLabel;
    btnNoControl: TBitBtn;
    btnControl: TBitBtn;
    Label10: TLabel;
    dbedBIDate: TDBEdit;
    dbedOFDte: TDBEdit;
    dbedOFDlvDte: TDBEdit;
    dbedReqDte: TDBEdit;
    Label16: TLabel;
    dbedStat: TDBEdit;
    Panel4: TPanel;
    dbgrOffer: TDBGrid;
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
    ppLabel22: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel28: TppLabel;
    ppLabel30: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel73: TppLabel;
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
    ppDBText5: TppDBText;
    ppLabel16: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    spDesign: TSpeedButton;
    ppDesigner: TppDesigner;
    Panel3: TPanel;
    Label6: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    sbCustNo: TSpeedButton;
    dbedEcCode: TDBEdit;
    dbedCustName: TDBEdit;
    dbedOFComm: TDBEdit;
    dbedCustNO: TDBEdit;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    Label9: TLabel;
    dbedCustAdr: TDBEdit;
    ppBDEPipeline1: TppBDEPipeline;
    Label12: TLabel;
    dbedORD_DELV_NO: TDBEdit;
    dbmOFDesc: TDBMemo;
    Label8: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    ppLabel5: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLine22: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppShape2: TppShape;
    ppImage1: TppImage;
    ppLabel14: TppLabel;
    ppLabel17: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine29: TppLine;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel12: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppPageStyle2: TppPageStyle;
    ppShape7: TppShape;
    ppLine31: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppShape8: TppShape;
    ppLabel64: TppLabel;
    ppLine49: TppLine;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel92: TppLabel;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLine55: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel116: TppLabel;
    ComboBox1: TComboBox;
    Label18: TLabel;
    ComboBox2: TComboBox;
    ppLabel60: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText15: TppDBText;
    ppDBText29: TppDBText;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppLabel47: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBText1: TppDBText;
    ppDBText23: TppDBText;
    ppDBText14: TppDBText;
    ppDBText2: TppDBText;
    ppDBText6: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppDBText7: TppDBText;
    ppLabel69: TppLabel;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLabel44: TppLabel;
    ppDBText30: TppDBText;
    ppLabel70: TppLabel;
    ppLine32: TppLine;
    ppLabel72: TppLabel;
    ppDBText31: TppDBText;
    ppLabel71: TppLabel;
    ppLabel75: TppLabel;
    ppLabel74: TppLabel;
    ppLabel76: TppLabel;
    ppLabel80: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel85: TppLabel;
    ppLabel91: TppLabel;
    ppLabel99: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel50: TppLabel;
    lbSecCust: TLabel;
    qrTemp: TQuery;
    ppLabel48: TppLabel;
    dbgrValidity: TDBGrid;
    Panel2: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    edGrossPrice: TEdit;
    Splitter2: TSplitter;
    dbedVCode: TDBEdit;
    DBEdit3: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label19: TLabel;
    ppReport3: TppReport;
    ppBDEPipelineTit: TppBDEPipeline;
    Query1: TQuery;
    DataSource1: TDataSource;
    dbedDriver: TDBEdit;
    DBEdit4: TDBEdit;
    SpeedButton2: TSpeedButton;
    Label20: TLabel;
    SpeedButton3: TSpeedButton;
    DBEdit2: TDBEdit;
    Label21: TLabel;
    ppBDEPipelineDet: TppBDEPipeline;
    ppHeaderBand3: TppHeaderBand;
    ppShape9: TppShape;
    ppLabel10: TppLabel;
    ppLabel15: TppLabel;
    ppLabel23: TppLabel;
    ppLabel29: TppLabel;
    ppLabel49: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel84: TppLabel;
    ppLabel103: TppLabel;
    ppImage3: TppImage;
    ppImage2: TppImage;
    ppLine30: TppLine;
    ppLine35: TppLine;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLabel140: TppLabel;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLine65: TppLine;
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
    qrCompany: TQuery;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppDBCalc4: TppDBCalc;
    ppVariable1: TppVariable;
    ppDBText54: TppDBText;
    Label22: TLabel;
    DBEdit6: TDBEdit;
    Label23: TLabel;
    DBEdit7: TDBEdit;
    Label24: TLabel;
    DBEdit8: TDBEdit;
    Label26: TLabel;
    DBEdit10: TDBEdit;
    ppDBText55: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDbCalcPrice: TppDBCalc;
    ppdbCalcQty: TppDBCalc;
    ppVariable2: TppVariable;
    pplbStringPrice: TppLabel;
    pplbDisDesc1: TppLabel;
    ppLine74: TppLine;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLabel157: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    pplbDisDesc2: TppLabel;
    pplbDisDesc3: TppLabel;
    pplbDisDesc4: TppLabel;
    Label27: TLabel;
    DBEdit11: TDBEdit;
    sbList: TSpeedButton;
    ppDBText56: TppDBText;
    edHavale: TEdit;
    ppDBText60: TppDBText;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine66: TppLine;
    ppLine72: TppLine;
    DBRadioGroup1: TDBRadioGroup;
    ppReport4: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppShape13: TppShape;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppLabel172: TppLabel;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel175: TppLabel;
    ppLabel176: TppLabel;
    ppImage4: TppImage;
    ppImage5: TppImage;
    ppLine73: TppLine;
    ppLine75: TppLine;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppLabel184: TppLabel;
    ppLabel185: TppLabel;
    ppLabel186: TppLabel;
    ppLabel187: TppLabel;
    ppLabel189: TppLabel;
    ppLabel190: TppLabel;
    ppLabel191: TppLabel;
    ppLabel192: TppLabel;
    ppLabel193: TppLabel;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLabel194: TppLabel;
    ppLabel195: TppLabel;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppLabel196: TppLabel;
    ppLabel197: TppLabel;
    ppLabel198: TppLabel;
    ppLabel199: TppLabel;
    ppLabel200: TppLabel;
    ppLabel201: TppLabel;
    ppLabel202: TppLabel;
    ppLabel203: TppLabel;
    ppLabel204: TppLabel;
    ppLabel205: TppLabel;
    ppLabel206: TppLabel;
    ppLabel207: TppLabel;
    ppLabel208: TppLabel;
    ppLabel209: TppLabel;
    ppLabel210: TppLabel;
    ppLabel211: TppLabel;
    ppLabel212: TppLabel;
    ppLabel213: TppLabel;
    ppLabel214: TppLabel;
    ppLabel215: TppLabel;
    ppLabel216: TppLabel;
    ppLabel217: TppLabel;
    ppLabel218: TppLabel;
    ppLabel219: TppLabel;
    ppLabel220: TppLabel;
    ppLabel221: TppLabel;
    ppLabel222: TppLabel;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppLabel223: TppLabel;
    ppDBText79: TppDBText;
    ppDetailBand4: TppDetailBand;
    ppLine89: TppLine;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppVariable3: TppVariable;
    ppLine90: TppLine;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLine97: TppLine;
    ppLine98: TppLine;
    ppLine99: TppLine;
    ppLine100: TppLine;
    ppFooterBand4: TppFooterBand;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppVariable4: TppVariable;
    ppLabel224: TppLabel;
    ppLabel225: TppLabel;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppLabel226: TppLabel;
    ppLabel227: TppLabel;
    ppLabel228: TppLabel;
    ppLine105: TppLine;
    ppLabel229: TppLabel;
    ppLabel230: TppLabel;
    ppLabel231: TppLabel;
    ppLabel232: TppLabel;
    ppLabel233: TppLabel;
    ppLabel234: TppLabel;
    ppLine109: TppLine;
    ppLine107: TppLine;
    Label25: TLabel;
    DBEdit9: TDBEdit;
    Label28: TLabel;
    edBranchName: TEdit;
    qrTempTable: TQuery;
    ppLabel171: TppLabel;
    ppLabel188: TppLabel;
    Label29: TLabel;
    edOfferDoc: TEdit;
    SpeedButton4: TSpeedButton;
    cbAmani: TCheckBox;
    chbRAmani: TSpeedButton;
    ppShape14: TppShape;
    DBEdit5: TDBEdit;
    chbAddedTax: TCheckBox;
    sbSale: TSpeedButton;
    sbLostSales: TSpeedButton;
    Label30: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label31: TLabel;
    ppLabel235: TppLabel;
    ppLabel236: TppLabel;
    ppLabel237: TppLabel;
    ppLabel238: TppLabel;
    Label32: TLabel;
    DBEdit13: TDBEdit;
    SpeedButton5: TSpeedButton;
    DBEdit12: TDBEdit;
    ppReport5: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppShape15: TppShape;
    ppLabel239: TppLabel;
    ppLabel240: TppLabel;
    ppLabel241: TppLabel;
    ppDBText91: TppDBText;
    ppLabel242: TppLabel;
    ppLabel243: TppLabel;
    ppLabel244: TppLabel;
    ppLabel245: TppLabel;
    ppLabel246: TppLabel;
    ppLabel247: TppLabel;
    ppLine101: TppLine;
    ppLabel248: TppLabel;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppLabel249: TppLabel;
    ppLabel250: TppLabel;
    ppDBText94: TppDBText;
    ppDBText95: TppDBText;
    ppLine102: TppLine;
    ppLabel251: TppLabel;
    ppLabel252: TppLabel;
    ppLabel253: TppLabel;
    ppLabel254: TppLabel;
    ppLabel255: TppLabel;
    ppLabel256: TppLabel;
    ppLine106: TppLine;
    ppLine108: TppLine;
    ppLine110: TppLine;
    ppLine111: TppLine;
    ppLine112: TppLine;
    ppDetailBand5: TppDetailBand;
    ppLine113: TppLine;
    ppLine114: TppLine;
    ppLine115: TppLine;
    ppLine116: TppLine;
    ppLine117: TppLine;
    ppLine118: TppLine;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppLine119: TppLine;
    ppVariable5: TppVariable;
    ppLine120: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape16: TppShape;
    ppShape19: TppShape;
    ppLabel257: TppLabel;
    ppLine121: TppLine;
    ppLabel258: TppLabel;
    ppLabel259: TppLabel;
    ppLabel260: TppLabel;
    ppLine122: TppLine;
    ppLine123: TppLine;
    ppLabel261: TppLabel;
    ppLabel262: TppLabel;
    ppLabel263: TppLabel;
    ppLabel264: TppLabel;
    ppLabel265: TppLabel;
    ppLine124: TppLine;
    ppLine125: TppLine;
    ppLine126: TppLine;
    ppLine127: TppLine;
    ppLabel266: TppLabel;
    ppLabel267: TppLabel;
    ppLabel268: TppLabel;
    ppLabel269: TppLabel;
    ppDBText100: TppDBText;
    ppLine128: TppLine;
    ppLine129: TppLine;
    ppLine130: TppLine;
    ppLine131: TppLine;
    ppLine132: TppLine;
    ppLine133: TppLine;
    ppLine134: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppLabel270: TppLabel;
    ppLabel271: TppLabel;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppLabel272: TppLabel;
    ppLabel273: TppLabel;
    ppLabel274: TppLabel;
    ppLabel275: TppLabel;
    ppReport6: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppShape17: TppShape;
    ppLabel276: TppLabel;
    ppLabel277: TppLabel;
    ppLabel278: TppLabel;
    ppDBText103: TppDBText;
    ppLabel279: TppLabel;
    ppLabel280: TppLabel;
    ppLabel281: TppLabel;
    ppLabel282: TppLabel;
    ppLabel283: TppLabel;
    ppLabel284: TppLabel;
    ppLine135: TppLine;
    ppLabel285: TppLabel;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppLabel286: TppLabel;
    ppLabel287: TppLabel;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppLine136: TppLine;
    ppLabel288: TppLabel;
    ppLabel289: TppLabel;
    ppLabel290: TppLabel;
    ppLabel291: TppLabel;
    ppLabel292: TppLabel;
    ppLabel293: TppLabel;
    ppLine137: TppLine;
    ppLine138: TppLine;
    ppLine139: TppLine;
    ppLine140: TppLine;
    ppLine141: TppLine;
    ppDetailBand6: TppDetailBand;
    ppLine142: TppLine;
    ppLine143: TppLine;
    ppLine144: TppLine;
    ppLine145: TppLine;
    ppLine146: TppLine;
    ppLine147: TppLine;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    ppLine148: TppLine;
    ppVariable6: TppVariable;
    ppLine149: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppShape18: TppShape;
    ppShape20: TppShape;
    ppLabel294: TppLabel;
    ppLine150: TppLine;
    ppLabel295: TppLabel;
    ppLabel296: TppLabel;
    ppLabel297: TppLabel;
    ppLine151: TppLine;
    ppLine152: TppLine;
    ppLabel298: TppLabel;
    ppLabel299: TppLabel;
    ppLabel300: TppLabel;
    ppLabel301: TppLabel;
    ppLabel302: TppLabel;
    ppLine153: TppLine;
    ppLine154: TppLine;
    ppLine155: TppLine;
    ppLine156: TppLine;
    ppLabel303: TppLabel;
    ppLabel304: TppLabel;
    ppDBText112: TppDBText;
    ppLine157: TppLine;
    ppLine158: TppLine;
    ppLine159: TppLine;
    ppLine160: TppLine;
    ppLine161: TppLine;
    ppLine162: TppLine;
    ppLine163: TppLine;
    ppDBCalc15: TppDBCalc;
    ppLabel305: TppLabel;
    ppDBCalc16: TppDBCalc;
    ppLabel306: TppLabel;
    ppLabel307: TppLabel;
    ppDBText113: TppDBText;
    ppDBText114: TppDBText;
    ppLabel308: TppLabel;
    ppLabel309: TppLabel;
    ppLabel310: TppLabel;
    ppLabel311: TppLabel;
    ppLabel312: TppLabel;
    ppLabel313: TppLabel;
    Label33: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    SpeedButton6: TSpeedButton;
    ppLabel314: TppLabel;
    ppDBText115: TppDBText;
    ppDBText116: TppDBText;
    ppLabel315: TppLabel;
    Edit3: TEdit;
    Label34: TLabel;
    Label35: TLabel;
    Edit4: TEdit;
    ppLabel167: TppLabel;
    ppLabel317: TppLabel;
    ppLabel316: TppLabel;
    ppLabel318: TppLabel;
    SpeedButton7: TSpeedButton;
    Label36: TLabel;
    DBEdit16: TDBEdit;
    Label37: TLabel;
    DBEdit17: TDBEdit;
    Label38: TLabel;
    DBEdit18: TDBEdit;
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
//    procedure btnControlClick(Sender: TObject);
//    procedure btnNoControlClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sbListClick(Sender: TObject);
    procedure dbedOFNumKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
//    procedure bbPreviewClick(Sender: TObject);
    procedure ppDBText3GetText(Sender: TObject; var Text: String);
    procedure ppFooterBand1BeforePrint(Sender: TObject);
    procedure ppDBCalc2Calc(Sender: TObject);
    procedure ppDBText17GetText(Sender: TObject; var Text: String);
    procedure ppDBCalc2GetText(Sender: TObject; var Text: String);
    procedure ppDBText10GetText(Sender: TObject; var Text: String);
    procedure spDesignClick(Sender: TObject);
    procedure sbCustNoClick(Sender: TObject);
    procedure dbedCustNOExit(Sender: TObject);
    procedure btnControlClick(Sender: TObject);
    procedure btnNoControlClick(Sender: TObject);
    procedure ppDBText26GetText(Sender: TObject; var Text: String);
    procedure dbedBIDateKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrOfferColExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dbedVCodeExit(Sender: TObject);
    procedure dbedDriverExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dbedOFCommExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure ppVariable1Print(Sender: TObject);
    procedure ppDBText58GetText(Sender: TObject; var Text: String);
    procedure ppDBText55GetText(Sender: TObject; var Text: String);
    procedure ppVariable2Print(Sender: TObject);
    procedure pplbDisDesc1GetText(Sender: TObject; var Text: String);
    procedure ppLabel164GetText(Sender: TObject; var Text: String);
    procedure ppLabel165GetText(Sender: TObject; var Text: String);
    procedure ppLabel166GetText(Sender: TObject; var Text: String);
    procedure dbedReqDteExit(Sender: TObject);
    procedure ppReport3PrintingComplete(Sender: TObject);
    procedure ppReport3BeforePrint(Sender: TObject);
    procedure ppDBText47GetText(Sender: TObject; var Text: String);
    procedure N1Click(Sender: TObject);
    procedure ppDBText42GetText(Sender: TObject; var Text: String);
    procedure ppLabel171GetText(Sender: TObject; var Text: String);
    procedure dbedOFNumKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton4Click(Sender: TObject);
    procedure dbgrOfferDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cbAmaniClick(Sender: TObject);
    procedure chbRAmaniClick(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure sbLostSalesClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ppLabel236GetText(Sender: TObject; var Text: String);
    procedure ppLabel238GetText(Sender: TObject; var Text: String);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure ppDBText93GetText(Sender: TObject; var Text: String);
    procedure ppLabel274GetText(Sender: TObject; var Text: String);
    procedure ppLabel275GetText(Sender: TObject; var Text: String);
    procedure ppLabel247GetText(Sender: TObject; var Text: String);
    procedure ppLabel260GetText(Sender: TObject; var Text: String);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure ppLabel315GetText(Sender: TObject; var Text: String);
    procedure SpeedButton7Click(Sender: TObject);
    procedure sbSaleClick(Sender: TObject);
  private
    FInPost : Boolean;
    FM : TMbHandle;
    qrTmp: TQuery;
    CustAdd, CustVisitor, GdsStat : String;
    CustStorAdd: string;
    CuCode: string;
    FOfNum: string;
    MyTemp: string;
    FDM_IntSales: TDM_IntSales;
    SeqControlOff: TCuDBGrid;
    FAddGrid: TCuDBGrid;
    AddDelFlag, DelFlag,
    CanInsert, CanCalc, IsOfferCust,
    IsLock, IsEmptyTit: Boolean;
    GdsFlag: Boolean;
    HasDist: Boolean;
    OldPrice, IsSpecCust: Double;
    DistRial, DistQty, DistRow: Integer;
    FCustTel : string;
    FCustAddr: string;
    SumFactor, TaxVal, GrossPrice, YearTaxVal : Double;
    PrintCount : Integer;
    CustKind, CustType: String;
    IsSpecCustKindCode, TaskControl: Boolean;

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
    procedure DetBeforeDelete(DataSet: TDataSet);
    procedure DetOnNewRecord(DataSet: TDataSet);
    procedure GdsCodeValidate(Sender: TField);
    procedure GdsCodeChange(Sender: TField);
    procedure DetAfterOpen(DataSet: TDataSet);
    procedure PriceValidate(Sender: TField);
    procedure QtyValidate(Sender: TField);
    procedure DelOffDet;
    procedure InsOffDet;
    procedure DelOffTit;
    procedure InsOffTit;

    //AddSub
    procedure CF_Validity(DataSet: TDataSet);
    procedure AddOnNewRecord(DataSet: TDataSet);
    procedure AddAfterOpen(DataSet: TDataSet);
    procedure AddCodeValidate(Sender: TField);
    procedure AddCodeGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure AddCodeSetText(Sender: TField; const Text: String);
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
    procedure UpdateSTAT;
    function  CheckGSD_CODE(GCode: String): Boolean;
    function  CheckQTY(GCode: String): Integer;
    function  CheckFactor(GCode: String): Boolean;
    function  CntrlForEzafat: Boolean;
    procedure GetTellAdd;

    procedure PACK_TYPEOnGetText(Sender: TField; var Text: String; DisplayText: Boolean); //ê—ÊÂ »‰œÌ
    procedure PACK_TYPEOnSetText(Sender: TField; const Text: String); //ê—ÊÂ »‰œÌ
    procedure AddQtyDiscount;
    procedure InsertAddSub;
    procedure InsertValidity;
    procedure InitCustType;
    procedure qrEIntOfferAfterScroll(DataSet: TDataSet);
    procedure qrEIntOfferDetBeforeScroll(DataSet: TDataSet);
    procedure qrEIntOfferDetAfterDelete(DataSet: TDataSet);
    procedure qrEIntOfferDetAfterScroll(DataSet: TDataSet);
    procedure InsertToPreFact(OfNum: String);
    procedure DeleteFromPreFact(OfNum: String);
    procedure TempTableForQtyDisqount;
    function ControlRealQTY: Boolean;
    procedure ControlEnable;
    function ValidPerFact(OfNum: String): Boolean;
    procedure SetOfDtlRowSeq(DoSeq: Boolean);
    procedure InsertPrintInfo;
    function SelectValidQty(GdsCode, StkCode, DocDate: String):Double;

  public
    DbHandle: TMbHandle;
    EndQty: Double;
  published
    property FDM;
  end;

var
  FrmESaleProp: TFrmESaleProp;
  FPageCount :Integer;
implementation

uses MainUnit, HCustom, HBidVch, HSalesProp, Utility, UMessage,
  Vars, Help, Functions, DMUDataBase, DGdsOffers, Math, Utitlty;

{$R *.DFM}

procedure TFrmESaleProp.FormKeyPress(Sender: TObject; var Key: Char);
begin
(*
  if Ord(Key) = VK_ESCAPE then
    Close;
*)    
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
{/$IFDEF MABNAPRG}
//  FormStyle:= fsNormal;
{/$ELSE}
//  FormStyle:= fsStayOnTop;
{/$ENDIF}
  FDM_IntSales:= TDM_IntSales(MbDM.GetDM(FDM));
  SetStatusBar(stbMain);
  qrTmp:= TQuery.Create(Self);
  qrTmp.DataBaseName:= MbDB.DataBaseName[FDB];
  FDM_IntSales.qrGdsInfo.Close;
  FDM_IntSales.qrGdsInfo.Open;

//- Master ----------------------------------------
  with FDM_IntSales.qrEIntOffer do
  begin
    OnCalcFields:= CF_MstOffer;
    AfterScroll   := qrEIntOfferAfterScroll;
    OnUpdateError:= FUpdateError;
    FieldByName('OFSTAT').OnGetText   := StatGetText;
//    FieldByName('OFDLVDTE').OnGetText := OFDLVDTEGetText;
//    FieldByName('OFDLVDTE').OnSetText := OFDLVDTESetText;
  end;

  with FDM_IntSales.dsEIntOffer do
  begin
    OnStateChange := nil;
    OnStateChange := FOnStateChanged;
  end;

//- Detail ----------------------------------------
  with FDM_IntSales.qrEIntOfferDet do
  begin
    OnCalcFields  := nil;
    OnCalcFields  := CF_DetOffer;
    BeforePost    := DetBeforePost;
    BeforeDelete  := DetBeforeDelete;
    AfterDelete   := qrEIntOfferDetAfterDelete;
    BeforeScroll  := qrEIntOfferDetBeforeScroll;
    AfterScroll   := qrEIntOfferDetAfterScroll;
    AfterOpen     := DetAfterOpen;
    OnNewRecord   := DetOnNewRecord;
    OnUpdateError := FUpdateError;
    FieldByName('GDS_CODE').OnValidate := GdsCodeValidate;
//    FieldByName('GDS_CODE').OnChange   := GdsCodeChange;
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
    FieldByName('ADCODE').OnGetText := AddCodeGetText;
    FieldByName('ADCODE').OnSetText := AddCodeSetText;
    FieldByName('ADVAL').OnValidate  := AddValValidate;
//    FieldByName('ADKIND').OnChange   := ADKindChange;
  end;

  with FDM_IntSales.dsEOffValidity do
  begin
    OnStateChange:= nil;
    OnStateChange:= FAddOnStateChanged;
  end;
///////////////////////////////////////////////////
//  InitSeqCtrl;
///////////////////////////////////////////////////
  InitAddSubGrid;
//  SetFormColor(Self,_FormColor);
end;

procedure TFrmESaleProp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  OfNumAmani := '';
  OfYearAmani := '';
  Action:= caFree;
end;

procedure TFrmESaleProp.InitSeqCtrl;
begin
  SeqControlOff:= TCuDBGrid.Create(Self, dbgrOffer, 'OFSEQ', True, True, False);
  SeqControlOff.AddSum(['TOTCOST']);
  SeqControlOff.SetSumControl['TOTCOST']:= edGrossPrice;
  SeqControlOff.SetRowDuplicate(['GDS_CODE', 'PACK_TYPE']);
//  SeqControlOff.SetRowDuplicate(['OFSEQ']);
end;

procedure TFrmESaleProp.dbedOFNumExit(Sender: TObject);
var
  OfNum, OfDate: String;
  TmpVal: Double;
begin
  YearTaxVal := GetAddedTax(System_YY);
  sbLostSales.Down := MBFM.GetFM(ParentFrm) is TfrmDGdsOffers;
  if StrToIntDef(FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString, -1) = -1 then
  begin
    MbError('‘„«—Â Ê«—œ ‘œÂ ’ÕÌÕ ‰„Ì »«‘œ');
    dbedOFNum.SetFocus;
    Exit;
  end;
  edGrossPrice.Text := '';
  edNetPrice.Text := '';
  IsLock:= False;
  OfNum := FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
  OfDate := FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString;

  with FDM_IntSales.qrEIntOffer do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM OFFERTIT_T');
    SQL.Add('WHERE TAFSILY_YEAR = :YEAR');
    SQL.Add('  AND OFNUM = :OFNUM');
    if OfNumAmani <> '' then
      ParamByName('OFNUM').AsString := OfNumAmani
    else
    begin
      ParamByName('OFNUM').AsString := OfNum;
      ParamByName('YEAR').AsInteger := System_YY;
    end;
    Open;
    if OfNumAmani <> '' then
    begin
      Edit;
      FieldByName('OFNUM').AsString := OfNum;
      FieldByName('SECTAFSILY_CODE').AsString := '';
//      FieldByName('OFDATE').AsString := OfDate;
      FieldByName('CUST_REQDATE').AsString := '';
      FieldByName('CUST_REQNO').AsString := OfNumAmani;
    end;
    if IsEmpty then
    begin
      IsEmptyTit := True;
      FDM_IntSales.qrEIntOffer.Edit;
      if MsFarsiDate1(GetDataBaseDate) > GetFactStat then
        FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString := GetFactStat
      else
        FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString := MsFarsiDate1(GetDataBaseDate);

{$IFNDEF AHMADTEA}

      if StrToInt(OfNum) <> SelectMaxNo('OFFERTIT_T', 'TO_NUMBER(OFNUM)') then
        FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsInteger := SelectMaxNo('OFFERTIT_T', 'TO_NUMBER(OFNUM)')
      else
{$ENDIF}

        FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString := OfNum;

      FDM_IntSales.qrEIntOffer.FieldByName('USERID').AsString := BranchCode;
    end
    else
    begin
      IsEmptyTit := False;
      if FDM_IntSales.qrEIntOffer.FieldByName('SECTAFSILY_CODE').AsString <> '' then
      begin
        MbError('»—«Ì «Ì‰ ÅÌ‘ ›«ò Ê— ÕÊ«·Â ›—Ê‘ ’«œ— ‘œÂ Ê «„ò«‰  €ÌÌ— ÊÃÊœ ‰œ«—œ');
        Panel3.Enabled := False;
        dbgrOffer.ReadOnly := True;
//        dbgrOffer.Enabled := False;
//        dbgrValidity.Enabled := False;
        dbgrValidity.ReadOnly := True;
        DBRadioGroup1.Enabled := False;


{$IFDEF TESTABIDI}
        cbAmani.Enabled := False;
        chbRAmani.Visible := (FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQDATE').AsString = '1');
{$ENDIF}
      end
      else
      begin
        Panel3.Enabled := True;
//        dbgrOffer.Enabled := True;
        dbgrOffer.ReadOnly := False;
//        dbgrValidity.Enabled := True;
        dbgrValidity.ReadOnly := False;
        DBRadioGroup1.Enabled := True;
{$IFDEF TESTABIDI}
        cbAmani.Enabled := True;
        chbRAmani.Visible := False;
{$ENDIF}
      end;
      if FDM_IntSales.qrEIntOffer.FieldByName('OFDLVPLACE').AsString = '1' then
      begin
        MbError('«Ì‰ ›«ò Ê— «»ÿ«· ‘œÂ');
        Panel3.Enabled := False;
        dbgrOffer.Enabled := False;
        dbgrValidity.Enabled := False;
      end;
    end;
  end;
{
  if AutoSelect(FDB, FDM_IntSales.qrEIntOffer, 'OFFERTIT_T', 2, IsLock) then
  begin
    IsEmptyTit := True;
    FDM_IntSales.qrEIntOffer.Edit;
    if MsFarsiDate1(GetDataBaseDate) > GetFactStat then
      FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString := GetFactStat
    else
      FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString := MsFarsiDate1(GetDataBaseDate);
    if StrToInt(OfNum) <> SelectMaxNo('OFFERTIT_T', 'TO_NUMBER(OFNUM)') then
      FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsInteger := SelectMaxNo('OFFERTIT_T', 'TO_NUMBER(OFNUM)');
  end
  else
  begin
    IsEmptyTit := False;
    if FDM_IntSales.qrEIntOffer.FieldByName('SECTAFSILY_CODE').AsString <> '' then
    begin
      MbError('»—«Ì «Ì‰ ÅÌ‘ ›«ò Ê— ÕÊ«·Â ›—Ê‘ ’«œ— ‘œÂ Ê «„ò«‰  €ÌÌ— ÊÃÊœ ‰œ«—œ');
      Panel3.Enabled := False;
      dbgrOffer.Enabled := False;
      dbgrValidity.Enabled := False;
    end;
  end;
}

  edBranchName.Text := GetBranchName(FDM_IntSales.qrEIntOffer.FieldByName('USERID').AsString);
  ShowOffDetail;
//////////////////////////////
    SetOfDtlRowSeq(False);
//////////////////////////////
  InitCustType;
  DelFlag := True;
{$IFDEF TESTABIDI}
  cbAmani.Checked := (StrToIntDef(FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQDATE').AsString, 0) <> 0);
  cbAmani.Visible := (FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQNO').AsString = '');
  chbRAmani.Visible := (FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQNO').AsString = '');
{$ENDIF}
  sbSale.Down := IsEmptyTit;

  TmpVal := FDM_IntSales.qrEOffValidity.FieldByName('ADVAL').AsFloat;
//  TmpVal := StrToFloatDef(FDM_IntSales.qrEOffValidity.FieldByName('ADVAL').AsString, 0);
  Edit1.Text := IntToStr(Round(TmpVal));
  Edit2.Text := FloatToStr(Round(((FDM_IntSales.qrEOffValidity.FieldByName('ADVAL').AsFloat * YearTaxVal) / 100)));
//  Edit2.Text := FloatToStr(FDM_IntSales.qrEOffValidity.FieldByName('ADVAL').AsFloat - ((FDM_IntSales.qrEOffValidity.FieldByName('ADVAL').AsFloat * YearTaxVal) / 100));
  if edNetPrice.Text <> '' then
    edNetPrice.Text := IntToStr(Round(StrToFloat(StringReplace(edNetPrice.Text, ',' , '' ,[rfReplaceAll]))) -
                                Round(StrToFloat(StringReplace(Edit2.Text, ',' , '' ,[rfReplaceAll])))+
                                Round(StrToFloat(StringReplace(IntToStr(FDM_IntSales.qrEIntOffer.FieldByName('OFDISTVAL1').AsInteger), ',' , '' ,[rfReplaceAll]))));

{ $IFDEF AHMADTEA}
{  with qrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT OFDISTVAL FROM OFFERTIT_T');
    SQL.Add('WHERE OFNUM = :OFNUM');
    SQL.Add('  AND TAFSILY_YEAR = :YEAR');
    ParamByName('OFNUM').AsString := OfNum;
    ParamByName('YEAR').AsInteger := System_YY;
    Open;
    Edit3.Text := FieldByName('OFDISTVAL').AsString;
    if edNetPrice.Text <> '' then
      edNetPrice.Text := IntToStr(Round(StrToFloat(StringReplace(edNetPrice.Text, ',' , '' ,[rfReplaceAll]))) -
                                  Round(StrToFloat(StringReplace(Edit2.Text, ',' , '' ,[rfReplaceAll]))) - StrToIntDef(Edit3.Text, 0));
  end;
}

{ $ENDIF}
end;

procedure TFrmESaleProp.ShowOffDetail;
begin
  with FDM_IntSales.qrEIntOfferDet, SQL do
  begin
    Clear;
    Add('SELECT   OFNUM, OFSEQ, CU_CODE, GDS_CODE, OFQTY, OFPRICE, ABATE, PACKVALUE,');
    Add('         PACK_TYPE, TO_NUMBER(GDS_INFO)GDS_INFO, OF_REALQTY, USER_PRICE, CASH_ABATE');
    Add('  FROM   OFFERDTL_T');
    Add(' WHERE   OFNUM = :OFNUM    ');
    Add('   AND   CU_CODE = :YEAR');
    Add('ORDER BY OFSEQ             ');
    if OfNumAmani <> '' then
      ParamByName('OFNUM'). AsString:= OfNumAmani
    else
    begin
      ParamByName('OFNUM'). AsString:= FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
      ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
    end;
    Open;
    OldPrice := FieldByName('OFPRICE').AsFloat;
  end;

  with FDM_IntSales.qrEOffValidity, SQL do
  begin
    Clear;
    Add('SELECT   *                 ');
    Add('  FROM   VALIDITY_T');
    Add(' WHERE   ADNUM2 = :ADNUM2  ');
    Add('   AND  ADNUM3 = :YEAR  ');
    Add('ORDER BY ADCODE            ');
    ParamByName('ADNUM2').AsString := FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
    ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;
  end;

{  if not IsCurrency then
    edGrossPrice.Text := Trim(Format('%.0n', [SeqControlOff.Sum['TOTCOST'] * 1.0]))
  else
    edGrossPrice.Text := Trim(Format('%20.2n', [SeqControlOff.Sum['TOTCOST'] * 1.0]));
 }
end;

procedure TFrmESaleProp.FormShow(Sender: TObject);
begin
  FInPost :=False;
  Label37.Visible := False;
  DBEdit17.Visible := False;
  Label38.Visible := False;
  DBEdit18.Visible := False;

{$IFDEF ABIDI}
  Label29.Visible := True;
  edOfferDoc.Visible := True;
  chbAddedTax.Visible := False;
  Label37.Visible := True;
  DBEdit17.Visible := True;
  Label38.Visible := True;
  DBEdit18.Visible := True;
{$ENDIF}

{$IFDEF PAKHSH}
  FindDBGridFieldName(dbgrOffer, 'CASH_ABATE').Visible := True;
  FindDBGridFieldName(dbgrOffer, 'CF_PERCASHABATE').Visible := True;
{$ENDIF}

{$IFDEF AHMADTEA}
  Edit3.Visible := True;
  Label34.Visible := True;
  dbgrValidity.Columns[4].Visible := True;
//  dbgrValidity.Re
{$ENDIF}

{$IFDEF AMANI}
  Caption := '«—”«· «„«‰Ì ò«·«';
  ppLabel51.Caption := '’Ê—  «—”«· „Õ’Ê· «„«‰Ì';
  ppLabel173.Caption := ppLabel51.Caption;
  chbAddedTax.Visible := True;
{$ENDIF}

  IsLock:= False;
  CanCalc:= True;
  CanInsert:= True;
  AddDelFlag:= True;
  SelectEmpty(FDM_IntSales.qrEIntOffer, 'OFFERTIT_T');
//  SelectEmpty(FDM_IntSales.qrEIntOfferDet, 'OFFERDTL_T');
  with FDM_IntSales.qrEIntOfferDet do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   OFNUM, OFSEQ, CU_CODE, GDS_CODE, OFQTY, OFPRICE, ABATE, PACKVALUE,');
    SQL.Add('         PACK_TYPE, TO_NUMBER(GDS_INFO)GDS_INFO, OF_REALQTY, USER_PRICE, CASH_ABATE');
    SQL.Add('FROM   OFFERDTL_T');
    SQL.Add('WHERE 1 = 2');
    Open;
  end;


  SelectEmpty(FDM_IntSales.qrEOffValidity, 'VALIDITY_T');
  FDM_IntSales.qrEIntOffer.Edit;
  FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsInteger := SelectMaxNo('OFFERTIT_T', 'TO_NUMBER(OFNUM)');
  dbedOFNum.SetFocus;

  if MBFM.GetFM(ParentFrm) is TfrmDGdsOffers then
  begin
    FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString := (MBFM.GetFM(ParentFrm) as TfrmDGdsOffers).FOfNum;
    dbgrOffer.SetFocus;
    dbgrOffer.DataSource.DataSet.Locate('GDS_CODE; OFSEQ', VarArrayOf([(MBFM.GetFM(ParentFrm) as TfrmDGdsOffers).DGdsCode, (MBFM.GetFM(ParentFrm) as TfrmDGdsOffers).DPackType]), [loPartialKey]);
    dbgrOffer.SelectedField := dbgrOffer.DataSource.DataSet.FieldByName('OFQTY');
  end;
  
  PrintCount := 0;
  ppHeaderBand3.Height := 100;
  Label28.Visible := (BranchCode = '10');
  edBranchName.Visible := (BranchCode = '10');
  Label25.Visible := (BranchCode = '10');
  DBEdit9.Visible := (BranchCode = '10');
{$IFNDEF AMANI}
//  Label2.Visible := True;
//  DBEdit5.Visible := True;
{$ENDIF}

end;

procedure TFrmESaleProp.FormDestroy(Sender: TObject);
begin
///////////////////////////////////////////////////
//  SeqControlOff.Free;
///////////////////////////////////////////////////
  qrTmp.Free;
end;

procedure TFrmESaleProp.dbedOFDteExit(Sender: TObject);
begin
  MbDateControl := 0;
  if FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString = '' then Exit;

  if not MsDateIsValid1(FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString, False) then
  begin
    MbMessage(InvalidDate, mtError, [mbOk], mbOk);
    dbedOFDte.SetFocus;
    dbedOFDte.Text := MbUserDate;
    dbedOFDte.SelStart := 0;
    Exit;
  end;
  MbDateControl := 1;
  if IsEmptyTit then
  begin
    FDM_IntSales.qrEIntOffer.Edit;
{$IFDEF ABIDI}
    if MsFarsiDate1(GetDataBaseDate) <> FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString then
      FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString := MsFarsiDate1(GetDataBaseDate);
//    if MsFarsiDate1(MiToShDate1(Copy(GetDataBaseDate,3,6))) <> FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString then
//      FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString := MsFarsiDate1(MiToShDate1(Copy(GetDataBaseDate,3,6)));
{$ENDIF}
  end;
end;

procedure TFrmESaleProp.dbedBIDateExit(Sender: TObject);
begin
(*
  MbDateControl := 0;
  if FDM_IntSales.qrEIntOffer.FieldByName('OFVALDTE').AsString = '' then Exit;

  if not MsDateIsValid1(FDM_IntSales.qrEIntOffer.FieldByName('OFVALDTE').AsString, False) then
  begin
    MbMessage(InvalidDate, mtError, [mbOk], mbOk);
    dbedBIDate.SetFocus;
    FDM_IntSales.qrEIntOffer.FieldByName('OFVALDTE').AsString:= '';
    dbedBIDate.SelStart := 0;
    Exit;
  end;
  MbDateControl := 1;
*)  
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
  if dbgrOffer.ReadOnly then Exit;

  if dbgrOffer.SelectedField.FieldName = 'GDS_CODE' then
  begin
    if HelpGds(Code) then
    begin
      with FDM_IntSales.qrEIntOfferDet do
      begin
        Edit;
        FieldByName('GDS_CODE').AsString:= Code;
      end;

      dbgrOffer.SelectedIndex:= 4;
      Exit;
    end;
  end;
end;

procedure TFrmESaleProp.dbgrOfferColEnter(Sender: TObject);
begin
  if GdsStat = '1' then
  begin
    dbgrOffer.SelectedField := FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE');
    Exit;
  end;
{  if dbgrOffer.SelectedIndex in [0, 3] then
    dbgrOffer.SelectedIndex:= 1;

  if dbgrOffer.SelectedIndex in [2, 3] then
    dbgrOffer.SelectedIndex:= 4;

  if dbgrOffer.SelectedIndex in [8] then
    dbgrOffer.SelectedIndex:= 7;}

{$IFNDEF AHMADTEA}
  if dbgrOffer.SelectedIndex in [7] then
    dbgrOffer.SelectedIndex:= dbgrOffer.SelectedIndex + 1;
{$ENDIF}
{  if (FDM_IntSales.qrEIntOfferDet.FieldByName('PACK_TYPE').AsInteger = 9) and
     (dbgrOffer.SelectedIndex = 5)then
    dbgrOffer.SelectedIndex:= dbgrOffer.SelectedIndex + 1;}
end;

procedure TFrmESaleProp.CF_DetOffer(DataSet: TDataSet);
var
  Temp, TempVal, AbatAmount, CashAbatAmount : Double;
//  AbateVal : Double;
//  CostPack : Double;
//  RaasDay: Integer;
begin
   if FInPost then Exit;

///////////////////////////////////////////////////
//  if SeqControlOff.CanCalculate then
//  begin
    with qrTmp, SQL do
    begin
      Clear;
      Add('SELECT GDS_DESCF, GDS_DESCL, UNT_DESC, GDS_TAX, GDS_USERPRICE /*, CLEARING_DATE*/');
      Add('  FROM GOODS');
      Add(' WHERE GDS_CODE = :GDS_CODE             ');
      ParamByName('GDS_CODE').AsString:= DataSet.FieldByName('GDS_CODE').AsString;
      SQL:= MbSqlConvert(SQL);
      Open;
      if DataSet.FieldByName('PACK_TYPE').AsInteger = 9 then
        DataSet.FieldByName('GDS_DESCF').AsString := FieldByName('GDS_DESCF').AsString + ' (ÂœÌÂ  Œ›Ì›)'
      else
        DataSet.FieldByName('GDS_DESCF').AsString := FieldByName('GDS_DESCF').AsString;
      DataSet.FieldByName('GDS_DESCL').AsString := FieldByName('GDS_DESCL').AsString;
      DataSet.FieldByName('UNT_DESC').AsString  := FieldByName('UNT_DESC').AsString;
      DataSet.FieldByName('CF_USERPRICE').AsString  := GetUserPrice(DataSet.FieldByName('OFNUM').AsString,
                                                                    DataSet.FieldByName('CU_CODE').AsString,
                                                                    DataSet.FieldByName('GDS_CODE').AsString,
                                                                    DataSet.FieldByName('PACK_TYPE').AsString);
//      DataSet.FieldByName('CF_USERPRICE').AsString  := FieldByName('GDS_USERPRICE').AsString;
//      RaasDay := DataSet.FieldByName('CLEARING_DATE').AsInteger;
    end;
//  end;


  with DataSet do
  begin
    if (not (FieldByName('OFQTY').AsString = '')) and (not (FieldByName('OFPRICE').AsString = '')) AND
       (not (FieldByName('OFQTY').AsString = '0')) and (not (FieldByName('OFPRICE').AsString = '0'))
    then
    begin
      if not IsCurrency then
      begin
        Temp:= Round(FieldByName('OFQTY').AsFloat * FieldByName('OFPRICE').AsFloat);
        AbatAmount := (Temp * FieldByName('ABATE').AsFloat)/100;
        CashAbatAmount := (Temp * FieldByName('CASH_ABATE').AsFloat)/100;
{        if IsSpecCustKindCode then
          Temp:= Round(FieldByName('OFQTY').AsFloat * FieldByName('PACKVALUE').AsFloat)
        else}
        TempVal := Temp;
        Temp := ((TempVal) - (Round((FieldByName('ABATE').AsFloat * TempVal)/100))) - CashAbatAmount;
        TempVal := Temp;
{$IFNDEF PAKHSH}
      if FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsInteger = 27 then
      begin
        Temp := Temp ;
      end;
      if FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsInteger <> 27 then
      begin
        Temp := Temp + ((Temp * GetGoodsTax(FieldByName('GDS_CODE').AsString, FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsInteger, FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsInteger))/100);
      end;
{$ENDIF}
{$IFDEF PAKHSH}
      Temp := Temp + ((Temp * GetGoodsTax(FieldByName('GDS_CODE').AsString, FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsInteger, FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsInteger))/100);
{$ENDIF}

//////////////////940126
//        if SeqControlOff.CanCalculate then
//        begin
      {$IFDEF AMANI}
          if chbAddedTax.Checked then
          begin
            if System_YY = 93 then
              DataSet.FieldByName('CF_TAX').AsString  := FloatToStr((TempVal * 8)/100);
            if System_YY = 94 then
              DataSet.FieldByName('CF_TAX').AsString  := FloatToStr((TempVal * 9)/100);
          end
          else
            DataSet.FieldByName('CF_TAX').AsString  := '0';
      {$ELSE}
          DataSet.FieldByName('CF_TAX').AsString  := FloatToStr((TempVal * GetADTotal(FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString,
                                                                                      FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString,
                                                                                      DataSet.FieldByName('GDS_CODE').AsString))/100);
      {$ENDIF}
      {$IFNDEF PAKHSH}
        if FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsInteger = 27 then
        begin
          DataSet.FieldByName('CF_TAX').AsString  := '0';
        end;
      {$ENDIF}

          DataSet.FieldByName('CF_PERABAT').AsString  := FloatToStr(AbatAmount);
          DataSet.FieldByName('CF_PERCASHABATE').AsString  := FloatToStr(CashAbatAmount);
//        end;
//        DataSet.FieldByName('CF_INVQTY').AsInteger := GetRealQty(DataSet.FieldByName('GDS_CODE').AsString, FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString,
//                                                                 FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString, FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsString);

//////////////////
        {$IFDEF AMANI}
          FieldByName('TOTCOST').AsFloat:= Temp+Round(FieldByName('CF_TAX').AsFloat);
        {$ELSE}
          FieldByName('TOTCOST').AsFloat := Temp; //1400/09/29
//          FieldByName('TOTCOST').AsFloat := Temp - DataSet.FieldByName('CF_PERCASHABATE').AsFloat; //1400/09/29
        {$ENDIF}
      end
      else begin
        Temp := FieldByName('OFQTY').AsFloat * FieldByName('OFPRICE').AsFloat ;
        AbatAmount := (Temp * FieldByName('ABATE').AsFloat)/100;
        CashAbatAmount := (Temp * FieldByName('CASH_ABATE').AsFloat)/100;
        TempVal := Temp;
        Temp := ((TempVal) - ((FieldByName('ABATE').AsFloat * TempVal)/100)) - CashAbatAmount;
        TempVal := Temp;
        Temp := Temp + ((Temp * GetGoodsTax(FieldByName('GDS_CODE').AsString, FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsInteger, FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsInteger))/100);
//////////////////940126
//        if SeqControlOff.CanCalculate then
//        begin
      {$IFDEF AMANI}
          if chbAddedTax.Checked then
          begin
            if System_YY = 93 then
              DataSet.FieldByName('CF_TAX').AsString  := FloatToStr((TempVal * 8)/100);
            if System_YY = 94 then
              DataSet.FieldByName('CF_TAX').AsString  := FloatToStr((TempVal * 9)/100);
          end
          else
            DataSet.FieldByName('CF_TAX').AsString  := '0';
      {$ELSE}
          DataSet.FieldByName('CF_TAX').AsString  := FloatToStr((TempVal * GetADTotal(FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString, FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString, DataSet.FieldByName('GDS_CODE').AsString))/100);
      {$ENDIF}

{$IFNDEF PAKHSH}
      if FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsInteger = 27 then
      begin
        DataSet.FieldByName('CF_TAX').AsString  := '0';
      end;
{$ENDIF}
          DataSet.FieldByName('CF_PERABAT').AsString  := FloatToStr(AbatAmount);
          DataSet.FieldByName('CF_PERCASHABATE').AsString  := FloatToStr(CashAbatAmount);
//        end;
//        DataSet.FieldByName('CF_INVQTY').AsInteger := GetRealQty(DataSet.FieldByName('GDS_CODE').AsString, FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString,
//                                                                 FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString, FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsString);
//////////////////
        {$IFDEF AMANI}
          FieldByName('TOTCOST').AsString:= FloatToStr(Temp+Round(FieldByName('CF_TAX').AsFloat));
        {$ELSE}
          FieldByName('TOTCOST').AsString:= FloatToStr(Temp - DataSet.FieldByName('CF_PERCASHABATE').AsFloat); //1400/09/29
        {$ENDIF}
//        FieldByName('CF_RAAS').AsString:= RaasDay * StrToIntDef(FieldByName('TOTCOST').AsString, 0);
      end;

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
var
  Rate {CostPack}: Double;
//  PackType,GdsInfoM :Integer;
begin
  FDM_IntSales.qrEIntOfferDet.FieldByName('USER_PRICE').AsString := FindGdsUserPrice(Sender.AsString);
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
(*
//  Rate := GetSaleRate(Sender.AsString);
  Rate := StringToFloat(GetGoodsPrice(Sender.AsString));
  if Rate <> -1 then
  begin
//    Sender.DataSet.Edit;
    Sender.DataSet.FieldByName('OFPRICE').AsFloat:= Rate;
  end;

  CostPack := GetCostPack(Sender.AsString);
  if CostPack <> -1 then
  begin
//    Sender.DataSet.Edit;
    Sender.DataSet.FieldByName('PACKVALUE').AsFloat:=
    Sender.DataSet.FieldByName('OFQTY').AsFloat * CostPack ;
  end;

{  PackType := GetPackType(Sender.AsString);
  if PackType <> 0 then
  begin
    Sender.DataSet.Edit;
    Sender.DataSet.FieldByName('PACK_TYPE').AsInteger:= PackType;
  end;}

  GdsInfoM := GetGdsInfoM(Sender.AsString);
  if PackType <> 0 then
  begin
//    Sender.DataSet.Edit;
    Sender.DataSet.FieldByName('GDS_INFO').AsInteger:= GdsInfoM;
  end;
*)
end;

procedure TFrmESaleProp.PriceValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
  begin
    if (Sender.AsFloat > 9999999999999.99) or (Sender.AsFloat < 0) then
    begin
      MbError(RangeErr);
      Abort;
    end;
    if CheckFactor(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString) then
    begin
      MbError(SendFactor);
      Abort;
    end;
  end;
end;

procedure TFrmESaleProp.QtyValidate(Sender: TField);
begin
  if not (Sender.AsString = '') then
  begin
    if (Sender.AsFloat > 9999999999.999) or (Sender.AsFloat < 0) then
    begin
      MbError(RangeErr);
      Abort;
    end;
  end;
{$IFDEF AMANI}
  if FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQNO').AsString <> '' then
    if Sender.AsInteger > GetOfQtyAmani(FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQNO').AsString, IntToStr(System_YY), FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString) then
    begin
      MbError(OutOfRange);
      Abort;
    end;
{$ENDIF}
end;

procedure TFrmESaleProp.dbgrValidityEditButtonClick(Sender: TObject);
var
  Code: string;
begin
  if TQuery(dbgrValidity.DataSource.DataSet).CachedUpdates = False then Exit;
  if dbgrOffer.ReadOnly then Exit;

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
          FieldByName('ADVAL').AsFloat := Round(D);
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
//    if FAddGrid.CanCalculate then
//    begin
      FieldByName('ADDDESC').AsString:= FindAddFName(FieldByName('ADCODE').AsString);
      FieldByName('ADDTYPE').AsString:= FindAddType(FieldByName('ADCODE').AsString);

//      if CanCalc then
        FieldByName('ADKIND').AsString:= FindAddKind(FieldByName('ADCODE').AsString);
//    end;
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

    if (FieldByName('ADVAL').AsString = '') then
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
      if (FieldByName('ADKIND').AsString = _stPercent) then
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
  if dbgrOffer.ReadOnly then Exit;
{$IFNDEF Debug}
  if Copy(FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString, 1, 4) <> IntToStr(System_YY) then
  begin
    MbError('”«· Ê—Êœ »Â ”Ì” „ »« ”«· Ã«—Ì „ÿ«»ﬁ  ‰œ«—œ');
    Exit;
  end;
{$ENDIF}


 // try
//    FInPost := True;
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
{    if DupplicateCheck(FDM_IntSales.qrEIntOfferDet, 'GDS_CODE') then
    begin
      MbError(RepeatedError);
      Exit;
    end;
}
    if not OffCheckBeforeSave then
      Abort;
    try

{ $IFNDEF Debug}
    FDM_IntSales.qrEIntOfferDet.DisableControls;
    if not ControlRealQTY then
    begin
//      dbgrOffer.Canvas.Brush.Color := $00BAD7FE;
      MbError(' ⁄œ«œ Ê«—œ ‘œÂ »Ì‘ — «“ „ÊÃÊœÌ «‰»«— „Ì »«‘œ');
      Exit;
    end;
{ $ENDIF}


    if not MbDB.InTransaction[FDB] then
      MbDB.StartTransaction(FDB);

    try
      GrossPrice := 0;
      with qrTemp do
      begin
        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM OFFERDTL_T');
        SQL.Add('WHERE OFNUM = :OFNUM');
        SQL.Add('  AND CU_CODE = :YEAR');
        SQL.Add('  AND PACK_TYPE = 9');
        ParamByName('OFNUM').AsString := FDM_IntSales.qrEIntOfferDet.FieldByName('OFNUM').AsString;
        ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
        ExecSQL;
      end;
      with FDM_IntSales.qrEIntOfferDet do
      begin
        FDM_IntSales.qrEIntOfferDet.First;
        while not Eof do
        begin
//          if not IsInExceptedGoods(FieldByName('GDS_CODE').AsString, '(0, 1)') then
//            GrossPrice := GrossPrice + FieldByName('TOTCOST').AsFloat;
          if FieldByName('PACK_TYPE').AsInteger = 9 then
            Delete
          else
            Next;
        end;
        FDM_IntSales.qrEIntOfferDet.First;
  //      DM_IntSales.qrEIntOfferDet.OnCalcFields := nil;
//        try
          while not Eof do
          begin
            if not IsInExceptedGoods(FieldByName('GDS_CODE').AsString, '(0, 1)') then
              GrossPrice := GrossPrice + FieldByName('TOTCOST').AsFloat;
            Next;
          end;

//        finally
  //        DM_IntSales.qrEIntOfferDet.OnCalcFields := CF_DetOffer;
//        end;
      end;

      if (IsSpecCust = 0) then
      begin
        if DistQty = 1 then
          AddQtyDiscount
//        TempTableForQtyDisqount
      end
      else
        if (IsSpecCust > 0) and (DistQty = 1) then AddQtyDiscount;
      InsertAddSub;
      Temp:= FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
//      if chbLostSales.Checked then
//        InsertToPreFact(Temp);
      FInPost := True;
      PostRecord(Temp);
      edGrossPrice.Text := '';
      edNetPrice.Text := '';
    except
      on E: Exception do
      begin
        if (Pos('20501', E.Message) > 0) or (Pos('20503', E.Message) > 0) then
        begin
          PostRecord(Temp);
        end
        else
        begin
          MbError(E.Message);
//          MbError(ExpHandleM(E));
          MbDB.RollBack(FDB);
        end;
      end;
    end;
  finally
      FInPost := False;
      FDM_IntSales.qrEIntOfferDet.EnableControls;
  end;
//  FInPost := False;
  if MBFM.GetFM(ParentFrm) is TfrmDGdsOffers then
    Close;
  if OfNumAmani <> '' then Close;
  sbSale.Down := True;
end;

procedure TFrmESaleProp.PostRecord(var ATemp: string);
var
  TmpStr: string;
//  DoMessage: Boolean;
  DisVal, FackPrice: Double;
  DisFromDate: String;
begin
//  DoMessage:= FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString = '';
  try
{    with FDM_IntSales.qrEIntOffer do
    begin
      Edit;
      FieldByName('OFNUM').AsString:= ATemp;
      FieldByName('OFSTAT').AsInteger:= 1;
      FieldByName('TAFSILY_YEAR').AsString := Copy(FieldByName('OFDATE').AsString, 1, 4);
      FieldByName('USERID').AsString := BranchCode;
      ApplyUpdates;
    end;}

    DelOffDet;
    DelOffTit;

    InsOffTit;
//////////////////////////////
    SetOfDtlRowSeq(True);
//////////////////////////////
    InsOffDet;
    //AddSub
    with FDM_IntSales.qrEOffValidity do
    begin
      CalculateNetCost(_OnSave);
      if (FDM_IntSales.qrEOffValidity.State in dsEditModes) or
         (FDM_IntSales.qrEOffValidity.UpdatesPending) then
//        ApplyUpdates;
       InsertValidity;
    end;

    //----------------
    UpdateSTAT;
    if TaskControl then
      MbDB.Commit(FDB)
    else
      MbDB.RollBack(FDB);
    with qrTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO DISTFACT_T');
      SQL.Add('(OFYEAR, OFDISTNUM, OFDISTPERSENT, OFDISTRIAL, OFDISTQTY, OFDISTROW)');
      SQL.Add('SELECT TAFSILY_YEAR, OFNUM, PERCENT_REDUCTION, CUST_DISTRIAL, CUST_DISTQTY, CUST_DISTROW');
      SQL.Add('FROM IDCUSTOMER_T I, OFFERTIT_T O');
      SQL.Add('WHERE O.CUSTNO = I.CUSTNO');
      SQL.Add('  AND OFNUM = :OFNUM');
      SQL.Add('  AND TAFSILY_YEAR = :YEAR');
      SQL.Add('  AND NOT EXISTS (SELECT OFDISTNUM FROM DISTFACT_T');
      SQL.Add('                  WHERE OFDISTNUM = O.OFNUM');
      SQL.Add('                    AND OFYEAR = O.TAFSILY_YEAR)');
      ParamByName('OFNUM').AsString := FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
      ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
      ExecSQL;
    end;

//--------- Comment No Test

//    if not HasDisVal(FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString) then
//  begin
     with qrTemp do
      begin
        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM DISVALBYOF_T');
        SQL.Add('WHERE OFYEAR = :YEAR');
        SQL.Add('  AND OFNUM = :OFNUM2');
        ParamByName('OFNUM2').AsString := FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
        ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
        ExecSQL;
      end;
      with qrTemp do
      begin
        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM VALIDITY_T');
        SQL.Add('WHERE ADCODE = :ADCODE');
        SQL.Add('  AND ADNUM2 = :ADNUM2');
        SQL.Add('  AND ADNUM3 = :YEAR       ');
        ParamByName('ADCODE').AsString := '-1';
        ParamByName('ADNUM2').AsString := FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
        ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
        ExecSQL;
        FDM_IntSales.qrEOffValidity.Close;
        FDM_IntSales.qrEOffValidity.Open;
      end;

      DisVal := GetDisValAmount(DisFromDate, FDM_IntSales.qrEIntOffer.FieldByName('CUSTNO').AsString,
                                FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString,
                                FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString);
      FackPrice := GetPriceOfFact(FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString);
      if DisVal > 0 then
      begin
//        if Round(StrToFloat(StringReplace(edNetPrice.Text, ',' , '' ,[rfReplaceAll]))) >= DisVal then
        if FackPrice >= DisVal then
          with FDM_IntSales.qrEOffValidity do
          begin
            Append;
            FieldByName('ADCODE').AsInteger := -1;
            Edit;
            FieldByName('ADVAL').AsInteger := Round(DisVal);
            InsertValidity;
{
            InsertDisValByOf(FDM_IntSales.qrEIntOffer.FieldByName('CUSTNO').AsString,
                             DisFromDate,
                             FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString,
                             FDM_IntSales.qrEIntOffer.FieldByName('USERID').AsString,
                             FloatToStr(DisVal),FloatToStr(Round((DisVal*YearTaxVal)/100))
                            );
}
          end
        else
          if FackPrice > 0 then
            with FDM_IntSales.qrEOffValidity do
            begin
              Append;
              FieldByName('ADCODE').AsInteger := -1;
              Edit;
              FieldByName('ADVAL').AsFloat := FackPrice - GetAbateOfFact(FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString);
//              FieldByName('ADVAL').AsFloat := Round(StrToFloat(StringReplace(edNetPrice.Text, ',' , '' ,[rfReplaceAll])));
              InsertValidity;
{
              InsertDisValByOf(FDM_IntSales.qrEIntOffer.FieldByName('CUSTNO').AsString,
                               DisFromDate,
                               FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString,
                               FDM_IntSales.qrEIntOffer.FieldByName('USERID').AsString,
                               FloatToStr(Round(StrToFloat(StringReplace(edNetPrice.Text, ',' , '' ,[rfReplaceAll])))),
                               FloatToStr(Round((Round(StrToFloat(StringReplace(edNetPrice.Text, ',' , '' ,[rfReplaceAll])))*YearTaxVal)/100))
                               );
}
            end;
      end;
    //----------------

//--------- Comment No Test
    SelectEmpty(FDM_IntSales.qrEIntOffer, 'OFFERTIT_T');
    SelectEmpty(FDM_IntSales.qrEIntOfferDet, 'OFFERDTL_T');
    SelectEmpty(FDM_IntSales.qrEOffValidity, 'VALIDITY_T');
    dbedOFNum.SetFocus;
    btnPost.Enabled:= False;
    FDM_IntSales.qrEIntOffer.Edit;
    FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsInteger := SelectMaxNo('OFFERTIT_T', 'TO_NUMBER(OFNUM)');
  except
    raise;
  end;
end;

procedure TFrmESaleProp.DelOffDet;
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('DELETE FROM OFFERDTL_T');
    Add('WHERE OFNUM = :OFNUM');
    Add('  AND  CU_CODE = :YEAR');
    ParamByName('OFNUM').AsString :=
        FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
    ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
    SQL := MbSqlConvert(SQL);
    ExecSql;
  end;
end;

procedure TFrmESaleProp.InsOffDet;
begin
//  FDM_IntSales.qrEIntOfferDet.DisableControls;
  try
    FDM_IntSales.qrEIntOfferDet.First;

    while not FDM_IntSales.qrEIntOfferDet.Eof do
    begin
      TaskControl := (FDM_IntSales.qrEIntOfferDet.FieldByName('OFPRICE').AsString <> '') and
                     (FDM_IntSales.qrEIntOfferDet.FieldByName('OFPRICE').AsString <> '0');
      if not TaskControl then
      begin
        MbError('„»·€ Ê«—œ ‘œÂ „Ã«“ ‰Ì” ');
        Exit;
      end;
      with FDM_IntSales.qrETemp, SQL do
      begin
        Clear;
        Add('INSERT INTO OFFERDTL_T');
        Add('  (CU_CODE, OFNUM, OFSEQ, GDS_CODE, OFQTY, OFPRICE, ABATE, PACKVALUE, PACK_TYPE, GDS_INFO, OF_REALQTY, USER_PRICE, CASH_ABATE)');
        Add('VALUES');
        Add('  (:YEAR, :OFNUM, :OFSEQ, :GDS_CODE, :OFQTY, :OFPRICE,:ABATE, :PACKVALUE, :PACK_TYPE, :GDS_INFO, :OF_REALQTY, :USER_PRICE, :CASH_ABATE)');
        ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
        ParamByName('OFNUM').AsString    := FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
        ParamByName('OFSEQ').AsString   := FDM_IntSales.qrEIntOfferDet.FieldByName('OFSEQ').AsString;
        ParamByName('GDS_CODE').AsString := FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString;
        ParamByName('OFQTY').AsString   := FDM_IntSales.qrEIntOfferDet.FieldByName('OFQTY').AsString;
        ParamByName('OFPRICE').AsString := FDM_IntSales.qrEIntOfferDet.FieldByName('OFPRICE').AsString;
        ParamByName('ABATE').AsString   := FDM_IntSales.qrEIntOfferDet.FieldByName('ABATE').AsString;
        ParamByName('PACKVALUE').AsString := FDM_IntSales.qrEIntOfferDet.FieldByName('PACKVALUE').AsString;
        if FDM_IntSales.qrEIntOfferDet.FieldByName('PACK_TYPE').AsString = '' then
          ParamByName('PACK_TYPE').AsString   := '0'
        else
          ParamByName('PACK_TYPE').AsString   := FDM_IntSales.qrEIntOfferDet.FieldByName('PACK_TYPE').AsString;
        ParamByName('OF_REALQTY').AsString   := FDM_IntSales.qrEIntOfferDet.FieldByName('OF_REALQTY').AsString;
        ParamByName('USER_PRICE').AsString   := FDM_IntSales.qrEIntOfferDet.FieldByName('USER_PRICE').AsString;
        ParamByName('CASH_ABATE').AsString   := FDM_IntSales.qrEIntOfferDet.FieldByName('CASH_ABATE').AsString;
        ParamByName('GDS_INFO').AsString := BranchCode;
        SQL := MbSqlConvert(SQL);
        ExecSql;
      end;
      FDM_IntSales.qrEIntOfferDet.Next;
    end;
  finally
//    FDM_IntSales.qrEIntOfferDet.EnableControls;
  end;
end;

procedure TFrmESaleProp.CheckButton;
begin
  if (FDM_IntSales.qrEIntOffer.FieldByName('OFSTAT').AsInteger = _intNotConfirmed) or
     (FDM_IntSales.qrEIntOffer.FieldByName('OFSTAT').AsString = '') then
  begin
//    btnControl.Visible:= True;
    btnNoControl.Visible:= False;
  end
  else
  begin
    btnControl.Visible:= False;
//    btnNoControl.Visible:= True;
  end;
end;

function TFrmESaleProp.CanModify: Boolean;
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT OFSTAT            ');
    Add('  FROM OFFERTIT_T');
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
  dbmOFDesc.Enabled:= False;
  DBEdit1.Enabled := False;
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
  dbmOFDesc.Enabled:= True;
  DBEdit1.Enabled := True;;

  TQuery(dbgrOffer.DataSource.DataSet).CachedUpdates:= True;

  TQuery(dbgrValidity.DataSource.DataSet).CachedUpdates:= True;

  btnPost.Enabled:= True;
  btnDelete.Enabled:= True;
end;

procedure TFrmESaleProp.btnDeleteClick(Sender: TObject);
var
  FQuery: TQuery;
  Code: string;
begin
  if FDM_IntSales.qrEIntOffer.FieldByName('SECTAFSILY_CODE').AsString <> '' then
  begin
    MbError('»—«Ì «Ì‰ ÅÌ‘ ›«ò Ê— ÕÊ«·Â ›—Ê‘ ’«œ— ‘œÂ Ê «„ò«‰  €ÌÌ— ÊÃÊœ ‰œ«—œ');
    Exit;
  end;

{  if not CanModify then
  begin
    MbError(CannotModify);
    Abort;
  end;
}
{  if FDM_IntSales.qrEIntOffer.FieldByName('ORD_DELV_NO').AsString <> '' then
  begin
    MbError('»Â œ·Ì· À»  ”›«—‘  ÕÊÌ· «„ò«‰ Õ–› ÊÃÊœ ‰œ«—œ.');
    exit;
  end;}
  if IsLock then
  begin
    MbError(LockRecord);
    Exit;
  end;

  if MbMessage(DeleteConfirm, mtWarning, [mbYes,mbNo], mbNo) = mrYes then
  begin
    if not MbDB.InTransaction[FDB] then
      MbDB.StartTransaction(FDB);
//    if chbLostSales.Checked then
//      InsertToPreFact(Temp);
    Code:= FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
    FQuery:= TQuery.Create(Self);
    DeleteDisValByOf(FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString);
    try
      FQuery.DataBaseName:= MbDB.DataBaseName[FDB];
      try
        with FQuery, SQL do
        begin
          Clear;
          Add('DELETE  FROM VALIDITY_T');
          Add('  WHERE ADNUM2 = :ADNUM2       ');
          Add('    AND ADNUM3 = :YEAR       ');
          ParamByName('ADNUM2').AsString:= Code;
          ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
          SQL:= MbSqlConvert(SQL);
          ExecSql;

          Clear;
          Add('DELETE  FROM OFFERDTL_T');
          Add('  WHERE OFNUM = :OFNUM');
          Add('    AND CU_CODE = :YEAR');
          ParamByName('OFNUM').AsString:= Code;
          ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
          SQL:= MbSqlConvert(SQL);
          ExecSql;

          Clear;
          Add('DELETE  FROM OFFERTIT_T');
          Add('  WHERE OFNUM = :OFNUM         ');
          Add('    AND TAFSILY_YEAR = :YEAR         ');
          ParamByName('OFNUM').AsString:= Code;
          ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
          SQL:= MbSqlConvert(SQL);
          ExecSql;

          Clear;
          Add('INSERT INTO DELETEDOFFFER_T');
          Add('(OFYEAR, OFNUM)');
          Add('VALUES');
          Add('(:OFYEAR, :OFNUM)');
          ParamByName('OFNUM').AsString:= Code;
          ParamByName('OFYEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
          SQL:= MbSqlConvert(SQL);
          ExecSql;

          Clear;
          Add('INSERT INTO DELETEDVALID_T');
          Add('(ADNUM3, ADNUM2)');
          Add('VALUES');
          Add('(:ADNUM3, :ADNUM2)');
          ParamByName('ADNUM2').AsString := Code;
          ParamByName('ADNUM3').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
          SQL:= MbSqlConvert(SQL);
          ExecSql;
        end;

        SelectEmpty(FDM_IntSales.qrEIntOffer, 'OFFERTIT_T');
        SelectEmpty(FDM_IntSales.qrEIntOfferDet, 'OFFERDTL_T');
        SelectEmpty(FDM_IntSales.qrEOffValidity, 'VALIDITY_T');
        dbedOFNum.SetFocus;
        MbDB.Commit(FDB);
        edGrossPrice.Text := '';
        edNetPrice.Text := '';
      except
        on E: Exception do
        begin
          MbDB.RollBack(FDB);
          MbError(E.Message);
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
      BtnType := AutoNavigate(FDB, qrEIntOffer, 'OFFERTIT_T', 2, Ord(_Last), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
      dbedOFNum.SetFocus;
      SelectNext(ActiveControl, True, True);
    end;
  finally
    FDM_IntSales.qrEIntOffer.EnableControls;
  end;
  InitCustType;
{$IFDEF TESTABIDI}
  cbAmani.Checked := (FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQDATE').AsString = '1');
//  chbRAmani.Checked := (StrToIntDef((FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQNO').AsString), 0) <> 0);
//  chbRAmani.Enabled := (FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQNO').AsString <> '2');
  cbAmani.Enabled := (FDM_IntSales.qrEIntOffer.FieldByName('SECTAFSILY_CODE').AsString = '');
//  chbRAmani.Enabled := (FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQDATE').AsString <> '2');
  chbRAmani.Visible := (FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQDATE').AsString = '1') and
                       (FDM_IntSales.qrEIntOffer.FieldByName('SECTAFSILY_CODE').AsString <> '');
{$ENDIF}
  ControlEnable;
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
      BtnType := AutoNavigate(FDB, qrEIntOffer, 'OFFERTIT_T', 2, Ord(_Next), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
      dbedOFNum.SetFocus;
      SelectNext(ActiveControl, True, True);
    end;
  finally
    FDM_IntSales.qrEIntOffer.EnableControls;
  end;
  InitCustType;
{$IFDEF TESTABIDI}
  cbAmani.Checked := (FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQDATE').AsString = '1');
//  chbRAmani.Checked := (StrToIntDef((FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQNO').AsString), 0) <> 0);
//  chbRAmani.Enabled := (FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQNO').AsString <> '2');
  cbAmani.Enabled := (FDM_IntSales.qrEIntOffer.FieldByName('SECTAFSILY_CODE').AsString = '');
  chbRAmani.Visible := (FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQDATE').AsString = '1') and
                       (FDM_IntSales.qrEIntOffer.FieldByName('SECTAFSILY_CODE').AsString <> '');
{$ENDIF}
  ControlEnable;
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
      BtnType := AutoNavigate(FDB, qrEIntOffer, 'OFFERTIT_T', 2, Ord(_Prev), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
      dbedOFNum.SetFocus;
      SelectNext(ActiveControl, True, True);
    end;
  finally
    FDM_IntSales.qrEIntOffer.EnableControls;
  end;
  InitCustType;
{$IFDEF TESTABIDI}
  cbAmani.Checked := (FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQDATE').AsString = '1');
//  chbRAmani.Checked := (StrToIntDef((FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQNO').AsString), 0) <> 0);
//  chbRAmani.Enabled := (FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQNO').AsString <> '2');
  cbAmani.Enabled := (FDM_IntSales.qrEIntOffer.FieldByName('SECTAFSILY_CODE').AsString = '');
  chbRAmani.Visible := (FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQDATE').AsString = '1') and
                       (FDM_IntSales.qrEIntOffer.FieldByName('SECTAFSILY_CODE').AsString <> '');
{$ENDIF}
  ControlEnable;
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
      BtnType := AutoNavigate(FDB, qrEIntOffer, 'OFFERTIT_T', 2, Ord(_First), IsLock);
      ProcButtons(sbFirst, sbPrev, sbNext, sbLast, BtnType) ;
      dbedOFNum.SetFocus;
      SelectNext(ActiveControl, True, True);
    end;
  finally
    FDM_IntSales.qrEIntOffer.EnableControls;
  end;
  InitCustType;
{$IFDEF TESTABIDI}
  cbAmani.Checked := (FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQDATE').AsString = '1');
//  chbRAmani.Checked := (StrToIntDef((FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQNO').AsString), 0) <> 0);
//  chbRAmani.Enabled := (FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQNO').AsString <> '2');
  cbAmani.Enabled := (FDM_IntSales.qrEIntOffer.FieldByName('SECTAFSILY_CODE').AsString = '');
  chbRAmani.Visible := (FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQDATE').AsString = '1') and
                       (FDM_IntSales.qrEIntOffer.FieldByName('SECTAFSILY_CODE').AsString <> '');
{$ENDIF}
  ControlEnable;
end;

procedure TFrmESaleProp.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if OfNumAmani <> '' then Exit;
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
  MbError(E.Message);
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
  Code, Year: string;
begin
  if HelpSalesProp(Code, Year) then
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
{    if FieldByName('CUST_REQNO').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedReqID.SetFocus;
      Result:= False;
      Exit;
    end;}

{    if FieldByName('CUST_REQDATE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedReqDte.SetFocus;
      Result:= False;
      Exit;
    end;}

    if FieldByName('OFDATE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedOFDte.SetFocus;
      Result:= False;
      Exit;
    end;

{    if FieldByName('OFVALDTE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedBIDate.SetFocus;
      Result:= False;
      Exit;
    end;}

{    if FieldByName('OFDLVDTE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedOFDlvDte.SetFocus;
      Result:= False;
      Exit;
    end;}


    if FieldByName('CUSTNO').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedCustNO.SetFocus;
      Result:= False;
      Exit;
    end;

{    if FieldByName('OFCOMM').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedOFComm.SetFocus;
      Result:= False;
      Exit;
    end;}

    if FieldByName('ORD_DELV_NO').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbedVCode.SetFocus;
      Result:= False;
      Exit;
    end;

    {$IFNDEF PAKHSH}
      if FieldByName('PRJCODE').AsString = '' then
      begin
        MbError(NotDataComplete);
        dbedDriver.SetFocus;
        Result:= False;
        Exit;
      end;
    {$ENDIF}

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
    _intNotConfirmed : Text := _stNotConfirmed;
    _intConfirmed    : Text := _stConfirmed;
  end;
end;

function TFrmESaleProp.GetPercentPrice(AdCode: string;
  APrice: Double): Double;
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT VALDEF          ');
    Add('  FROM ADDSUB_T');
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
  DataSet.FieldByName('CU_CODE').AsInteger := System_YY;
end;

{procedure TFrmESaleProp.bbPreviewClick(Sender: TObject);
var
  OfState,I,SumSubVal,SumAddVal,CopyNum : Integer;
  SumTotal : Double;
begin
  ppLabel14.Caption := RepTitle;
  if ComboBox1.ItemIndex = 0 then
  begin
    ppReport1.PrinterSetup.Copies:=ComboBox2.ItemIndex +1;
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
  end
  else
  begin
    //ppReport2.PrinterSetup.Copies:= ComboBox2.ItemIndex +1;
// Comment 88/10/08
//    ppLabel47.Caption := ' «ÌÌœÌÂ „”∆Ê· ›—Ê‘';
    for CopyNum:=1 to StrToInt(Combobox2.Items[Combobox2.ItemIndex]) do
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
        if FileExists(ReportPath+'ROFFER1.RTM') then
        begin
          ppReport2.Template.FileName:= ReportPath+'ROFFER1.RTM';
          ppReport2.SaveAsTemplate:= True;
          ppReport2.Template.LoadFromFile;
        end;
        if Sender = bbPreview then
          ppReport2.DeviceType := 'Screen'
        else
        begin
          ppReport2.DeviceType := 'Printer';
          ppReport2.ShowPrintDialog := False;
        end;

        ppLabel54.Caption := '';
        ppLabel55.Caption := '';
        ppLabel56.Caption := '';
        ppLabel57.Caption := '';

        ppLabel59.Caption := '';
        ppLabel61.Caption := '';
        ppLabel62.Caption := '';
        ppLabel63.Caption := '';
        I := 0;
        SumSubVal := 0;
        SumAddVal := 0;
        dbgrValidity.DataSource.DataSet.First;
        while not dbgrValidity.DataSource.DataSet.Eof do
        begin
          if dbgrValidity.DataSource.DataSet.FieldByName('ADDTYPE').AsString = _stSub then
          begin
            I := I+1;

            case I of
              1 :
              begin
                ppLabel54.Caption := dbgrValidity.DataSource.DataSet.FieldByName('ADDDESC').AsString;
                ppLabel59.Caption := SetCammaEdit(dbgrValidity.DataSource.DataSet.FieldByName('ADVAL').AsInteger);
                SumSubVal := SumSubVal + dbgrValidity.DataSource.DataSet.FieldByName('ADVAL').AsInteger;
              end;

              2 :
              begin
                ppLabel55.Caption := dbgrValidity.DataSource.DataSet.FieldByName('ADDDESC').AsString;
                ppLabel61.Caption := SetCammaEdit(dbgrValidity.DataSource.DataSet.FieldByName('ADVAL').AsInteger);
                SumSubVal := SumSubVal + dbgrValidity.DataSource.DataSet.FieldByName('ADVAL').AsInteger;
              end;
              3 :

              begin
                ppLabel56.Caption := dbgrValidity.DataSource.DataSet.FieldByName('ADDDESC').AsString;
                ppLabel62.Caption := SetCammaEdit(dbgrValidity.DataSource.DataSet.FieldByName('ADVAL').AsInteger);
                SumSubVal := SumSubVal + dbgrValidity.DataSource.DataSet.FieldByName('ADVAL').AsInteger;
              end;
            end;
          end;
          dbgrValidity.DataSource.DataSet.Next;
        end;
        SumTotal := 0;
        dbgrOffer.DataSource.DataSet.First;
        while not dbgrOffer.DataSource.DataSet.Eof do
        begin
          SumTotal := SumTotal + Round((dbgrOffer.DataSource.DataSet.FieldByName('OFPRICE').AsFloat*
                                        dbgrOffer.DataSource.DataSet.FieldByName('OFQTY').AsFloat*
                                        dbgrOffer.DataSource.DataSet.FieldByName('ABATE').AsFloat/100));
          dbgrOffer.DataSource.DataSet.Next;
        end;

        if ppLabel59.Caption ='' then
        begin
          ppLabel59.Caption := SetCammaEdit(SumTotal);
        end
        else
        begin
          ppLabel62.Caption := SetCammaEdit(SumTotal);
        end;

        I := 0;
        dbgrValidity.DataSource.DataSet.First;
        while not dbgrValidity.DataSource.DataSet.Eof do
        begin
          if dbgrValidity.DataSource.DataSet.FieldByName('ADDTYPE').AsString = _stAdd then
          begin
            I := I+1;

            case I of
              1 :
              begin
                ppLabel57.Caption := dbgrValidity.DataSource.DataSet.FieldByName('ADDDESC').AsString;
                ppLabel63.Caption := SetCammaEdit(dbgrValidity.DataSource.DataSet.FieldByName('ADVAL').AsInteger);
                SumAddVal := SumAddVal + dbgrValidity.DataSource.DataSet.FieldByName('ADVAL').AsInteger;
              end;

              2 :
              begin
                ppLabel67.Caption := dbgrValidity.DataSource.DataSet.FieldByName('ADDDESC').AsString;
                ppLabel68.Caption := SetCammaEdit(dbgrValidity.DataSource.DataSet.FieldByName('ADVAL').AsInteger);
                SumAddVal := SumAddVal + dbgrValidity.DataSource.DataSet.FieldByName('ADVAL').AsInteger;
              end;
            end;
          end;
          dbgrValidity.DataSource.DataSet.Next;
        end;

        ppLabel65.Caption := SetCammaEdit(StrToFloatDef(StringReplace(edGrossPrice.Text, ',', '', [rfReplaceAll]), 0)-SumSubVal+SumAddVal);
        ppLabel48.Caption := SetCammaEdit(StrToFloatDef(StringReplace(edGrossPrice.Text, ',', '', [rfReplaceAll]), 0)-SumSubVal+SumAddVal);
        ppLabel60.Text := MbStringNumber(Round(StrToFloat(StringReplace(ppLabel65.Caption, ',' , '' ,[rfReplaceAll])))) + ' '+'—Ì«·';

        ppReport2.Print;
      end;
// Comment 88/10/08
//      ppLabel47.Caption := '„Â— Ê «„÷«';
    end;//--for
  end;
end;}

Function TFrmESaleProp.PrintQuery : Boolean;
begin
  with FDM_IntSales.qrRSaleProp , sql do
  begin
    Close;
    Clear;
    Add('SELECT H.OFNUM, OFDATE, OFVALDTE, OFDLVDTE,       ');
    Add('       CUSTNAME,OFDLVDTE,OFDLVPLACE,              ');
    Add('       OFCOMM,                                    ');
    Add('       D.GDS_CODE, GDS_DESCF, GDS_DESCL,          ');
    Add('       G.GDS_UNTS, UNT_DESC ,NVL(GDS_INFO_T.INFO_DESC,G.INFO_DESC) INFO_DESC,           ');
    Add('       OFQTY, OFPRICE, OFDESC,C.CUSTFAX,          ');
    Add('       C.CUSTADD,CUST_REQNO,C.CUSTNO,CUST_REQDATE,');
    Add('       (NVL(OFPRICE,0)*NVL(OFQTY,0)) TOTLSUM,     ');
//    Add('       ((NVL(OFPRICE,0)*NVL(OFQTY,0))-((NVL(OFPRICE,0)*NVL(OFQTY,0))*NVL(ABATE,0)/100)) TOTLSUM,     ');
    Add('       GDS_DESC,GDS_DESC1,GDS_DESC2,              ');
    Add('       NVL(COST_PACK,0) COST_PACK,                ');
    Add('       D.PACK_TYPE ,                                ');
    Add('       REDUCTION_PACK,                            ');
    Add('       (OFQTY * NVL(COST_PACK,0)) PACKPRICE,      ');
    Add('       DECODE(REDUCTION_PACK,1,(NVL(OFPRICE,0)*NVL(OFQTY,0)),');
    Add('                               (NVL(OFPRICE,0)*NVL(OFQTY,0))+(OFQTY * NVL(COST_PACK,0))) SUMPRICE');
    Add('  FROM OFFERTIT_T H, OFFERDTL_T D,                ');
    Add('       GOODS G, IDCUSTOMER_T C,GDS_T,GOODSINFO_T,GDS_INFO_T  ');
    Add(' WHERE H.OFNUM    =:OFNUM                         ');
    Add('   AND TAFSILY_YEAR    = :YEAR                       ');
    Add('   AND TAFSILY_YEAR    = CU_CODE               ');
    Add('   AND H.OFNUM    = D.OFNUM                       ');
    Add('   AND H.CUSTNO   = C.CUSTNO                      ');
    Add('   AND D.GDS_CODE = G.GDS_CODE(+)                 ');
    Add('   AND D.GDS_CODE = GDS_T.GDS_CODE(+)             ');
    Add('   AND D.GDS_CODE = GOODSINFO_T.GDS_CODE(+)       ');
    Add('   AND D.GDS_INFO = GDS_INFO_T.INFO_CODE(+)       ');
    ParamByName('OFNUM').AsString := dbedOFNum.Text;
    ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
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
      Add('   AND ADNUM3 = :YEAR       ');
      Add('   AND   V.ADCODE = A.ADCODE                      ');
      Add('GROUP BY V.ADCODE, ADVAL, ADNUM2, ADFNAME, ADTYPE ');
      ParamByName('ADNUM2').AsString := dbedOFNum.Text;
      ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
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
    Add('   AND ADNUM3 = :YEAR       ');
    Add('   AND VALIDITY_T.ADCODE = ADDSUB_T.ADCODE');
    ParamByName('ADNUM2').AsString := dbedOFNum.Text;
    ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
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
    Add('   AND ADNUM3 = :YEAR       ');
    Add('   AND VALIDITY_T.ADCODE = ADDSUB_T.ADCODE');
    ParamByName('ADNUM2').AsString := dbedOFNum.Text;
    ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result := FieldByName('EZAFEHVAL').AsFloat;
  end;
end;

procedure TFrmESaleProp.ppDBText3GetText(Sender: TObject;
  var Text: String);
begin
  Text := MbDb2St(Text, MbCurrentCharSetCode);
end;

procedure TFrmESaleProp.ppFooterBand1BeforePrint(Sender: TObject);
begin
  AddQuery;
end;

procedure TFrmESaleProp.ppDBCalc2Calc(Sender: TObject);
begin
  pplbdbcalc1.text:=ppDBCalc2.text;
{  ppLabel98.Text :=SetCammaEdit(strtoFloat(GetEditText(ppdbcalc2.text))+ EzafehQuery - KasrQuery );
  ppLabel100.Text:=MbStringNumber(strtoFloat(GetEditText(ppdbcalc2.text))+ EzafehQuery - KasrQuery);}
  if StrToFloat(GetEditText(pplbdbcalc1.text)) = StrToFloat(GetEditText(edGrossPrice.Text)) then
   begin
    ppLabel98.Text := edNetPrice.Text;
    if not IsCurrency then
      ppLabel100.Text := MbStringNumber(Round(StrToFloat(StringReplace(edNetPrice.Text, ',' , '' ,[rfReplaceAll]))))
    else
      ppLabel100.Text := '';
   end
   else
   begin
    ppLabel98.Text := '';
    ppLabel100.Text := '';
   end;

end;

function TFrmESaleProp.IsCurrency: Boolean;
begin
  Result := False;
end;

procedure TFrmESaleProp.ppDBText17GetText(Sender: TObject;
  var Text: String);
begin
  if not IsCurrency then
    Text := SetCammaEdit(StrToFloat(StringReplace(Text, ',' , '' ,[rfReplaceAll])));
end;

procedure TFrmESaleProp.ppDBCalc2GetText(Sender: TObject;
  var Text: String);
begin
  if not IsCurrency then
    Text := SetCammaEdit(StrToFloat(StringReplace(Text, ',' , '' ,[rfReplaceAll])));
end;

procedure TFrmESaleProp.ppDBText10GetText(Sender: TObject;
  var Text: String);
begin
  Text := Mbdb2St(Text,MbCurrentCharSetCode);
end;

procedure TFrmESaleProp.OFDLVDTEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
end;

procedure TFrmESaleProp.OFDLVDTESetText(Sender: TField;
  const Text: String);
begin
//  Sender.AsString:= MbSt2Db(Text, MbCurrentCharSetCode);
end;

procedure TFrmESaleProp.ADKindChange(Sender: TField);
begin
end;

procedure TFrmESaleProp.InitAddSubGrid;
begin
//  FAddGrid:= TCuDBGrid.Create(Self, dbgrValidity, '', True, True, False);
{  FAddGrid.AddSum(['CF_SUM']);
  FAddGrid.SetSumControl['CF_SUM']:= edNetPrice;}
//  FAddGrid.SetRowDuplicate(['ADCODE']);
end;

procedure TFrmESaleProp.AddOnNewRecord(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByName('ADNUM1').AsString:= '0';
    FieldByName('ADNUM2').AsString:= FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
    FieldByName('ADNUM3').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
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
      dbgrOffer.SelectedIndex:= 4;
      Abort;
    end;

    if FieldByName('OFQTY').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrOffer.SetFocus;
      dbgrOffer.SelectedIndex:= 5;
      Abort;
    end;

{    if FieldByName('PACK_TYPE').AsString = '' then
    begin
      MbError(NotDataComplete);
      dbgrOffer.SetFocus;
      dbgrOffer.SelectedIndex:= 9;
      Abort;
    end;    }
  end;
end;

procedure TFrmESaleProp.AddAfterScroll(DataSet: TDataSet);
begin
  with DataSet do
  begin
    if dbgrValidity.SelectedField = FieldByName('ADVAL') then
      if (FieldByName('ADKIND').AsString = _stPercent) then
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

///////////////////////////////////////////////////
//        Debate:= SeqControlOff.GetSum('TOTCOST') - KasrVal;
///////////////////////////////////////////////////

        First;
        while not Eof do
        begin
//          TQuery(dbgrValidity.DataSource.DataSet).CachedUpdates:= True;
          Edit;

          FieldByName('ADNUM2').AsString:= FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;

///////////////////////////////////////////////////
//          if FieldByName('ADKIND').AsString = _stPercent then
//            FieldByName('ADVAL').AsFloat:= GetPercentPrice(FieldByName('ADCODE').AsString, SeqControlOff.GetSum('TOTCOST'));
///////////////////////////////////////////////////
          Next;                                                                                        ////;
        end;

        Result:= -1;
      end;

      if AKind = _OnOpen then
      begin
///////////////////////////////////////////////////
//        Temp:= SeqControlOff.GetSum('TOTCOST'); //StrToFloat(StringReplace(edGrossPrice.Text, ',', '', [rfReplaceAll]));
///////////////////////////////////////////////////
        try
          Temp := StrToFloatDef(CammaDelete(edGrossPrice.Text), 0);
        except
          Temp := 0;
        end;
        First;
        while not Eof do
        begin
          if FieldByName('ADDTYPE').AsString = _stAdd then
            Temp:= Temp + FieldByName('ADVAL').AsFloat
          else
          if FieldByName('ADDTYPE').AsString = _stSub then
//            Temp:= Temp - (FieldByName('ADVAL').AsFloat - (FieldByName('ADVAL').AsFloat * YearTaxVal) /100);
            Temp:= Temp - FieldByName('ADVAL').AsFloat;

          Next;
        end;
//        Temp := Temp - ((Temp * YearTaxVal) /100);
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
  SetOfDtlRowSeq(False);
  edNetPrice.Text := Format('%.n', [CalculateNetCost(_OnOpen)]);
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
{$IFNDEF PAKHSH}
  if FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsInteger = 27 then
  begin
    Rate:= StrToFloat(FindGdsUserPrice(Sender.AsString));
    if Sender.DataSet.FieldByName('PACK_TYPE').AsInteger <> 9 then
    begin
      Sender.DataSet.Edit;
      Sender.DataSet.FieldByName('OFPRICE').AsFloat:= Rate;
    end;
  end
  else
  begin
    if GetGoodRate(Sender.AsString, Rate) then
    begin
      GdsFlag:= True;
      Rate:= Round(Rate);
      if Sender.DataSet.FieldByName('PACK_TYPE').AsInteger <> 9 then
      begin
        Sender.DataSet.Edit;
        Sender.DataSet.FieldByName('OFPRICE').AsFloat:= Rate;
      end;
    end;
  end;
{$ENDIF}
{$IFDEF PAKHSH}
    if GetGoodRate(Sender.AsString, Rate) then
    begin
      GdsFlag:= True;
      Rate:= Round(Rate);
      if Sender.DataSet.FieldByName('PACK_TYPE').AsInteger <> 9 then
      begin
        Sender.DataSet.Edit;
        Sender.DataSet.FieldByName('OFPRICE').AsFloat:= Rate;
      end;
    end;
{$ENDIF}
(* Vakili 83-09-28 *)
end;

procedure TFrmESaleProp.DetAfterOpen(DataSet: TDataSet);
begin
  GdsFlag:= True;
end;

procedure TFrmESaleProp.spDesignClick(Sender: TObject);
begin
{  if ComboBox1.ItemIndex = 0 then
  begin
    ppDesigner.Report := ppReport1;
    ppDesigner.Report.Template.FileName:= ReportPath+'ROFFER.RTM';
    if FileExists(ReportPath+'ROFFER.RTM') then
    begin
      ppDesigner.Report.SaveAsTemplate:= True;
      ppDesigner.Report.Template.LoadFromFile;
    end;
    ppDesigner.ShowModal;
  end
  else
  begin
    ppDesigner.Report := ppReport2;
    ppDesigner.Report.Template.FileName:= ReportPath+'ROFFER1.RTM';
    if FileExists(ReportPath+'ROFFER1.RTM') then
    begin
      ppDesigner.Report.SaveAsTemplate:= True;
      ppDesigner.Report.Template.LoadFromFile;
    end;}
    ppDesigner.ShowModal;
//  end;
end;

procedure TFrmESaleProp.CF_MstOffer(DataSet: TDataSet);
var
  DrName: String;
  CW, CV: Double;
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT ECONOMIC_CODE, CUSTADD, CUST_CO, CUSTTEL, ECONOMIC_CODE, CUST_VISITOR, COUNTERY_CODE,');
    Add('  NAT_CODE, CUST_STATE, CUST_CTCODE, CUSTTEL, PERCENT_REDUCTION, CUSTNAME, CUSTTYPE_CODE, CUST_DIR, CUSTPOST, CUST_CUSTKIND');
    Add('FROM IDCUSTOMER_T C');
    Add(' WHERE CUSTNO = :PCUSNO      ');
    ParamByName('PCUSNO').AsString:= DataSet.FieldByName('CUSTNO').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;
    DataSet.FieldByName('CF_CECODE').AsString:= FieldByName('ECONOMIC_CODE').AsString;
    DataSet.FieldByName('CUSTADD').AsString:= FieldByName('CUSTADD').AsString;
    DataSet.FieldByName('CUST_CO').AsString:= FieldByName('CUST_CO').AsString;
    DataSet.FieldByName('CUSTTEL').AsString:= FieldByName('CUSTTEL').AsString;
    DataSet.FieldByName('ECONOMIC_CODE').AsString:= FieldByName('ECONOMIC_CODE').AsString;
    CustVisitor := FieldByName('CUST_VISITOR').AsString;
    DataSet.FieldByName('NAT_CODE').AsString:= FieldByName('NAT_CODE').AsString;
    DataSet.FieldByName('CUST_STATE').AsString:= GetStateName(FieldByName('CUST_STATE').AsString);
    DataSet.FieldByName('CUST_CTCODE').AsString:= GetCityName(FieldByName('CUST_CTCODE').AsString);
    DataSet.FieldByName('CUSTTEL').AsString:= FieldByName('CUSTTEL').AsString;
    DataSet.FieldByName('CF_COUNTRYNAME').AsString:= FieldByName('COUNTERY_CODE').AsString;
    DataSet.FieldByName('PERCENT_REDUCTION').AsString:= FieldByName('PERCENT_REDUCTION').AsString;
    DataSet.FieldByName('CUSTTYPE_CODE').AsString:= FieldByName('CUSTTYPE_CODE').AsString;
    CustType := FieldByName('CUSTTYPE_CODE').AsString;
    DataSet.FieldByName('CUST_DIR').AsString:= FieldByName('CUST_DIR').AsString;
    DataSet.FieldByName('CUSTPOST').AsString:= FieldByName('CUSTPOST').AsString;
    CustAdd := FieldByName('CUSTADD').AsString;
    CustKind := FieldByName('CUST_CUSTKIND').AsString;
    IsSpecCustKindCode := IsSpecCustKind(HasDist, CustType);
    DataSet.FieldByName('CF_CUSTNAME').AsString := Fieldbyname('CUSTNAME').AsString;
    DataSet.FieldByName('CF_VISITORNAME').AsString := GetVisitorName(DataSet.Fieldbyname('ORD_DELV_NO').AsString);
    DataSet.FieldByName('CF_DRIVERNAME').AsString := GetDriverName(DataSet.FieldByName('PRJCODE').AsString);
    DataSet.FieldByName('CF_CARNAME').AsString := GetTransportName(DataSet.FieldByName('OFCOMM').AsString, '0', DrName, CW, CV);
    edHavale.Text := GetDocMCodeFromSerial(FDM_IntSales.qrEIntOffer.FieldByName('SECTAFSILY_CODE').AsString);
    edOfferDoc.Text := GetDocMCodeFromSerial(FDM_IntSales.qrEIntOffer.FieldByName('OFDLVDTE').AsString);
  end;
  DataSet.FieldByName('CF_STKDESC').AsString := GetStkName(DataSet.FieldByName('STK_CODE').AsString);
  DataSet.FieldByName('CF_STOREDESC').AsString := FindStoreCode(DataSet.FieldByName('CUSTNO').AsString, DataSet.FieldByName('C_CODE').AsString);
  CustStorAdd := FindStoreAddr(DataSet.FieldByName('CUSTNO').AsString, DataSet.FieldByName('C_CODE').AsString);
  if CustStorAdd = '' then
    CustStorAdd := CustAdd;
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
      if CustomerStatus(FieldByName('CUSTNO').AsString) = '0' then
      begin
        MbError('òœ „‘ —Ì Ê«—œ ‘œÂ €Ì— ›⁄«· „Ì »«‘œ');
        dbedCustNO.SetFocus;
        Exit;
      end;
      if CustomerStatus(FieldByName('CUSTNO').AsString) = '2' then
      begin
        MbError('»œ·Ì· ÊÃÊœ çò »—ê‘ Ì œ— ”Ê«»ﬁ «Ì‰ „‘ —Ì «„ò«‰ ’œÊ— ›«ò Ê— ÊÃÊœ ‰œ«œ—');
        dbedCustNO.SetFocus;
        Exit;
      end;
    end;
    Edit;
    FieldByName('ORD_DELV_NO').AsString := CustVisitor;
  end;


  if FDM_IntSales.qrEIntOffer.FieldByName('ORDADDRESS').AsString = '' then
  begin
    FDM_IntSales.qrEIntOffer.Edit;
    FDM_IntSales.qrEIntOffer.FieldByName('ORDADDRESS').AsString := CustStorAdd;
  end;
  InitCustType;
end;

procedure TFrmESaleProp.GetTellAdd;
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT  C.CUSTTEL,C.CUSTADD       ');
    Add('  FROM IDCUSTOMER_T C             ');
    Add(' WHERE C.CUSTNO = :PCusNo         ');

    ParamByName('PCusNo').AsString:= FDM_IntSales.qrEIntOffer.FieldByName('CUSTNO').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;

    FCustTel := FieldByName('CUSTTEL').AsString;
    FCustAddr:= FieldByName('CUSTADD').AsString;

    Close;
  end;
end;

procedure TFrmESaleProp.CreateOrdDelv(FSerial: integer);
begin
  //--------------------------------------Commented-----------------------------
  GetTellAdd ;

  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('INSERT INTO ORD_M_T (     ');
    Add('  ORD_CODE, ORD_YEAR, ORD_DATE, ORDOF_NUM, ORDCNT_CODE, ORD_PLACE,  ');
    Add('  ORD_CNTDATE, ORDCUST_CODE, ORD_VALUE, ORD_TYPE, ORD_DESC, CUST_TEL , CUST_ADD)         ');
    Add('VALUES (:ORD_CODE, :ORD_YEAR, :ORD_DATE, :ORDOF_NUM, Null,  ');
    Add('  :ORD_PLACE, Null, :ORDCUST_CODE, :ORD_VALUE, :ORD_TYPE,   ');
    Add('  :ORD_DESC, :CUST_TEL , :CUST_ADD)                                                        ');
    ParamByName('ORD_CODE').AsInteger     := FSerial;
    ParamByName('ORD_YEAR').AsString     := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
    ParamByName('ORD_DATE').AsString      := MbUserDate;//FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString;
    ParamByName('ORDOF_NUM').AsString     := FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
    ParamByName('ORD_PLACE').AsString     := FDM_IntSales.qrEIntOffer.FieldByName('OFDLVPLACE').AsString;
    ParamByName('ORDCUST_CODE').AsString  := FDM_IntSales.qrEIntOffer.FieldByName('CUSTNO').AsString;
    ParamByName('ORD_VALUE').AsFloat      := StrToFloat(StringReplace(edGrossPrice.Text, ',' , '' ,[rfReplaceAll]));
    ParamByName('ORD_TYPE').AsInteger     := _intOrdType1;
    ParamByName('ORD_DESC').AsString      := FDM_IntSales.qrEIntOffer.FieldByName('OFDESC').AsString;

    ParamByName('CUST_TEL').AsString      := FCustTel;
    ParamByName('CUST_ADD').AsString      := FCustAddr;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;


    Clear;
    Add('INSERT INTO ORD_D_T (');
    Add('   ORD_CODE, ORD_YEAR, ORD_SEQ, GDS_CODE, PACK_TYPE, ORD_QTY, PACK_QTY,ORD_FINALQTY,GDS_INFO)');
    Add('  (SELECT  :ORD_CODE, :ORD_YEAR,OFSEQ,GDS_CODE, PACK_TYPE, OFQTY ,OFQTY,OFQTY,GDS_INFO');
    Add('     FROM  OFFERDTL_T                           ');
    Add('     WHERE OFNUM = :OFNUM)                              ');
    Add('       AND CU_CODE = :YEAR)                              ');
    ParamByName('ORD_CODE').AsInteger  := FSerial;
    ParamByName('ORD_YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
    ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
//    ParamByName('PACK_TYPE').AsInteger := _intPackType1;
    ParamByName('OFNUM').AsString      := FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;
  end;
end;

procedure TFrmESaleProp.DistroyOrdDelv;
begin
  //--------------------------------------Commented-----------------------------
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('DELETE  ORD_D_T                                   ');
    Add(' WHERE ORD_CODE  = (SELECT ORD_CODE                ');
    Add('                      FROM ORD_M_T            ');
    Add('                     WHERE ORDOF_NUM     = :ORDOF_NUM     ');
    Add('                       AND ORD_YEAR   = :ORD_YEAR)   ');
    Add('   AND ORD_YEAR   = :ORD_YEAR   ');
    ParamByName('ORDOF_NUM').AsInteger     := FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsInteger;
    ParamByName('ORD_YEAR').AsString   := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;

    Clear;
    Add('DELETE  ORD_M_T            ');
    Add('                     WHERE ORDOF_NUM     = :ORDOF_NUM     ');
    Add('                       AND ORD_YEAR   = :ORD_YEAR   ');
    ParamByName('ORDOF_NUM').AsInteger     := FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsInteger;
    ParamByName('ORD_YEAR').AsString   := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;
  end;
end;

function TFrmESaleProp.GetSeqVal: integer;
begin
  //--------------------------------------Commented-----------------------------
  with FDM_IntSales.qrETemp, SQL do
  begin
    Close;
    Clear;
    Add('SELECT Max(Nvl(ORD_CODE,0)) VAL');
    Add('  FROM ORD_M_T                       ');
    Add(' WHERE ORD_YEAR = :ORD_YEAR');
    ParamByName('ORD_YEAR').AsString     := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result := (FieldByName('VAL').AsInteger+1) ;
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
    Add('                            FROM INVENTORY.DOC_M            ');
    Add('                           WHERE FRM_CODE     = :FRM_CODE     ');
    Add('                             AND DOC_M_YEAR   = :DOC_M_YEAR   ');
    Add('                             AND DOC_M_STKSER = :DOC_M_STKSER ');
    Add('                             AND DOC_M_CODE   = :DOC_M_CODE)  ');
    ParamByName('FRM_CODE').AsInteger    := _OrdDelFormcode;
    ParamByName('DOC_M_YEAR').AsString  := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
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
end;

procedure TFrmESaleProp.UpdateOrd_Delv_No;
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('UPDATE  OFFERTIT_T         ');
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
    Add('UPDATE  OFFERTIT_T  ');
    Add('  SET   ORD_DELV_NO = NULL  ');
    Add('  WHERE OFNUM = :OFNUM      ');
    ParamByName('OFNUM').AsString := FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;
  end;
end;

procedure TFrmESaleProp.UpdateSTAT;
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('UPDATE OFFERTIT_T');
    Add('SET                      ');
    Add('   OFSTAT = :OFSTAT      ');
    Add('WHERE                    ');
    Add('   OFNUM  = :OFNUM       ');
    ParamByName('OFSTAT').AsInteger:= 2;
    ParamByName('OFNUM').AsString:= FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
    SQL:= MbSqlConvert(SQL);
    ExecSQL;
  end;
end;

function TFrmESaleProp.CheckGSD_CODE(GCode: String): Boolean;
begin
(*
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT GDS_CODE                             ');
    Add('  FROM INVENTORY.DOC_D D, INVENTORY.DOC_M M ');
    Add(' WHERE D.DOC_M_SERIAL = M.DOC_M_SERIAL      ');
    Add('   AND GDS_CODE       = :GDS_CODE           ');
    Add('   AND D.DOC_M_YEAR   = :YEAR               ');
    Add('   AND FRM_CODE       = 304                 ');
    Add('   AND M.DOC_M_SALEORNO = :OFNUM            ');
    ParamByName('GDS_CODE').AsString := GCode;
    ParamByName('YEAR').AsInteger    := Copy(FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString, 1, 4);
    ParamByName('OFNUM').AsString    := dbedOFNum.Text;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result := not IsEmpty;
  end;
 *) 
end;

procedure TFrmESaleProp.DetBeforeDelete(DataSet: TDataSet);
begin
  DelFlag := False;
(*
  with DataSet do
  begin
    if CheckGSD_CODE(FieldByName('GDS_CODE').AsString) then
    begin
      MbError(ExistDoccode);
      Abort;
    end;
  end;
*)
end;

function TFrmESaleProp.CheckQTY(GCode: String): Integer;
begin
(*
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT  SUM(DOC_D_REQQTY) QTY, GDS_CODE     ');
    Add('  FROM INVENTORY.DOC_D D, INVENTORY.DOC_M M ');
    Add(' WHERE D.DOC_M_SERIAL   = M.DOC_M_SERIAL    ');
    Add('   AND GDS_CODE         = :GDS_CODE         ');
    Add('   AND D.DOC_M_YEAR     = :YEAR             ');
    Add('   AND FRM_CODE         = 304               ');
    Add('   AND M.DOC_M_SALEORNO = :OFNUM            ');
    Add(' GROUP BY GDS_CODE                          ');
    ParamByName('GDS_CODE').AsString := GCode;
    ParamByName('YEAR').AsInteger    := Copy(FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString, 1, 4);
    ParamByName('OFNUM').AsString    := dbedOFNum.Text;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result := FieldByName('QTY').AsInteger;
  end;
*)
end;

function TFrmESaleProp.CheckFactor(GCode: String): Boolean;
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT T.ITMNO                    ');
    Add('  FROM ITEMFACT_T T, ITEMFACR_T R ');
    Add(' WHERE T.ITMNO  = R.ITMNO         ');
    Add('   AND OFNUM    = :OFNUM          ');
    Add('   AND GDS_CODE = :GDS_CODE       ');
    ParamByName('OFNUM').AsString    := dbedOFNum.Text;
    ParamByName('GDS_CODE').AsString := GCode;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result := not IsEmpty;
  end;
end;

function TFrmESaleProp.CntrlForEzafat: Boolean;
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('SELECT ITMNO          ');
    Add('  FROM ITEMFACT_T T   ');
    Add(' WHERE OFNUM = :OFNUM ');
    ParamByName('OFNUM').AsString := dbedOFNum.Text;
    SQL:= MbSqlConvert(SQL);
    Open;
    Result := not IsEmpty;
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
      Add('UPDATE OFFERTIT_T');
      Add('SET ');
      Add('   OFSTAT = :OFSTAT');
      Add('WHERE');
      Add('     OFNUM = :OFNUM');
      Add('     TAFSILY_YEAR = :TAFSILY_YEAR');
      ParamByName('OFSTAT').AsInteger:= 2;
      ParamByName('OFNUM').AsString:= FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
      ParamByName('TAFSILY_YEAR').AsString:= FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
      SQL:= MbSqlConvert(SQL);
      ExecSQL;

//      Serial := GetSeqVal;
{      if dbedORD_DELV_NO.Text = '' then
      begin
        FDM_IntSales.qrEIntOffer.Edit;
        FDM_IntSales.qrEIntOffer.FieldByName('Ord_Delv_No').AsInteger := Serial;//SelectOrd_Delv_No;
      end;}
//      CreateOrdDelv(serial);
//      UpdateOrd_Delv_No;
    end;

    MbDB.Commit(FDB);
  except
    MbDB.RollBack(FDB);
  end;

  btnControl.Visible:= False;
//  btnNoControl.Visible:= True;
  DisableIntControls;

  dbedOFNumExit(nil);
{  if dbedORD_DELV_NO.Text = '' then
    UpdateOrd_Delv_No;}
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
(*
  if not DoesHavaleHas then
  begin
    MbError('»Â œ·Ì· ÊÃÊœ ÕÊ«·Â «„ò«‰ ⁄œ„  «ÌÌœ ÊÃÊœ ‰œ«—œ.');
    Exit;
  end;
*)
  if not MbDB.InTransaction[FDB] then
    MbDB.StartTransaction(FDB);

  try
    with FDM_IntSales.qrETemp, SQL do
    begin
      Clear;
      Add('UPDATE OFFERTIT_T');
      Add('SET ');
      Add('   OFSTAT = :OFSTAT');
      Add('WHERE');
      Add('     OFNUM = :OFNUM');
      ParamByName('OFSTAT').AsInteger:= 2;
      ParamByName('OFNUM').AsString:= FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
      SQL:= MbSqlConvert(SQL);
      ExecSQL;

//      DistroyOrdDelv;
//      EmptyOrd_delv_No;
    end;

    MbDB.Commit(FDB);
  except
    MbDB.RollBack(FDB);
  end;

  btnNoControl.Visible:= False;
//  btnControl.Visible:= True;
  EnableIntControls;

  dbedOFNumExit(nil);
//  EmptyOrd_delv_No;
end;

procedure TFrmESaleProp.ppDBText26GetText(Sender: TObject;
  var Text: String);
begin
  case FDM_IntSales.qrRSaleProp.FieldByName('PACK_TYPE').AsInteger of
     0            : Text := '‰œ«—œ';
    _intPackType1 : Text := _stPackType1;
    _intPackType2 : Text := _stPackType2;
    _intPackType3 : Text := _stPackType3;
    _intPackType4 : Text := _stPackType4;
    _intPackType5 : Text := _stPackType5;
  end;
end;

procedure TFrmESaleProp.dbedBIDateKeyPress(Sender: TObject; var Key: Char);
begin
  Key := NumericKey(Key); 
end;

procedure TFrmESaleProp.PACK_TYPEOnGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intPackType1 : Text := _stPackType1;
    _intPackType2 : Text := _stPackType2;
    _intPackType3 : Text := _stPackType3;
    _intPackType4 : Text := _stPackType4;
    _intPackType5 : Text := _stPackType5;
  end;
end;

procedure TFrmESaleProp.PACK_TYPEOnSetText(Sender: TField;
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

procedure TFrmESaleProp.AddQtyDiscount;
var
  DisQty: Integer;
  SavePlace: TBookmark;
  InGdsCode: String;
  DateVal: String;
  Rate: Double;
begin
  if FDM_IntSales.qrEIntOffer.FieldByName('OFVALDTE').AsString <> '' then
    DateVal := FDM_IntSales.qrEIntOffer.FieldByName('OFVALDTE').AsString
  else
    DateVal := FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString;
  if StrToIntDef(FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQDATE').AsString, 0) <> 0 then Exit;
    with FDM_IntSales.qrEIntOfferDet do
    begin
     try
        First;
        while not Eof do
        begin
          InGdsCode := '';
          SavePlace := GetBookmark;
          if IsOfferCust then
          begin
            if (IsSpecCustKindCode ) or (not IsSpecCustKindCode)then
//            if (IsSpecCustKindCode and HasDist) or (not IsSpecCustKindCode)then
            begin
              if (GetQtyDiscountOfferCust(FieldByName('GDS_CODE').AsString, FieldByName('OFQTY').AsInteger, FDM_IntSales.qrEIntOffer.FieldByName('CUSTNO').AsString,
                                          FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString,DisQty)) and
                 (FieldByName('PACK_TYPE').AsInteger <> 9) then
              begin
                InGdsCode := FieldByName('GDS_CODE').AsString;
                Append;
                FieldByName('GDS_CODE').AsString := InGdsCode;
                Edit;
                FieldByName('OFQTY').AsInteger := DisQty;
                Edit;
                FieldByName('PACK_TYPE').AsInteger := 9;
                Edit;
                {$IFNDEF PAKHSH}
                  if FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsInteger = 27 then
                  begin
                    Rate:= StrToFloat(FindGdsUserPrice(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString));
                  end;
                  if FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsInteger <> 27 then
                  begin
                    {$IFDEF AMANI}
                      Rate := GetSecGoodPrc(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString, CustType, FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString);
                    {$ELSE}
                      Rate := StringToFloat(GetGoodsPriceByDate(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString, FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString));
                    {$ENDIF}
                  end;
                {$ENDIF}
                {$IFDEF PAKHSH}
                    {$IFDEF AMANI}
                      Rate := GetSecGoodPrc(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString, CustType, FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString);
                    {$ELSE}
                      Rate := StringToFloat(GetGoodsPriceByDate(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString, FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString));
                    {$ENDIF}
                {$ENDIF}


//                FieldByName('OFPRICE').AsFloat := 0;
                FieldByName('OFPRICE').AsFloat := Rate;

                FieldByName('OF_REALQTY').AsInteger := GetRealQty(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString,
                                                                  FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString,
                                                                  FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString,
                                                                  FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsString);


{ $IFDEF ABIDIDIST}
                FieldByName('ABATE').AsFloat := 100;
{ $ENDIF}
                GotoBookmark(SavePlace);
              end;
            end;
          end;
//          else
          if (IsSpecCustKindCode and HasDist) or (not IsSpecCustKindCode)then
          begin
            if (GetQtyDiscount(FieldByName('GDS_CODE').AsString, FieldByName('OFQTY').AsInteger, FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString, 1, DisQty)) and
               (FieldByName('PACK_TYPE').AsInteger <> 9) and
               (FieldByName('GDS_CODE').AsString <> InGdsCode) then
            begin
              InGdsCode := FieldByName('GDS_CODE').AsString;
              if DisQty <>  0 then
              begin
                Append;
                FieldByName('GDS_CODE').AsString := InGdsCode;
                Edit;
                FieldByName('OFQTY').AsInteger := DisQty;
                Edit;
                FieldByName('PACK_TYPE').AsInteger := 9;
                Edit;
{$IFNDEF PAKHSH}
  if FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsInteger = 27 then
  begin
    Rate:= StrToFloat(FindGdsUserPrice(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString));
  end;
  if FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsInteger = 27 then
  begin
    {$IFDEF AMANI}
      Rate := GetSecGoodPrc(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString, CustType, FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString);
    {$ELSE}
      Rate := StringToFloat(GetGoodsPriceByDate(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString, FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString));
    {$ENDIF}
  end;
{$ENDIF}
{$IFDEF PAKHSH}
    {$IFDEF AMANI}
      Rate := GetSecGoodPrc(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString, CustType, FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString);
    {$ELSE}
      Rate := StringToFloat(GetGoodsPriceByDate(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString, FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString));
    {$ENDIF}
{$ENDIF}
                FieldByName('OFPRICE').AsFloat:= Rate;
//                FieldByName('OFPRICE').AsFloat:= 0;

                FieldByName('OF_REALQTY').AsInteger := GetRealQty(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString,
                                                                  FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString,
                                                                  FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString,
                                                                  FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsString);

{ $IFDEF ABIDIDIST}
                FieldByName('ABATE').AsFloat := 100;
{ $ENDIF}
              end;
              GotoBookmark(SavePlace);
            end;
          end;


          Next;
        end;
      finally
        FreeBookmark(SavePlace);
      end;
    end;
end;

procedure TFrmESaleProp.InsertAddSub;
var
  PersentDis: Double;
begin
  with qrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM VALIDITY_T');
    SQL.Add('WHERE ADCODE = :ADCODE');
    SQL.Add('  AND ADNUM2 = :ADNUM2');
    SQL.Add('  AND ADNUM3 = :YEAR       ');
    ParamByName('ADCODE').AsString := dbgrValidity.DataSource.DataSet.FieldByName('ADCODE').AsString;
    ParamByName('ADNUM2').AsString := dbgrValidity.DataSource.DataSet.FieldByName('ADNUM2').AsString;
    ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
    ExecSQL;
  end;
{$IFDEF TESTABIDI}
  if cbAmani.Checked then Exit;
{$ENDIF}
  with FDM_IntSales.qrEOffValidity do
  begin
    First;
    while not Eof do
    begin
{$IFNDEF AHMADTEA}
      if FieldByName('ADCODE').AsInteger = 0 then
        Delete
      else
        Next;
{$ENDIF}
{$IFDEF AHMADTEA}
      Delete;
{$ENDIF}
    end;
      First;
        GetRlsDiscount(GrossPrice, FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString, PersentDis);
        if (DistRial = 1) and (IsSpecCust > 0) then
        begin
          Append;
          FieldByName('ADCODE').AsInteger := 0;
          Edit;
          FieldByName('ADVAL').AsFloat := ((GrossPrice * PersentDis)/100); // + TaxVal;
        end;

{$IFDEF AHMADTEA}
        if IsSpecCust > 0 then
        begin
          Append;
          FieldByName('ADCODE').AsInteger := 0;
          Edit;
          FieldByName('ADVAL').AsFloat := ((GrossPrice * IsSpecCust)/100); // + TaxVal;
        end;
{$ENDIF}


        if IsSpecCust = 0 then
        begin
          if {(TaxVal > 0) or} (PersentDis > 0) then
          begin
            Append;
            FieldByName('ADCODE').AsInteger := 0;
            Edit;
            FieldByName('ADVAL').AsFloat := ((GrossPrice * PersentDis)/100); // + TaxVal;
          end;
        end;
  end;



  Edit1.Text := FDM_IntSales.qrEOffValidity.FieldByName('ADVAL').AsString;
  Edit1.Text := FloatToStr(FDM_IntSales.qrEOffValidity.FieldByName('ADVAL').AsFloat - ((FDM_IntSales.qrEOffValidity.FieldByName('ADVAL').AsFloat * YearTaxVal) / 100));
end;

procedure TFrmESaleProp.dbgrOfferColExit(Sender: TObject);
var
  DistPersent, Rate, CostPack, ValAmnt, TaxVaLed, Coeff: Double;
  PackType,GdsInfoM :Integer;
  DateVal: String;
begin
  FDM_IntSales.qrEIntOfferDet.Edit;
  FDM_IntSales.qrEIntOfferDet.FieldByName('ABATE').AsFloat := 0;
  if FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString <> '' then
  begin
    GdsStat := GetGdsInfoStat(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString);
    if GdsStat = '1' then
    begin
      MbError('«Ì‰ ò«·« €Ì— ›⁄«· „Ì »«‘œ');
      dbgrOffer.SelectedField := FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE');
      Exit;
    end;
  end
  else
    GdsStat := '';
  if FDM_IntSales.qrEIntOffer.FieldByName('OFVALDTE').AsString <> '' then
    DateVal := FDM_IntSales.qrEIntOffer.FieldByName('OFVALDTE').AsString
  else
    DateVal := FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString;
{$IFNDEF AMANI}
  if (IsSpecCustKindCode) and (FDM_IntSales.qrEIntOfferDet.FieldByName('PACK_TYPE').AsInteger <> 9) then
  begin
    FDM_IntSales.qrEIntOfferDet.Edit;
    FDM_IntSales.qrEIntOfferDet.FieldByName('PACKVALUE').AsFloat := GetSecGoodPrc(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString, CustType, DateVal);
  end;
{$ENDIF}

{$IFNDEF PAKHSH}
  if FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsInteger = 27 then
  begin
    if FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString <> '' then
      Rate:= StrToFloat(FindGdsUserPrice(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString));
  end;
  if FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsInteger <> 27 then
  begin
    {$IFDEF AMANI}
      Rate := GetSecGoodPrc(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString, CustType, FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString);
    {$ENDIF}
    {$IFNDEF PAKHSH}
      Rate := GetSecGoodPrc(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString, CustType, FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString);
      if Rate = 0 then
        Rate := StringToFloat(GetGoodsPriceByDate(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString, FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString));
    {$ENDIF}
    {$IFDEF PAKHSH}
        Rate := StringToFloat(GetGoodsPriceByDate(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString, FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString));
    {$ENDIF}
  end;
{$ENDIF}
{$IFDEF PAKHSH}
    {$IFDEF AMANI}
      Rate := GetSecGoodPrc(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString, CustType, FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString);
    {$ENDIF}
    {$IFNDEF PAKHSH}
      Rate := GetSecGoodPrc(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString, CustType, FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString);
      if Rate = 0 then
        Rate := StringToFloat(GetGoodsPriceByDate(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString, FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString));
    {$ENDIF}
    {$IFDEF PAKHSH}
        Rate := StringToFloat(GetGoodsPriceByDate(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString, FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString));
    {$ENDIF}
{$ENDIF}


  if (Rate <> -1) and (FDM_IntSales.qrEIntOfferDet.FieldByName('PACK_TYPE').AsInteger <> 9) then
  begin
    FDM_IntSales.qrEIntOfferDet.Edit;
    FDM_IntSales.qrEIntOfferDet.FieldByName('OFPRICE').AsFloat := Rate;
  end;
  FDM_IntSales.qrEIntOfferDet.Edit;
  FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_INFO').AsString := BranchCode;
//  if FDM_IntSales.qrEIntOfferDet.FieldByName('OFQTY').AsFloat > 0 then //99/01/09
  if (FDM_IntSales.qrEIntOfferDet.FieldByName('OFQTY').AsFloat > 0) and (FDM_IntSales.qrEIntOfferDet.FieldByName('PACK_TYPE').AsInteger <> 9) then
  begin
    GetRialDiscount(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString,
                       (FDM_IntSales.qrEIntOfferDet.FieldByName('OFQTY').AsInteger * FDM_IntSales.qrEIntOfferDet.FieldByName('OFPRICE').AsFloat),
                        FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString, DistPersent);
    FDM_IntSales.qrEIntOfferDet.Edit;
    if (IsSpecCust > 0) and (DistRow = 1) then
      FDM_IntSales.qrEIntOfferDet.FieldByName('ABATE').AsFloat := DistPersent + IsSpecCust;
{    if (IsSpecCust > 0) and (DistRow = 0) then
      FDM_IntSales.qrEIntOfferDet.FieldByName('ABATE').AsFloat := IsSpecCust;}
{$IFNDEF AHMADTEA}
    if (IsSpecCust = 0) and (FDM_IntSales.qrEIntOfferDet.FieldByName('ABATE').AsFloat <> 100) then
      FDM_IntSales.qrEIntOfferDet.FieldByName('ABATE').AsFloat := DistPersent;
{$ENDIF}
    if FDM_IntSales.qrEIntOfferDet.FieldByName('OFPRICE').AsInteger = 0 then Exit;

{$IFNDEF AMANI}
    if (IsSpecCustKindCode) and
       (FDM_IntSales.qrEIntOfferDet.FieldByName('OFPRICE').AsFloat - FDM_IntSales.qrEIntOfferDet.FieldByName('PACKVALUE').AsFloat > 0) and
       (FDM_IntSales.qrEIntOfferDet.FieldByName('PACKVALUE').AsFloat > 0)then
      if FDM_IntSales.qrEIntOfferDet.FieldByName('ABATE').AsFloat <> 100 then
        FDM_IntSales.qrEIntOfferDet.FieldByName('ABATE').AsFloat := (FDM_IntSales.qrEIntOfferDet.FieldByName('ABATE').AsFloat +
                                                                    (((FDM_IntSales.qrEIntOfferDet.FieldByName('OFPRICE').AsFloat - FDM_IntSales.qrEIntOfferDet.FieldByName('PACKVALUE').AsFloat)*100)/
                                                                    (FDM_IntSales.qrEIntOfferDet.FieldByName('OFPRICE').AsFloat)));


    if (IsSpecCustKindCode) and
       (FDM_IntSales.qrEIntOfferDet.FieldByName('OFPRICE').AsFloat - FDM_IntSales.qrEIntOfferDet.FieldByName('PACKVALUE').AsFloat < 0) then
    begin
      FDM_IntSales.qrEIntOfferDet.FieldByName('OFPRICE').AsFloat := FDM_IntSales.qrEIntOfferDet.FieldByName('PACKVALUE').AsFloat;
    end;
{$ENDIF}
  end;
  if dbgrOffer.SelectedField = FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE') then
    dbgrOffer.SelectedField := FDM_IntSales.qrEIntOfferDet.FieldByName('OFQTY');

{$IFNDEF AHMADTEA}
  if (FDM_IntSales.qrEIntOfferDet.FieldByName('PACK_TYPE').AsInteger <> 9) //99/01/09
     and (FDM_IntSales.qrEIntOfferDet.FieldByName('ABATE').AsFloat <> 100) then //99/02/01
  begin
    FDM_IntSales.qrEIntOfferDet.FieldByName('ABATE').AsFloat := FDM_IntSales.qrEIntOfferDet.FieldByName('ABATE').AsFloat +
                                                                GetAbateDistcount(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString,
                                                                FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString);
    FDM_IntSales.qrEIntOfferDet.FieldByName('ABATE').AsFloat := FDM_IntSales.qrEIntOfferDet.FieldByName('ABATE').AsFloat +
                                                                GetDiscountRow(FDM_IntSales.qrEIntOffer.FieldByName('CUSTNO').AsString,
                                                                               FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString,
                                                                               FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString);
    FDM_IntSales.qrEIntOfferDet.FieldByName('CASH_ABATE').AsFloat := GetCashDiscountRow(FDM_IntSales.qrEIntOffer.FieldByName('CUSTNO').AsString,
                                                                                        FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString,
                                                                                        FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString);
  end;
{$ENDIF}
  if dbgrOffer.SelectedField = FDM_IntSales.qrEIntOfferDet.FieldByName('OFQTY') then
    if FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString <> '' then
    begin
      FDM_IntSales.qrEIntOfferDet.Edit;
      FDM_IntSales.qrEIntOfferDet.FieldByName('OF_REALQTY').AsInteger := GetRealQty(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString,
                                                                                    FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString,
                                                                                    FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString,
                                                                                    FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsString);
    end;
end;

procedure TFrmESaleProp.InsertValidity;
begin
  with qrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM VALIDITY_T');
    SQL.Add('WHERE ADNUM2 = :ADNUM2');
    SQL.Add('  AND ADNUM3 = :YEAR       ');
    ParamByName('ADNUM2').AsString := dbgrValidity.DataSource.DataSet.FieldByName('ADNUM2').AsString;
    ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
    ExecSQL;
  end;
  with FDM_IntSales.qrEOffValidity do
  begin
    DisableControls;
    try
      First;
      while not Eof do
      begin
        qrTemp.SQL.Clear;
        qrTemp.SQL.Add('INSERT INTO VALIDITY_T');
        qrTemp.SQL.Add('(ADCODE, ADNUM1, ADNUM2, ADNUM3, ADNUM4, ADNUM5, ADVAL, ADARZVAL)');
        qrTemp.SQL.Add('VALUES');
        qrTemp.SQL.Add('(:ADCODE, :ADNUM1, :ADNUM2, :ADNUM3, :ADNUM4, :ADNUM5, :ADVAL, :ADARZVAL)');
        qrTemp.ParamByName('ADCODE').AsString    := FieldByName('ADCODE').AsString;
        qrTemp.ParamByName('ADNUM1').AsString   := FieldByName('ADNUM1').AsString;
        qrTemp.ParamByName('ADNUM2').AsString := FieldByName('ADNUM2').AsString;
        qrTemp.ParamByName('ADNUM3').AsString   := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
        qrTemp.ParamByName('ADNUM4').AsString := FieldByName('ADNUM4').AsString;
        qrTemp.ParamByName('ADNUM5').AsString   := FieldByName('ADNUM5').AsString;
        qrTemp.ParamByName('ADVAL').AsString := FieldByName('ADVAL').AsString;
        qrTemp.ParamByName('ADARZVAL').AsString   := FieldByName('ADARZVAL').AsString;
        qrTemp.ExecSql;
        Next;
      end;

{$IFDEF AHMADTEA}
      if StrToIntDef(Edit3.Text, 0) <> 0 then
      begin
        FDM_IntSales.qrEOffValidity.Prior;
        qrTemp.ParamByName('ADCODE').AsString    := '3';
        qrTemp.ParamByName('ADNUM1').AsString   := FieldByName('ADNUM1').AsString;
        qrTemp.ParamByName('ADNUM2').AsString := FieldByName('ADNUM2').AsString;
        qrTemp.ParamByName('ADNUM3').AsString   := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
        qrTemp.ParamByName('ADNUM4').AsString := FieldByName('ADNUM4').AsString;
        qrTemp.ParamByName('ADNUM5').AsString   := FieldByName('ADNUM5').AsString;
        qrTemp.ParamByName('ADVAL').AsString := Edit3.Text;
        qrTemp.ParamByName('ADARZVAL').AsString   := FieldByName('ADARZVAL').AsString;
        qrTemp.ExecSql;
      end;
{$ENDIF}
    finally
      EnableControls;
    end;
  end;
end;

procedure TFrmESaleProp.InitCustType;
begin
  IsSpecCust := IsSpecialCustomer(FDM_IntSales.qrEIntOffer.FieldByName('CUSTNO').AsString, DistRial, DistQty, DistRow);
  IsOfferCust := IsOfferCustomer(FDM_IntSales.qrEIntOffer.FieldByName('CUSTNO').AsString);
  lbSecCust.Visible := (IsSpecCust > 0);
{  if IsOfferCust then
  begin
    lbSecCust.Visible := True;
    lbSecCust.Caption := '„‘ —Ì ÊÌéÂ  ⁄œ«œÌ';
  end
  else
  begin
    lbSecCust.Visible := False;
    lbSecCust.Caption := '„‘ —Ì ÊÌéÂ';
  end;}

  if Pos('.', edGrossPrice.Text) > 0 then
    edGrossPrice.Text := Copy(edGrossPrice.Text, 1, Pos('.', edGrossPrice.Text) - 1);
end;

procedure TFrmESaleProp.SpeedButton1Click(Sender: TObject);
var
  Code, DrCode: string;
begin
  if HelpVisitor(Code, '', FindCustTypeCode(FDM_IntSales.qrEIntOffer.FieldByName('CUSTNO').AsString, DrCode)) then
  begin
    dbedVCode.SetFocus;
    with FDM_IntSales.qrEIntOffer do
    begin
      Edit;
      FieldByName('ORD_DELV_NO').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmESaleProp.dbedVCodeExit(Sender: TObject);
begin  if FDM_IntSales.qrEIntOffer.FieldByName('ORD_DELV_NO').AsString = '' then Exit;
  if GetVisitorName(FDM_IntSales.qrEIntOffer.FieldByName('ORD_DELV_NO').AsString) = '' then
  begin
    MbError(InvalidCode);
    dbedVCode.SetFocus;
    Exit;
  end;
  if not IsRelateCustType(FDM_IntSales.qrEIntOffer.FieldByName('CUSTNO').AsString, FDM_IntSales.qrEIntOffer.FieldByName('ORD_DELV_NO').AsString) then
  begin
    MbError('òœ ÊÌ“Ì Ê— »« „‘ —Ì „— »ÿ ‰Ì” ');
    dbedVCode.SetFocus;
    Exit;
  end;
end;

procedure TFrmESaleProp.dbedDriverExit(Sender: TObject);
begin
  if FDM_IntSales.qrEIntOffer.FieldByName('PRJCODE').AsString = '' then Exit;
  if GetDriverName(FDM_IntSales.qrEIntOffer.FieldByName('PRJCODE').AsString) = '' then
  begin
    MbError(InvalidCode);
    dbedDriver.SetFocus;
  end;
end;

procedure TFrmESaleProp.SpeedButton2Click(Sender: TObject);
var
  Code: string;
begin
  if HelpDriver(Code) then
  begin
    dbedDriver.SetFocus;
    with FDM_IntSales.qrEIntOffer do
    begin                                                                                                   
      Edit;
      FieldByName('PRJCODE').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmESaleProp.dbedOFCommExit(Sender: TObject);
var
  DrName: String;
  CW, CV: Double;
begin
  if FDM_IntSales.qrEIntOffer.FieldByName('OFCOMM').AsString = '' then Exit;
  if GetTransportName(FDM_IntSales.qrEIntOffer.FieldByName('OFCOMM').AsString, '0', DrName, CW, CV) = '' then
  begin
    MbError(InvalidCode);
    dbedOFComm.SetFocus;
  end;
end;

procedure TFrmESaleProp.SpeedButton3Click(Sender: TObject);
var
  Code: string;
begin
  if HelpTransport(Code) then
  begin
    dbedOFComm.SetFocus;
    with FDM_IntSales.qrEIntOffer do
    begin
      Edit;
      FieldByName('OFCOMM').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmESaleProp.qrEIntOfferDetBeforeScroll(DataSet: TDataSet);
begin
  if not DelFlag then
    Exit;
(*  if IsRowDuplicate(dbgrOffer, ['GDS_CODE','PACK_TYPE']) then
  begin
    MbError(RepeatedError);
    dbgrOffer.SelectedIndex := 0;
    Abort;
  end; *)
end;

procedure TFrmESaleProp.qrEIntOfferDetAfterDelete(DataSet: TDataSet);
begin
  DelFlag := True;
end;

procedure TFrmESaleProp.bbPreviewClick(Sender: TObject);
var
  I: Integer;
  TmpQr: TQuery;
  PrintFlag : Boolean;
begin
  TmpQr := TQuery.Create(Application);
  try
    With TmpQr, SQl do
    begin
      DataBaseName := DM_DataBase.dbsMain.DataBaseName;
      Close;
      Clear;
      Sql.Add('SELECT * FROM PRINTCOUNT_T        ');
      Sql.Add(' WHERE OFNUM = :OFNUM   ');
      Sql.Add('   AND OFYEAR = :OFYEAR');
      ParamByName('OFNUM').AsString := FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
      ParamByName('OFYEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
      Open;
      PrintFlag := TmpQr.IsEmpty;
    end;
  finally
    TmpQr.Free;
  end;

{ $IFNDEF PABIDI}
  if not ((MabnaInfo.IsGlobalAdmin) or (MabnaInfo.IsAdmin))then
  if not PrintFlag then
  begin
    MbError('«Ì‰ ›—„ ﬁ»·« Å—Ì‰  ‘œÂ «”  Ê «„ò«‰ Å—Ì‰  „Ãœœ ÊÃÊœ ‰œ«—œ.');
    ComboBox1.SetFocus;
    Exit;
  end;
{ $ENDIF}

  SumFactor := 0;
  with qrCompany do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM COMPANY_T');
    Open;
    ppLabel10.Text := FieldByName('CO_NAME').AsString;
    ppLabel168.Text := FieldByName('CO_NAME').AsString;
    ppLabel126.Text := FieldByName('CO_NAME').AsString;
    ppLabel128.Text := FieldByName('CO_ADDR').AsString;
    ppLabel130.Text := FieldByName('CO_ECODE').AsString;
    ppLabel131.Text := FieldByName('CO_NCODE').AsString;
    ppLabel127.Text := FieldByName('CO_PCODE').AsString;
    ppLabel129.Text := FieldByName('CO_TEL').AsString;
    ppLabel316.Text := edOfferDoc.Text;
    ppLabel318.Text := edHavale.Text;

//    ppLabel10.Text := FieldByName('CO_NAME').AsString;
//    ppLabel126.Text := FieldByName('CO_NAME').AsString;
    ppLabel190.Text := FieldByName('CO_ADDR').AsString;
    ppLabel192.Text := FieldByName('CO_ECODE').AsString;
    ppLabel193.Text := FieldByName('CO_NCODE').AsString;
    ppLabel189.Text := FieldByName('CO_PCODE').AsString;
    ppLabel191.Text := FieldByName('CO_TEL').AsString;
    Open;
  end;
  for I := 0 to ComponentCount - 1 do
    if Components[I].Tag = 1 then
      TppPrintable(Components[I]).Visible := (ComboBox1.ItemIndex = 1);
  ppReport3.PrinterSetup.Copies := ComboBox2.ItemIndex +1;
  pplbStringPrice.Text := MbStringNumber(Round(StrToFloat(StringReplace(edGrossPrice.Text, ',' , '' ,[rfReplaceAll])))) + ' ' + '—Ì«·';
  ppLabel224.Text := MbStringNumber(Round(StrToFloat(StringReplace(edGrossPrice.Text, ',' , '' ,[rfReplaceAll])))) + ' ' + '—Ì«·';
{$IFDEF AMANI}
  ppLabel225.Visible := False;
  ppLabel232.Visible := False;
  ppLabel233.Visible := False;
  ppLabel234.Visible := False;
  ppLabel224.Visible := False;
  ppShape14.Visible := False;
  ppLine103.Visible := False;
  ppLine104.Visible := False;
  ppLine105.Visible := False;
  ppLabel226.Visible := False;
  ppLabel229.Visible := False;
  ppLabel227.Visible := False;
  ppLabel228.Visible := False;
  ppLabel231.Visible := False;

  pplbDisDesc1.Visible := False;
  pplbDisDesc2.Visible := False;
  pplbDisDesc3.Visible := False;
  pplbDisDesc4.Visible := False;
  ppLabel171.Visible := False;
  ppLabel188.Visible := False;
  ppLine74.Visible := False;
  ppLine68.Visible := False;
  ppLine67.Visible := False;
  ppLine69.Visible := False;
  ppLine70.Visible := False;
  ppLine71.Visible := False;
  ppLabel157.Visible := False;
  ppLabel164.Visible := False;
  ppLabel162.Visible := False;
  ppLabel163.Visible := False;
  ppLabel166.Visible := False;
{$ENDIF}
{$IFDEF AHMADTEA}
   ppReport5.Print;
{$ELSE}
  if ComboBox1.ItemIndex = 2 then
   ppReport4.Print
  else
   ppReport3.Print
{$ENDIF}


end;

procedure TFrmESaleProp.ppVariable1Print(Sender: TObject);
begin
  ppVariable1.Value := StrToFloatDef(ppDBText39.Text,0) * StrToFloatDef(ppDBText41.Text,0);
  SumFactor := SumFactor+  ppVariable1.Value;
end;

procedure TFrmESaleProp.ppDBText58GetText(Sender: TObject;
  var Text: String);
begin
//  Text := GetStateName(FDM_IntSales.qrEIntOffer.FieldByName('CUST_STATE').AsString);
end;

procedure TFrmESaleProp.ppDBText55GetText(Sender: TObject;
  var Text: String);
begin
//  Text := GetCityName(FDM_IntSales.qrEIntOffer.FieldByName('CUST_CTCODE').AsString);
end;

procedure TFrmESaleProp.ppVariable2Print(Sender: TObject);
begin
  ppVariable2.Value := SetEditText(SumFactor);//SetEditText(StrToFloatDef(ppdbCalcQty.Text, 0) * StrToFloatDef(ppDbCalcPrice.Text, 0));
end;

procedure TFrmESaleProp.pplbDisDesc1GetText(Sender: TObject;
  var Text: String);
var
  NetPrc, CashDis: Double;
begin
  Text := ' Œ›Ì›Ì«  „ÿ«»ﬁ ¬ÌÌ‰ ‰«„Â Â« Ê œ” Ê—«·⁄„· Â«Ì œ«Œ·Ì ‘—ò  Å—œ«Œ  „Ì ê—œœ';
  Exit;
  NetPrc := GetNetPriceWithException(FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString, '(0, 2)', IntToStr(System_YY));
  NetPrc := NetPrc - GetValidityVal(FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString, ' = 0', FDM_IntSales.qrEIntOffer.FieldByName('USERID').AsString);
  if NetPrc = 0 then
  begin
    Text := '';
    pplbDisDesc2.Text := '';
    pplbDisDesc3.Text := '';
    pplbDisDesc4.Text := '';
  end
  else
  begin
    CashDis := Round((NetPrc * GetDisqountedCash(FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString, 1)) / 100);
    Text := 'œ— ’Ê—  Å—œ«Œ  ‰ﬁœ Å«Ì »«—';
    pplbDisDesc2.Text := ' „»·€ ' + IntToStr(GetDisqountedCash(FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString, 1)) + ' œ—’œ ' + SetCammaEdit(CashDis) + ' —Ì«· ' + ' ò”—  ';
    pplbDisDesc3.Text := ' Ê „»·€ ' + SetCammaEdit(StrToFloatDef(StringReplace(edNetPrice.Text, ',', '', [rfReplaceAll]), 0) - CashDis) + ' —Ì«· ';
    pplbDisDesc4.Text := 'ﬁ«»· Å—œ«Œ  „Ì »«‘œ';
  end;

end;

procedure TFrmESaleProp.ppLabel164GetText(Sender: TObject;
  var Text: String);
begin
  Text := SetEditText(GetValidityVal(FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString, ' = 0', FDM_IntSales.qrEIntOffer.FieldByName('USERID').AsString));
end;

procedure TFrmESaleProp.ppLabel165GetText(Sender: TObject;
  var Text: String);
begin
  Text :=  SetEditText(GetValidityVal(FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString, ' <> 0', FDM_IntSales.qrEIntOffer.FieldByName('USERID').AsString))
end;

procedure TFrmESaleProp.ppLabel166GetText(Sender: TObject;
  var Text: String);
begin
  Text := edNetPrice.Text;
end;

procedure TFrmESaleProp.InsertToPreFact(OfNum: String);
begin
  try
    with qrTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO PREFACTTIT_T');
      SQL.Add('(OFNUM, OFDATE, OFVALDTE, OFDLVDTE, OFCOMM, OFDESC, OFSTAT,');
      SQL.Add('  CUSTNO, PRJCODE, CUST_REQNO, CUST_REQDATE, USERID, USERDATE, SECTAFSILY_CODE,');
      SQL.Add('  TAFSILY_YEAR, ORD_DELV_NO, OFDLVPLACE, ORDADDRESS, M_OFNUM, STK_CODE)');
      SQL.Add('SELECT OFNUM, OFDATE, OFVALDTE, OFDLVDTE, OFCOMM, OFDESC, OFSTAT,');
      SQL.Add('  CUSTNO, PRJCODE, CUST_REQNO, CUST_REQDATE, USERID, USERDATE, SECTAFSILY_CODE,');
      SQL.Add('  TAFSILY_YEAR, ORD_DELV_NO, OFDLVPLACE, ORDADDRESS, ' + QuotedStr(OfNum) + ', STK_CODE');
      SQL.Add('FROM OFFERTIT_T');
      SQL.Add('WHERE OFNUM = :OFNUM');
      SQL.Add('  AND TAFSILY_YEAR = :YEAR');
      SQL.Add('  AND USERID = :FUSERID');
      ParamByName('OFNUM').AsString := OfNum;
      ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
      ParamByName('FUSERID').AsString := FDM_IntSales.qrEIntOffer.FieldByName('USERID').AsString;
      ExecSQL;
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO PREFACTDTL_T');
      SQL.Add('(OFNUM, OFSEQ, CU_CODE, GDS_CODE, OFQTY, OFPRICE, ABATE, PACKVALUE,');
      SQL.Add('  PACK_TYPE, GDS_INFO, M_OFNUM)');
      SQL.Add('SELECT OFNUM, OFSEQ, CU_CODE, GDS_CODE, OFQTY, OFPRICE, ABATE, PACKVALUE,');
      SQL.Add('  PACK_TYPE, GDS_INFO, ' + QuotedStr(OfNum));
      SQL.Add('FROM OFFERDTL_T');
      SQL.Add('WHERE OFNUM = :OFNUM');
      SQL.Add('  AND CU_CODE = :YEAR');
      SQL.Add('  AND GDS_INFO = :FUSERID');
      ParamByName('OFNUM').AsString := OfNum;
      ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
      ParamByName('FUSERID').AsString := FDM_IntSales.qrEIntOffer.FieldByName('USERID').AsString;
      ExecSQL;
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO PREVALIDITY_T');
      SQL.Add(' (ADCODE, ADNUM1, ADNUM2, ADNUM3, ADNUM4, ADNUM5, ADVAL, ADARZVAL,');
      SQL.Add('  PART)');
      SQL.Add('SELECT ADCODE, ADNUM1, ADNUM2, ADNUM3, ADNUM4, ADNUM5, ADVAL, ADARZVAL,');
      SQL.Add('  PART');
      SQL.Add('FROM VALIDITY_T');
      SQL.Add('WHERE ADNUM2 = :OFNUM');
      SQL.Add('  AND ADNUM3 = :YEAR');
      SQL.Add('  AND ADNUM1 = :FUSERID');
      ParamByName('OFNUM').AsString := OfNum;
      ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
      ParamByName('FUSERID').AsString := FDM_IntSales.qrEIntOffer.FieldByName('USERID').AsString;
      ExecSQL;
    end;
  except
  end;
end;

procedure TFrmESaleProp.dbedReqDteExit(Sender: TObject);
begin
{
  if FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQDATE').AsString >
     FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString then
  begin
    MbError(InvalidDate);
    dbedReqDte.SetFocus;
    Exit;
  end;
}
end;

procedure TFrmESaleProp.ppReport3PrintingComplete(Sender: TObject);
begin
  SumFactor := 0;
  if not ((MabnaInfo.IsGlobalAdmin) or (MabnaInfo.IsAdmin))then
    InsertPrintInfo;
//  ppHeaderBand3.Height := ppHeaderBand3.Height + 0.1;
(*                                0
  PrintCount := PrintCount +1;
  if PrintCount > 10 then
  begin
    ppHeaderBand3.Height := ppHeaderBand3.Height + 1;
  end;

  if PrintCount > 20 then
  begin
    PrintCount := 0;
    ppHeaderBand3.Height := 102;
  end;
*)  
end;

procedure TFrmESaleProp.ppReport3BeforePrint(Sender: TObject);
begin
  SumFactor := 0;
end;

procedure TFrmESaleProp.qrEIntOfferAfterScroll(DataSet: TDataSet);
begin
  Panel3.Enabled := True;
  dbgrOffer.Enabled := True;
  dbgrValidity.Enabled := True;

  dbgrOffer.ReadOnly := False;
  dbgrValidity.ReadOnly := False;

  DBRadioGroup1.Enabled := True;
  if DataSet.FieldByName('SECTAFSILY_CODE').AsString <> '' then
  begin
    Panel3.Enabled := False;
//    dbgrOffer.Enabled := False;
//    dbgrValidity.Enabled := False;
    dbgrOffer.ReadOnly := True;
    dbgrValidity.ReadOnly := True;

  end;
  edBranchName.Text := GetBranchName(FDM_IntSales.qrEIntOffer.FieldByName('USERID').AsString);
end;

procedure TFrmESaleProp.AddCodeSetText(Sender: TField; const Text: String);
begin
  if Text = ' Œ›Ì› —Ì«·Ì —ÊÌ Ã„⁄ ›«ò Ê—'then
    Sender.AsString := '0';
  if Text = ' Œ›Ì› —Ì«·Ì —ÊÌ Ã„⁄ ›«ò Ê— 'then
    Sender.AsString := '-1';
end;

procedure TFrmESaleProp.AddCodeGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString = '0' then
    Text := ' Œ›Ì› —Ì«·Ì —ÊÌ Ã„⁄ ›«ò Ê—';
  if Sender.AsString = '-1' then
    Text := ' Œ›Ì› —Ì«·Ì —ÊÌ Ã„⁄ ›«ò Ê— ';
end;

procedure TFrmESaleProp.ppDBText47GetText(Sender: TObject;
  var Text: String);
begin
//  Text := GetDocMCodeFromSerial(Text);
  Text := IntToStr(Round(StrToFloat(StringReplace(edGrossPrice.Text, ',' , '' ,[rfReplaceAll]))));
end;

procedure TFrmESaleProp.N1Click(Sender: TObject);
begin
  dbgrOffer.DataSource.DataSet.Delete;
end;

procedure TFrmESaleProp.ppDBText42GetText(Sender: TObject;
  var Text: String);
begin
  Text := '0';
end;

procedure TFrmESaleProp.qrEIntOfferDetAfterScroll(DataSet: TDataSet);
begin
  if DataSet.FieldByName('PACK_TYPE').AsInteger = 9 then
    dbgrOffer.Columns[5].ReadOnly := True
  else
    dbgrOffer.Columns[5].ReadOnly := False;
end;

procedure TFrmESaleProp.DelOffTit;
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('DELETE FROM OFFERTIT_T');
    Add('WHERE OFNUM = :OFNUM');
    Add('  AND TAFSILY_YEAR = :YEAR');
    ParamByName('OFNUM').AsString :=
        FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
    ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
    SQL := MbSqlConvert(SQL);
    ExecSql;
  end;
end;

procedure TFrmESaleProp.InsOffTit;
begin
  with FDM_IntSales.qrETemp, SQL do
  begin
    Clear;
    Add('INSERT INTO OFFERTIT_T');
    Add('(OFNUM, OFDATE, OFVALDTE, OFDLVDTE, OFCOMM, OFDESC, OFSTAT,');
    Add(' CUSTNO, PRJCODE, CUST_REQNO, CUST_REQDATE, USERID, USERDATE, SECTAFSILY_CODE,');
    Add(' TAFSILY_YEAR, ORD_DELV_NO, OFDLVPLACE, ORDADDRESS, STK_CODE, C_CODE, OFDISTVAL,OFDISTVAL1,ONLINESALE_NO)');
    Add('VALUES');
    Add('(:OFNUM, :OFDATE, :OFVALDTE, :OFDLVDTE, :OFCOMM, :OFDESC, :OFSTAT,');
    Add(' :CUSTNO, :PRJCODE, :CUST_REQNO, :CUST_REQDATE, :USERID, :USERDATE, :SECTAFSILY_CODE,');
    Add(' :TAFSILY_YEAR, :ORD_DELV_NO, :OFDLVPLACE, :ORDADDRESS, :STK_CODE, :C_CODE, :OFDISTVAL,:OFDISTVAL1,:ONLINESALE_NO)');
    ParamByName('OFNUM').AsString := FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
    ParamByName('OFDATE').AsString := FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString;
    ParamByName('OFVALDTE').AsString := FDM_IntSales.qrEIntOffer.FieldByName('OFVALDTE').AsString;
    ParamByName('OFDLVDTE').AsString := FDM_IntSales.qrEIntOffer.FieldByName('OFDLVDTE').AsString;
    ParamByName('OFCOMM').AsString := FDM_IntSales.qrEIntOffer.FieldByName('OFCOMM').AsString;
    ParamByName('OFDESC').AsString := FDM_IntSales.qrEIntOffer.FieldByName('OFDESC').AsString;
    ParamByName('OFSTAT').AsString := '2';
    ParamByName('CUSTNO').AsString := FDM_IntSales.qrEIntOffer.FieldByName('CUSTNO').AsString;
    ParamByName('PRJCODE').AsString := FDM_IntSales.qrEIntOffer.FieldByName('PRJCODE').AsString;
    ParamByName('CUST_REQNO').AsString := FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQNO').AsString;
    ParamByName('OFDISTVAL').AsString := Edit3.Text;
    ParamByName('OFDISTVAL1').AsString := FDM_IntSales.qrEIntOffer.FieldByName('OFDISTVAL1').AsString;
    ParamByName('ONLINESALE_NO').AsString := FDM_IntSales.qrEIntOffer.FieldByName('ONLINESALE_NO').AsString;

    if cbAmani.Checked then
      ParamByName('CUST_REQDATE').AsString := '1'
    else
      ParamByName('CUST_REQDATE').AsString := FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQDATE').AsString;

{$IFDEF AMANI}
    ParamByName('CUST_REQDATE').AsString := '1';
{$ENDIF}


    ParamByName('USERID').AsString := BranchCode;
    ParamByName('USERDATE').AsString := '';
    ParamByName('SECTAFSILY_CODE').AsString := FDM_IntSales.qrEIntOffer.FieldByName('SECTAFSILY_CODE').AsString;
    ParamByName('TAFSILY_YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
    ParamByName('ORD_DELV_NO').AsString := FDM_IntSales.qrEIntOffer.FieldByName('ORD_DELV_NO').AsString;
    ParamByName('OFDLVPLACE').AsString := FDM_IntSales.qrEIntOffer.FieldByName('OFDLVPLACE').AsString;
    ParamByName('ORDADDRESS').AsString := FDM_IntSales.qrEIntOffer.FieldByName('ORDADDRESS').AsString;
    ParamByName('STK_CODE').AsString := FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsString;
    ParamByName('C_CODE').AsString := FDM_IntSales.qrEIntOffer.FieldByName('C_CODE').AsString;
    SQL := MbSqlConvert(SQL);
    ExecSql;
  end;
end;

procedure TFrmESaleProp.TempTableForQtyDisqount;
var
  DisQty: Integer;
  InGdsCode: String;
begin
  with qrTempTable do
  begin
    Close;
    SQL.Clear;
    MyDropTable('OFFER' + MabnaInfo.PrivateID);
    SQL.Add('CREATE TABLE OFFER' + MabnaInfo.PrivateID + ' AS');
    SQL.Add('SELECT * FROM OFFERDTL_T');
    SQL.Add('WHERE 1 = 2');
    ExecSQL;
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO OFFER' + MabnaInfo.PrivateID);
    SQL.Add('(OFNUM, OFSEQ, CU_CODE, GDS_CODE, OFQTY, OFPRICE, ABATE, PACKVALUE,');
    SQL.Add(' PACK_TYPE, GDS_INFO)');
    SQL.Add('VALUES');
    SQL.Add('(:OFNUM, :OFSEQ, :CU_CODE, :GDS_CODE, :OFQTY, :OFPRICE, :ABATE, :PACKVALUE,');
    SQL.Add(' :PACK_TYPE, :GDS_INFO)');
    dbgrOffer.DataSource.DataSet.DisableControls;
    try
      dbgrOffer.DataSource.DataSet.First;
      while not dbgrOffer.DataSource.DataSet.Eof do
      begin
        if dbgrOffer.DataSource.DataSet.FieldByName('PACK_TYPE').AsString <> '9' then
        begin
          ParamByName('OFNUM').AsString := FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
          ParamByName('OFSEQ').AsString := dbgrOffer.DataSource.DataSet.FieldByName('OFSEQ').AsString;
          ParamByName('CU_CODE').AsString := dbgrOffer.DataSource.DataSet.FieldByName('CU_CODE').AsString;
          ParamByName('GDS_CODE').AsString := dbgrOffer.DataSource.DataSet.FieldByName('GDS_CODE').AsString;
          ParamByName('OFQTY').AsString := dbgrOffer.DataSource.DataSet.FieldByName('OFQTY').AsString;
          ParamByName('OFPRICE').AsString := dbgrOffer.DataSource.DataSet.FieldByName('OFPRICE').AsString;
          ParamByName('ABATE').AsString := dbgrOffer.DataSource.DataSet.FieldByName('ABATE').AsString;
          ParamByName('PACKVALUE').AsString := dbgrOffer.DataSource.DataSet.FieldByName('PACKVALUE').AsString;
          ParamByName('PACK_TYPE').AsString := dbgrOffer.DataSource.DataSet.FieldByName('PACK_TYPE').AsString;
          ParamByName('GDS_INFO').AsString := dbgrOffer.DataSource.DataSet.FieldByName('GDS_INFO').AsString;
          ExecSQL;
        end;
        dbgrOffer.DataSource.DataSet.Next;
      end;
    finally
      dbgrOffer.DataSource.DataSet.EnableControls;
    end;
    Close;
    SQL.Clear;
    SQL.Add('SELECT GD_DIS_GRP, SUM(NVL(OFQTY, 0))OFQTY FROM GOODSDICOUNT_QTY_T A, OFFER' + MabnaInfo.PrivateID);
    SQL.Add('WHERE GD_GCODE = GDS_CODE');
    SQL.Add('  AND GD_DATE <= :GDDATE');
    SQL.Add('  AND GD_TODATE >= :GDDATE');
    SQL.Add('  AND GD_QTY = (SELECT MAX(GD_QTY) FROM GOODSDICOUNT_QTY_T B');
    SQL.Add('                WHERE A.GD_DIS_GRP = B.GD_DIS_GRP');
    SQL.Add('                  AND GD_DATE <= :GDDATE');
    SQL.Add('                  AND GD_TODATE >= :GDDATE)');
    SQL.Add('GROUP BY GD_DIS_GRP');
    ParamByName('GDDATE').AsString := FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString;
    Open;
    First;
    while not Eof do
    begin
      if GetQtyDiscountDistinct(FieldByName('GD_DIS_GRP').AsString, FieldByName('OFQTY').AsInteger, FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString, DisQty) then
      begin
        InGdsCode := GetGdsCodeFromQtyDiscount(FieldByName('GD_DIS_GRP').AsString);
        dbgrOffer.DataSource.DataSet.Append;
        dbgrOffer.DataSource.DataSet.FieldByName('GDS_CODE').AsString := InGdsCode;
        dbgrOffer.DataSource.DataSet.Edit;
        dbgrOffer.DataSource.DataSet.FieldByName('OFQTY').AsInteger := DisQty;
        dbgrOffer.DataSource.DataSet.Edit;
        dbgrOffer.DataSource.DataSet.FieldByName('PACK_TYPE').AsInteger := 9;
        dbgrOffer.DataSource.DataSet.Edit;
        dbgrOffer.DataSource.DataSet.FieldByName('OFPRICE').AsFloat:= 0;
      end;
      Next;
    end;
  end;
end;

procedure TFrmESaleProp.ppLabel171GetText(Sender: TObject;
  var Text: String);
var
  NetPrc, CashDis: Double;
begin
{$IFDEF ABIDI}
    Text := '';
    ppLabel188.Text := '';
    Exit;
{$EndIf}
  if FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsInteger < 921211 then
  begin
    Text := '';
    ppLabel188.Text := '';
    Exit;
  end;
  NetPrc := GetNetPriceWithException(FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString, '(0, 2)', IntToStr(System_YY));
  NetPrc := NetPrc - GetValidityVal(FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString, ' = 0', FDM_IntSales.qrEIntOffer.FieldByName('USERID').AsString);
  if NetPrc = 0 then
  begin
    Text := '';
    ppLabel188.Text;
  end
  else
  begin
    CashDis := Round((NetPrc * GetDisqountedCash(FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString, 2)) / 100);
    Text := 'çò —Ê“ ' + IntToStr(GetDisqountedCash(FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString, 2)) + ' œ—’œ „»·€ ' +  SetCammaEdit(StrToFloatDef(StringReplace(edNetPrice.Text, ',', '', [rfReplaceAll]), 0) - CashDis) + ' —Ì«· ';
    CashDis := Round((NetPrc * GetDisqountedCash(FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString, 3)) / 100);
    ppLabel188.Text := ' çò  « 7 —Ê“ ' + IntToStr(GetDisqountedCash(FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString, 3)) + ' œ—’œ „·»€ ' + SetCammaEdit(StrToFloatDef(StringReplace(edNetPrice.Text, ',', '', [rfReplaceAll]), 0) - CashDis) + ' —Ì«· ';
  end;

end;

procedure TFrmESaleProp.dbedOFNumKeyPress(Sender: TObject; var Key: Char);
begin
  if (not Ord(Key) in [48..57]) or
     (Key = ' ') then
  begin
    MbError('‘„«—Â Ê«—œ ‘œÂ ’ÕÌÕ ‰„Ì »«‘œ');
    Key := chr(0);
    dbedOFNum.SetFocus;
    Exit;
  end;
end;

procedure TFrmESaleProp.SpeedButton4Click(Sender: TObject);
var
  Code: String;
begin
  if HelpOtherAdr(Code, FDM_IntSales.qrEIntOffer.FieldByName('CUSTNO').AsString, FDM_IntSales.qrEIntOffer.FieldByName('CF_CUSTNAME').AsString) then
  begin
    dbedCustAdr.SetFocus;
    with FDM_IntSales.qrEIntOffer do
    begin
      Edit;
      FieldByName('ORDADDRESS').AsString:= Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

function TFrmESaleProp.ControlRealQTY: Boolean;
begin


  Result := True;
  with FDM_IntSales.qrEIntOfferDet do
  begin
      First;
      while not Eof do
      begin

        if FieldByName('OFQTY').AsInteger > FieldByName('OF_REALQTY').AsInteger then

//        if FieldByName('OFQTY').AsInteger > GetRealQty(FieldByName('GDS_CODE').AsString, FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString,
//                                                       FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString, FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsString) then
        begin
          Result := False;
          Exit;
//          Last;
        end;

        SelectValidQty(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString,
                       FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsString, dbedOFDte.Text);
        if (EndQty  < FDM_IntSales.qrEIntOfferDet.FieldByName('OFQTY').AsFloat ) then
        begin
          Result := False;
//          MbError('»Â œ·Ì· „ÊÃÊœÌ „‰›Ì «„ò«‰ À»  ÕÊ«·Â ÊÃÊœ ‰œ«—œ.');
          Exit;
        end;


        Next;
      end;
//    finally
//      EnableControls;
//    end;
  end;
end;

procedure TFrmESaleProp.dbgrOfferDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if FDM_IntSales.qrEIntOfferDet.FieldByName('OFQTY').AsInteger <= FDM_IntSales.qrEIntOfferDet.FieldByName('OF_REALQTY').AsInteger then
{  if FDM_IntSales.qrEIntOfferDet.FieldByName('OFQTY').AsInteger <=
     GetRealQty(FDM_IntSales.qrEIntOfferDet.FieldByName('GDS_CODE').AsString, FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString,
                FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString, FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsString) then}
     dbgrOffer.Canvas.Brush.Color := $00BAD7FE;
  dbgrOffer.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrmESaleProp.cbAmaniClick(Sender: TObject);
begin
  btnPost.Enabled := True;
end;

procedure TFrmESaleProp.chbRAmaniClick(Sender: TObject);
begin
  OfNumAmani := FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
  OfYearAmani := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
  FM := MbFM.MakeFM(TfrmESaleProp,MainForm.acESaleProp, 0, 'ÅÌ‘‰Â«œ ›—Ê‘' , True, TDM_IntSales);
  MbFM.GetFM(FM).Show;
  TPanel(MbFM.GetFM(FM).FindComponent('Panel1')).Color := clSilver;
end;

procedure TFrmESaleProp.Panel1Exit(Sender: TObject);
begin
  if FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString <> '' then
    if Copy(FDM_IntSales.qrEIntOffer.FieldByName('OFDATE').AsString, 1, 4) <> IntToStr(System_YY) then
    begin
      MbError('”«· Ê—Êœ »Â ”Ì” „ »« ”«· Ã«—Ì „ÿ«»ﬁ  ‰œ«—œ');
      Exit;
    end;
  if FDM_IntSales.qrEIntOffer.FieldByName('SECTAFSILY_CODE').AsString <> '' then
  begin
//    MbError('»—«Ì «Ì‰ ÅÌ‘ ›«ò Ê— ÕÊ«·Â ›—Ê‘ ’«œ— ‘œÂ Ê «„ò«‰  €ÌÌ— ÊÃÊœ ‰œ«—œ');
    Panel3.Enabled := False;
//    dbgrOffer.Enabled := False;
//    dbgrValidity.Enabled := False;
    dbgrOffer.ReadOnly := True;
    dbgrValidity.ReadOnly := True;

    DBRadioGroup1.Enabled := False;
{$IFDEF TESTABIDI}
    cbAmani.Enabled := False;
    chbRAmani.Visible := (FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQDATE').AsString = '1');
{$ENDIF}
  end
  else
  begin
    Panel3.Enabled := True;
    dbgrOffer.Enabled := True;
    dbgrOffer.ReadOnly := False;
    dbgrValidity.ReadOnly := False;
    dbgrValidity.Enabled := True;
    DBRadioGroup1.Enabled := True;
{$IFDEF TESTABIDI}
    cbAmani.Enabled := True;
    chbRAmani.Visible := False;
{$ENDIF}
  end;
end;

procedure TFrmESaleProp.ControlEnable;
begin
  if FDM_IntSales.qrEIntOffer.FieldByName('SECTAFSILY_CODE').AsString <> '' then
  begin
//    MbError('»—«Ì «Ì‰ ÅÌ‘ ›«ò Ê— ÕÊ«·Â ›—Ê‘ ’«œ— ‘œÂ Ê «„ò«‰  €ÌÌ— ÊÃÊœ ‰œ«—œ');
    Panel3.Enabled := False;
    dbgrOffer.ReadOnly := True;
    dbgrValidity.ReadOnly := True;
//    dbgrOffer.Enabled := False;
//    dbgrValidity.Enabled := False;
    DBRadioGroup1.Enabled := False;
{$IFDEF TESTABIDI}
    cbAmani.Enabled := False;
    chbRAmani.Visible := (FDM_IntSales.qrEIntOffer.FieldByName('CUST_REQDATE').AsString = '1');
{$ENDIF}
  end
  else
  begin
    Panel3.Enabled := True;
    dbgrOffer.Enabled := True;
    dbgrValidity.Enabled := True;
    dbgrOffer.ReadOnly := False;
    dbgrValidity.ReadOnly := False;
    DBRadioGroup1.Enabled := True;
{$IFDEF TESTABIDI}
    cbAmani.Enabled := True;
    chbRAmani.Visible := False;
{$ENDIF}
  end;
end;

procedure TFrmESaleProp.DBEdit5Exit(Sender: TObject);
begin
  if FDM_IntSales.qrEIntOffer.FieldByName('OFVALDTE').AsString = '' then Exit; 
  if not MsDateIsValid1(FDM_IntSales.qrEIntOffer.FieldByName('OFVALDTE').AsString, False) then
  begin
    MbMessage(InvalidDate, mtError, [mbOk], mbOk);
    DBEdit5.SetFocus;
    DBEdit5.Text := MbUserDate;
    DBEdit5.SelStart := 0;
    Exit;
  end;
end;

procedure TFrmESaleProp.sbLostSalesClick(Sender: TObject);
begin
  sbSale.Down := IsEmptyTit;
  if IsEmptyTit then Exit;
  if not ValidPerFact(FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString) then
    InsertToPreFact(FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString)
  else
    sbSale.Down := True;
end;

function TFrmESaleProp.ValidPerFact(OfNum: String): Boolean;
begin
  with qrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT OFNUM FROM PREFACTTIT_T');
    SQL.Add('WHERE OFNUM = :OFNUM');
    SQL.Add('  AND TAFSILY_YEAR = :YEAR');
    ParamByName('OFNUM').AsString := OfNum;
    ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
    Open;
    Result := not IsEmpty;
  end;
end;

procedure TFrmESaleProp.SetOfDtlRowSeq(DoSeq: Boolean);
var
  I: Integer;
  TotVal: Double;
begin
  with FDM_IntSales.qrEIntOfferDet do
  begin
    TotVal := 0;
    I := 1;
    First;
//    DisableControls;
    try
      while not Eof do
      begin
        if DoSeq then
        begin
          Edit;
          FieldByName('OFSEQ').AsInteger := I;
          I := I + 1;
        end;
        TotVal := TotVal + FDM_IntSales.qrEIntOfferDet.FieldByName('TOTCOST').AsFloat;
        Next;
      end;
    finally
//      EnableControls
    end;
  end;
  edGrossPrice.Text := FloatToStr(TotVal);
end;

procedure TFrmESaleProp.InsertPrintInfo;
var
  TmpQr: TQuery;
begin
  TmpQr := TQuery.Create(Application);
  try
    With TmpQr, SQl do
    begin
      DataBaseName := DM_DataBase.dbsMain.DataBaseName;
      Close;
      Clear;
      Sql.Add('INSERT INTO PRINTCOUNT_T        ');
      Sql.Add('   (OFNUM, OFYEAR)  ');
      Sql.Add('VALUES                                  ');
      Sql.Add('   (:OFNUM, :OFYEAR) ');
      ParamByName('OFNUM').AsString := FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString;
      ParamByName('OFYEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
      ExecSql;
    end;
  finally
    TmpQr.Free;
  end;
end;

procedure TFrmESaleProp.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FormKeyDownHandle(FrmESaleProp, Key, Shift);
  if Key = VK_F3 then
    dbgrValidity.SetFocus;
  if Key = VK_F4 then
    dbgrOffer.SetFocus;
  if Key = VK_F5 then
    dbedCustNO.SetFocus;
  if Key = VK_F6 then
    dbedCustNO.SetFocus;
end;

procedure TFrmESaleProp.ppLabel236GetText(Sender: TObject;
  var Text: String);
begin
  Text := Edit1.Text;
end;

procedure TFrmESaleProp.ppLabel238GetText(Sender: TObject;
  var Text: String);
begin
  Text := Edit2.Text;
end;

procedure TFrmESaleProp.SpeedButton5Click(Sender: TObject);
var
  Code: string;
begin
  if HelpStk(Code) then
  begin
    DBEdit12.SetFocus;
    FDM_IntSales.qrEIntOffer.Edit;
    FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsString := Code;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmESaleProp.DBEdit12Exit(Sender: TObject);
begin
  if GetStkName(FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsString) = '' then
  begin
    MbError('‘„«—Â Ê«—œ ‘œÂ ’ÕÌÕ ‰„Ì »«‘œ');
    DBEdit12.SetFocus;
    Exit;
  end;
{$IFDEF PAKHSH}
   if FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsString = '7' then
   begin
     MbError('«„ò«‰ œ” —”Ì »Â «‰»«— 7 ÊÃÊœ ‰œ«—œ');
     DBEdit12.SetFocus;
     Exit;
   end;
{$ENDIF}

{$IFNDEF PAKHSH}
  if FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsInteger = 27 then
  begin
    chbAddedTax.Checked := False;
  end;
  if FDM_IntSales.qrEIntOffer.FieldByName('STK_CODE').AsInteger <> 27 then
  begin
    chbAddedTax.Checked := True;
  end;
{$ENDIF}
end;

procedure TFrmESaleProp.ppDBText93GetText(Sender: TObject;
  var Text: String);
begin
  Text := MbFormatDate1(Text);
end;

procedure TFrmESaleProp.ppLabel274GetText(Sender: TObject;
  var Text: String);
begin
  Text := SetEditText(GetValidityVal(FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString, ' = 0', FDM_IntSales.qrEIntOffer.FieldByName('USERID').AsString));
end;

procedure TFrmESaleProp.ppLabel275GetText(Sender: TObject;
  var Text: String);
begin
  Text := SetEditText(GetValidityVal(FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString, ' = 1', FDM_IntSales.qrEIntOffer.FieldByName('USERID').AsString));
end;

procedure TFrmESaleProp.ppLabel247GetText(Sender: TObject;
  var Text: String);
begin
  Text := GetDataBaseTime;
end;

procedure TFrmESaleProp.ppLabel260GetText(Sender: TObject;
  var Text: String);
begin
  Text := MbStringNumber(Round(StrToFloat(StringReplace(edGrossPrice.Text, ',' , '' ,[rfReplaceAll])))) + ' ' + '—Ì«·';
end;

procedure TFrmESaleProp.SpeedButton6Click(Sender: TObject);
var
  Code: string;
begin
  if HelpStore(Code, FDM_IntSales.qrEIntOffer.FieldByName('CUSTNO').AsString, FDM_IntSales.qrEIntOffer.FieldByName('CF_CUSTNAME').AsString) then
  begin
    dbedCustNO.SetFocus;
    with FDM_IntSales.qrEIntOffer do
    begin
      Edit;
      FieldByName('C_CODE').AsString := Code;
    end;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmESaleProp.DBEdit14Exit(Sender: TObject);
begin
  if FDM_IntSales.qrEIntOffer.FieldByName('C_CODE').AsString = '' then Exit;
  if FindStoreCode(FDM_IntSales.qrEIntOffer.FieldByName('CUSTNO').AsString, FDM_IntSales.qrEIntOffer.FieldByName('C_CODE').AsString) = '' then
  begin
    MbError(InvalidCode);
    DBEdit14.SetFocus;
    Exit;
  end;
  CustStorAdd := FindStoreAddr(FDM_IntSales.qrEIntOffer.FieldByName('CUSTNO').AsString, FDM_IntSales.qrEIntOffer.FieldByName('C_CODE').AsString);
  FDM_IntSales.qrEIntOffer.Edit;
  FDM_IntSales.qrEIntOffer.FieldByName('ORDADDRESS').AsString := CustStorAdd;
end;

procedure TFrmESaleProp.ppLabel315GetText(Sender: TObject;
  var Text: String);
begin
  Text := CustStorAdd;
end;

procedure TFrmESaleProp.SpeedButton7Click(Sender: TObject);
begin
  FDM_IntSales.qrEIntOfferDet.DisableControls;
  try
    with FDM_IntSales.qrEIntOfferDet do
    begin
      First;
      while not Eof do
      begin
        Edit;
        FieldByName('ABATE').AsInteger := 100;
        Next;
      end;
    end;
    btnPost.Click;
  finally
    FDM_IntSales.qrEIntOfferDet.EnableControls;
  end;
end;

function TFrmESaleProp.SelectValidQty(GdsCode, StkCode,
  DocDate: String): Double;
begin
  with FDM_IntSales.qrTmp, sql Do
  begin
    Close;
    Clear;
    Add('SELECT GDS_T.GDS_CODE,                                        ');
    Add('       NVL(FQTY,0) FQTY,NVL(RQTY,0) RQTY, NVL(EQTY,0) EQTY,   ');
    Add('       (NVL(FQTY,0) + NVL(RQTY,0) - NVL(EQTY,0)) EndQTY       ');
    Add('FROM INVENTORY.GDS_T,                                         ');
    Add('(                                                             ');
    Add('SELECT GDS_CODE,NVL(GDS_QTYF,0) FQTY                          ');
    Add('  FROM INVENTORY.GDS_QTY_T                                    ');
    Add(' WHERE GDS_CODE     = :CODE                                   ');
    Add('   AND GDS_QTY_YEAR  = :YEAR                                  ');
    Add('   AND GDS_QTY_MONTH = 0                                      ');
    Add('   AND STK_CODE      = :STK                                   ');
    Add(')A,                                                           ');
    Add('(                                                             ');
    Add('SELECT GDS_CODE,SUM(NVL(DOC_D_REQQTY,0)) RQTY                 ');
    Add('  FROM INVENTORY.DOC_M_T M , INVENTORY.DOC_D_T D              ');
    Add(' WHERE M.DOC_M_SERIAL = D.DOC_M_SERIAL                        ');
    Add('   AND GDS_CODE     = :CODE                                   ');
    Add('   AND M.DOC_M_YEAR = :YEAR                                   ');
    Add('   AND DOC_M_DATE <= :HDATE                                   ');
    Add('   AND STK_CODE      = :STK                                   ');
    Add('   AND FRM_CODE BETWEEN 100 AND 199                           ');
    Add('   AND DOC_M_STAT > 1                           ');
    Add(' GROUP BY GDS_CODE                                            ');
    Add(')B,                                                           ');
    Add('(                                                             ');
    Add('SELECT GDS_CODE,SUM(NVL(DOC_D_REQQTY,0)) EQTY                 ');
    Add('  FROM INVENTORY.DOC_M_T M , INVENTORY.DOC_D_T D              ');
    Add(' WHERE M.DOC_M_SERIAL = D.DOC_M_SERIAL                        ');
    Add('   AND GDS_CODE     = :CODE                                   ');
    Add('   AND M.DOC_M_YEAR = :YEAR                                   ');
    Add('   AND DOC_M_DATE <= :HDATE                                   ');
    Add('   AND STK_CODE      = :STK                                   ');
    {$IFNDEF PAKHSH}
      Add('   AND DOC_M_STAT > 1                           ');
    {$ENDIF}
    Add('   AND FRM_CODE BETWEEN 200 AND 299                           ');
    Add(' GROUP BY GDS_CODE                                            ');
    Add(')C                                                            ');
    Add('WHERE GDS_T.GDS_CODE = A.GDS_CODE(+)                          ');
    Add('  AND GDS_T.GDS_CODE = B.GDS_CODE(+)                          ');
    Add('  AND GDS_T.GDS_CODE = C.GDS_CODE(+)                          ');
    Add('  AND GDS_T.GDS_CODE = :CODE                                  ');
    ParamByName('CODE').AsString := GdsCode;
    ParamByName('STK').AsString := StkCode;
    ParamByName('HDATE').AsString := DocDate;
    ParamByName('YEAR').AsInteger := System_YY;
    Sql := MBSqlConvert(Sql);
    Open;
    EndQty := FDM_IntSales.qrTmp.FieldByName('EndQTY').AsFloat;
  end;
end;

procedure TFrmESaleProp.sbSaleClick(Sender: TObject);
begin
  if ValidPerFact(FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString) then
    DeleteFromPreFact(FDM_IntSales.qrEIntOffer.FieldByName('OFNUM').AsString)
end;

procedure TFrmESaleProp.DeleteFromPreFact(OfNum: String);
begin
  try
    with qrTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM PREFACTTIT_T');
      SQL.Add('WHERE OFNUM = :OFNUM');
      SQL.Add('  AND TAFSILY_YEAR = :YEAR');
      SQL.Add('  AND USERID = :FUSERID');
      ParamByName('OFNUM').AsString := OfNum;
      ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
      ParamByName('FUSERID').AsString := FDM_IntSales.qrEIntOffer.FieldByName('USERID').AsString;
      ExecSQL;
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM PREFACTDTL_T');
      SQL.Add('WHERE OFNUM = :OFNUM');
      SQL.Add('  AND CU_CODE = :YEAR');
      SQL.Add('  AND GDS_INFO = :FUSERID');
      ParamByName('OFNUM').AsString := OfNum;
      ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
      ParamByName('FUSERID').AsString := FDM_IntSales.qrEIntOffer.FieldByName('USERID').AsString;
      ExecSQL;
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM PREVALIDITY_T');
      SQL.Add('WHERE ADNUM2 = :OFNUM');
      SQL.Add('  AND ADNUM3 = :YEAR');
      SQL.Add('  AND ADNUM1 = :FUSERID');
      ParamByName('OFNUM').AsString := OfNum;
      ParamByName('YEAR').AsString := FDM_IntSales.qrEIntOffer.FieldByName('TAFSILY_YEAR').AsString;
      ParamByName('FUSERID').AsString := FDM_IntSales.qrEIntOffer.FieldByName('USERID').AsString;
      ExecSQL;
    end;
  except
  end;
end;

end.
