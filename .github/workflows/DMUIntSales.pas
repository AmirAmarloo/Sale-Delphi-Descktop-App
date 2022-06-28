{$I Direct.Inc}
unit DMUIntSales;

interface
                                                                                                
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, {$I MbUses.Inc};

type
  TDM_IntSales = class(TDataModule)
    qrEIntReq: TQuery;
    dsEIntReq: TDataSource;
    usEIntReq: TUpdateSQL;
    qrEIntReqDet: TQuery;
    dsEIntReqDet: TDataSource;
    usEIntReqDet: TUpdateSQL;
    qrEIntReqREQID: TFloatField;
    qrEIntReqCUSTNO: TFloatField;
    qrEIntReqREQDTE: TStringField;
    qrEIntReqREQDESC: TStringField;
    qrEIntReqRECSTAT: TFloatField;
    qrEIntReqPRJCODE: TFloatField;
    qrEIntReqDetREQID: TFloatField;
    qrEIntReqDetREQSEQ: TFloatField;
    qrEIntReqDetCU_CODE: TFloatField;
    qrEIntReqDetGDS_CODE: TStringField;
    qrEIntReqDetREQQTY: TFloatField;
    qrEIntReqCUSTDESC: TStringField;
    qrEIntReqECCODE: TStringField;
    qrEIntReqPRJNAME: TStringField;
    qrEIntReqCOUNTRY_NAME: TStringField;
    qrEIntReqADDRESS: TStringField;
    qrEIntReqZIPCODE: TStringField;
    qrEIntReqTEL: TStringField;
    qrEIntReqDetGDS_DESCF: TStringField;
    qrEIntReqDetGDS_DESCL: TStringField;
    qrEIntReqDetGDSTYPE: TStringField;
    qrEIntReqDetUNT_DESC: TStringField;
    qrEIntReqDetCU_NAME: TStringField;
    qrEIntReqDetTOTQTY: TStringField;
    qrEIntReqDetUNT_CODE: TStringField;
    qrETemp: TQuery;
    qrEIntOfferDet: TQuery;
    dsEIntOfferDet: TDataSource;
    usEIntOfferDet: TUpdateSQL;
    qrEIntOfferDetGDS_DESCF: TStringField;
    qrEIntOfferDetGDS_DESCL: TStringField;
    qrEIntOfferDetUNT_DESC: TStringField;
    qrEIntOfferDetCU_NAME: TStringField;
    usERespond: TUpdateSQL;
    qrERespond: TQuery;
    dsERespond: TDataSource;
    qrERespondRSPCODE: TFloatField;
    qrERespondREQID: TFloatField;
    qrERespondRSPDTE: TStringField;
    qrERespondRSPENVLOP: TStringField;
    qrERespondRSPLCTIM: TStringField;
    qrERespondRSPBVAL: TFloatField;
    qrERespondRSPSTAT: TFloatField;
    qrERespondDet: TQuery;
    usERespondDet: TUpdateSQL;
    dsERespondDet: TDataSource;
    qrERespondDetRSPCODE: TFloatField;
    qrERespondDetRSPROW: TFloatField;
    qrERespondDetRSDESC: TStringField;
    qrERespondDetRSINFID: TFloatField;
    qrERespondDetRSINFDESC: TStringField;
    qrERespondDetRSDLVTIM: TStringField;
    qrERespondDetRSAPPID: TFloatField;
    qrERespondDetRSAPPDESC: TStringField;
    qrERespondCUSTNAME: TStringField;
    qrERespondPRJDESC: TStringField;
    qrERespondRSP_STAT: TStringField;
    qrEIntReqREQREF: TStringField;
    qrETemp2: TQuery;
    qrEProdFact_M: TQuery;
    UpEProdFact_M: TUpdateSQL;
    DsEProdFact_M: TDataSource;
    qrEProdFact_D: TQuery;
    UpEProdFact_D: TUpdateSQL;
    DsEProdFact_D: TDataSource;
    qrEProdFact_DPRCNO: TFloatField;
    qrEProdFact_DPRDROW: TFloatField;
    qrEProdFact_DSRVCODE: TFloatField;
    qrEProdFact_DPRDPRICE: TFloatField;
    qrEProdFact_MPRCNO: TFloatField;
    qrEProdFact_MPRCDTE: TStringField;
    qrEProdFact_MPRCDESC: TStringField;
    qrEProdFact_MPRCSTAT: TFloatField;
    qrEProdFact_MCUSTNO: TFloatField;
    qrEProdFact_DCF_SrvDesc: TStringField;
    qrEProdFact_DCF_Price: TFloatField;
    qrEProdFact_MCF_CustName: TStringField;
    qrEValidity: TQuery;
    UpEValidity: TUpdateSQL;
    DsEValidity: TDataSource;
    qrEValidityADCODE: TFloatField;
    qrEValidityADNUM1: TFloatField;
    qrEValidityADNUM2: TFloatField;
    qrEValidityADNUM3: TFloatField;
    qrEValidityADNUM4: TFloatField;
    qrEValidityADNUM5: TFloatField;
    qrEValidityADVAL: TFloatField;
    qrEValidityCF_Kind: TStringField;
    qrEValidityCF_Name: TStringField;
    qrERespondDetGDS_CODE: TStringField;
    qrERespondDetRSPQTY: TFloatField;
    qrERespondDetCU_CODE: TFloatField;
    qrERespondDetGDS_DESCF: TStringField;
    qrERespondDetCU_NAME: TStringField;
    qrERespondDetTOTCODT: TFloatField;
    qrERespondDetGDS_DESCL: TStringField;
    qrEItmFact: TQuery;
    dsEItmFact: TDataSource;
    usEItmFact: TUpdateSQL;
    usEItmFactDet: TUpdateSQL;
    qrEItmFactDet: TQuery;
    dsEItmFactDet: TDataSource;
    qrEItmFactITMNO: TFloatField;
    qrEItmFactITMKIND: TFloatField;
    qrEItmFactITMTYP: TFloatField;
    qrEItmFactITMDTE: TStringField;
    qrEItmFactITMSTAT: TFloatField;
    qrEItmFactITMDESC: TStringField;
    qrEItmFactCNTCODE: TStringField;
    qrEItmFactRISRL: TFloatField;
    qrEItmFactDetITMNO: TFloatField;
    qrEItmFactDetITMKIND: TFloatField;
    qrEItmFactDetITMROW: TFloatField;
    qrEItmFactDetGDS_CODE: TStringField;
    qrEItmFactDetCU_CODE: TFloatField;
    qrEItmFactDetITMQTY: TFloatField;
    qrEItmFactDetITMARZPRICE: TFloatField;
    qrEItmFactFDATE: TStringField;
    qrEItmFactCUSTNAME: TStringField;
    qrEItmFactECONOMIC_CODE: TStringField;
    qrEItmFactDetUNT_DESC: TStringField;
    qrEItmFactDetCU_NAME: TStringField;
    qrEItmFactDetGDS_DESCF: TStringField;
    qrEItmFactDetGDS_DESCL: TStringField;
    qrEItmFactDetTOTCOST: TFloatField;
    qrEHavaleh: TQuery;
    dsEHavaleh: TDataSource;
    qrEHavalehITMHVLNO: TFloatField;
    qrEHavalehITHHVLDTE: TStringField;
    qrEProdFact_MCF_Mony: TFloatField;
    qrEIntReqDetREQPRICE: TFloatField;
    qrEIntReqDetTOTCOST: TFloatField;
    qrERespondDetRSPPRICE: TFloatField;
    qrEItmFactDetITMPRICE: TFloatField;
    qrRSaleProp: TQuery;
    dsRSaleProp: TDataSource;
    qrRAdd: TQuery;
    dsRAdd: TDataSource;
    qrRAddADCODE: TFloatField;
    qrRAddADVAL: TFloatField;
    qrRAddADFNAME: TStringField;
    qrRAddADTYPE: TFloatField;
    qrEIntOfferDetOFSEQ: TFloatField;
    qrEIntOfferDetCU_CODE: TFloatField;
    qrEIntOfferDetGDS_CODE: TStringField;
    qrEIntOfferDetOFQTY: TFloatField;
    qrEIntOfferDetOFPRICE: TFloatField;
    qrEOffValidity: TQuery;
    usEOffValidity: TUpdateSQL;
    dsEOffValidity: TDataSource;
    qrEOffValidityADCODE: TFloatField;
    qrEOffValidityADVAL: TFloatField;
    qrEOffValidityADARZVAL: TFloatField;
    qrEOffValidityADDDESC: TStringField;
    qrEOffValidityADDTYPE: TStringField;
    qrEOffValidityADKIND: TStringField;
    qrEIntOfferDetTOTCOST: TFloatField;
    qrEOffValidityCF_SUM: TFloatField;
    qrEValidityCF_PricKind: TStringField;
    qrEItmFactOFNUM: TStringField;
    qrEOffValidityADNUM1: TStringField;
    qrEOffValidityADNUM2: TStringField;
    qrEOffValidityADNUM3: TFloatField;
    qrEOffValidityADNUM4: TFloatField;
    qrEOffValidityADNUM5: TFloatField;
    qrEIntOffer: TQuery;
    qrEIntOfferOFNUM: TStringField;
    qrEIntOfferOFDATE: TStringField;
    qrEIntOfferOFVALDTE: TStringField;
    qrEIntOfferOFDLVDTE: TStringField;
    qrEIntOfferOFCOMM: TStringField;
    qrEIntOfferOFDESC: TStringField;
    qrEIntOfferOFSTAT: TFloatField;
    qrEIntOfferCUSTNO: TFloatField;
    qrEIntOfferCUST_REQNO: TStringField;
    qrEIntOfferCF_CECODE: TStringField;
    qrEIntOfferCF_CUSTNAME: TStringField;
    qrEIntOfferCUST_REQDATE: TStringField;
    qrEIntOfferORD_DELV_NO: TFloatField;
    dsEIntOffer: TDataSource;
    usEIntOffer: TUpdateSQL;
    qrEIntOfferDetOFNUM: TStringField;
    qrEIntOfferOFDLVPLACE: TStringField;
    qrRSalePropOFNUM: TStringField;
    qrRSalePropOFDATE: TStringField;
    qrRSalePropOFVALDTE: TStringField;
    qrRSalePropOFDLVDTE: TStringField;
    qrRSalePropCUSTNAME: TStringField;
    qrRSalePropOFCOMM: TStringField;
    qrRSalePropGDS_CODE: TStringField;
    qrRSalePropGDS_DESCF: TStringField;
    qrRSalePropGDS_DESCL: TStringField;
    qrRSalePropGDS_UNTS: TFloatField;
    qrRSalePropUNT_DESC: TStringField;
    qrRSalePropOFQTY: TFloatField;
    qrRSalePropOFPRICE: TFloatField;
    qrRSalePropOFDESC: TStringField;
    qrRSalePropCUSTADD: TStringField;
    qrRSalePropTOTLSUM: TFloatField;
    qrRSalePropCUST_REQNO: TStringField;
    qrRSalePropCUSTNO: TFloatField;
    qrRSalePropCUST_REQDATE: TStringField;
    qrRAddADNUM2: TStringField;
    qrRSalePropGDS_DESC: TStringField;
    qrRSalePropGDS_DESC1: TStringField;
    qrRSalePropGDS_DESC2: TStringField;
    qrRSalePropCOST_PACK: TFloatField;
    qrRSalePropPACK_TYPE: TFloatField;
    qrRSalePropREDUCTION_PACK: TFloatField;
    qrRSalePropPACKPRICE: TFloatField;
    qrRSalePropSUMPRICE: TFloatField;
    qrRSalePropOFDLVPLACE: TStringField;
    qrRFact: TQuery;
    dsRFact: TDataSource;
    qrRFactITMNO: TFloatField;
    qrRFactITMDTE: TStringField;
    qrRFactGDS_CODE: TStringField;
    qrRFactGDS_DESCF: TStringField;
    qrRFactUNT_DESC: TStringField;
    qrRFactITMQTY: TFloatField;
    qrRFactITMPRICE: TFloatField;
    qrRFactTOTPRICE: TFloatField;
    qrRFactCF_CUSTNAME: TStringField;
    qrRFactCF_CUSTADD: TStringField;
    qrRFactCF_CUSTTEL: TStringField;
    qrEIntOfferORDADDRESS: TStringField;
    qrEOrdD: TQuery;
    dsEOrdD: TDataSource;
    usEOrdD: TUpdateSQL;
    qrEOrdM: TQuery;
    dsEOrdM: TDataSource;
    usEOrdM: TUpdateSQL;
    qrEOrdMORD_CODE: TFloatField;
    qrEOrdMORD_YEAR: TFloatField;
    qrEOrdMORD_DATE: TStringField;
    qrEOrdMORDOF_NUM: TStringField;
    qrEOrdMORDCNT_CODE: TStringField;
    qrEOrdMORD_PLACE: TStringField;
    qrEOrdMORD_CNTDATE: TStringField;
    qrEOrdMORDCUST_CODE: TFloatField;
    qrEOrdMORD_VALUE: TFloatField;
    qrEOrdMORD_TYPE: TFloatField;
    qrEOrdMORD_DESC: TStringField;
    qrEOrdDORD_CODE: TFloatField;
    qrEOrdDORD_YEAR: TFloatField;
    qrEOrdDORD_SEQ: TFloatField;
    qrEOrdDGDS_CODE: TStringField;
    qrEOrdDPACK_TYPE: TFloatField;
    qrEOrdDORD_QTY: TFloatField;
    qrEOrdDPACK_QTY: TFloatField;
    qrEOrdDORD_FINALQTY: TFloatField;
    qrEOrdDGDS_DESCF: TStringField;
    qrEOrdDUNT_DESC: TStringField;
    qrEOrdMCf_CustName: TStringField;
    qrEOrdMCf_CustTel: TStringField;
    qrEOrdMCf_CustEco: TStringField;
    qrEOrdMCf_CustAdd: TStringField;
    qrROrdDlv: TQuery;
    dsROrdDlv: TDataSource;
    qrROrdDlvORD_CODE: TFloatField;
    qrROrdDlvORD_DATE: TStringField;
    qrROrdDlvORD_PLACE: TStringField;
    qrROrdDlvCUSTNAME: TStringField;
    qrROrdDlvCUSTADD: TStringField;
    qrROrdDlvCUSTTEL: TStringField;
    qrROrdDlvECONOMIC_CODE: TStringField;
    qrROrdDlvORD_SEQ: TFloatField;
    qrROrdDlvGDS_CODE: TStringField;
    qrROrdDlvGDS_DESCF: TStringField;
    qrROrdDlvUNT_DESC: TStringField;
    qrROrdDlvPACK_TYPE: TFloatField;
    qrROrdDlvORD_QTY: TFloatField;
    qrROrdDlvPACK_QTY: TFloatField;
    qrROrdDlvORD_FINALQTY: TFloatField;
    qrROrdDlvORD_VALUE: TFloatField;
    qrTmp: TQuery;
    qrTmpD: TQuery;
    qrTmpT: TQuery;
    qrRSalePropCUSTFAX: TStringField;
    qrEOrdMTVL_DATE: TStringField;
    qrRFactCF_ECONOMIC: TStringField;
    qrRFactCF_CUSTREG: TStringField;
    qrRFactCF_CUSTCO: TStringField;
    qrEIntOfferDetPACKVALUE: TFloatField;
    qrEItmFactDetPREPAY: TFloatField;
    qrEItmFactDetABATE: TFloatField;
    qrEItmFactDetPACKVALUE: TFloatField;
    qrEOrdMCUST_TEL: TStringField;
    qrEOrdMCUST_ADD: TStringField;
    qrRFactABATE: TFloatField;
    qrRFactPACKVALUE: TFloatField;
    qrRFactVALUEAFABATE: TFloatField;
    qrRFactMALIAT: TFloatField;
    qrRFactPREPAY: TFloatField;
    qrRFactTOTALVALUE: TFloatField;
    qrEIntOfferDetCF_PACKVALUE: TFloatField;
    qrETmpH: TQuery;
    qrRFactCF_Havaleh1: TStringField;
    qrRFactCF_Havaleh2: TStringField;
    qrRFactCF_Havaleh3: TStringField;
    qrRFactCF_Havaleh4: TStringField;
    qrRFactCF_Havaleh5: TStringField;
    qrRFactCF_Havaleh6: TStringField;
    qrRFactCF_Havaleh7: TStringField;
    qrRFactCF_Havaleh8: TStringField;
    qrRFactCF_Havaleh9: TStringField;
    qrRFactCF_Havaleh10: TStringField;
    qrTmpCust: TQuery;
    qrRFactCF_ORDNO1: TStringField;
    qrETmpOrd: TQuery;
    qrRFactCF_Havaleh11: TStringField;
    qrRFactCF_Havaleh12: TStringField;
    qrRFactCF_Havaleh13: TStringField;
    qrEIntOfferDetPACK_TYPE: TFloatField;
    qrEIntOfferDetGDS_INFO: TFloatField;
    qrGdsInfo: TQuery;
    FloatField1: TFloatField;
    StringField1: TStringField;
    dsGdsInfo: TDataSource;
    qrEIntOfferDetGDSINFO: TStringField;
    qrEOrdDGDS_INFO: TFloatField;
    qrEOrdDGDSINFO: TStringField;
    qrRSalePropINFO_DESC: TStringField;
    qrROrdDlvINFO_DESC: TStringField;
    qrTmpRep1: TQuery;
    qrTmpRep2: TQuery;
    qrROrdDlvCUSTNO: TFloatField;
    qrEIntOfferCF_VISITORNAME: TStringField;
    qrEIntOfferPRJCODE: TFloatField;
    qrEIntOfferCF_DRIVERNAME: TStringField;
    qrEIntOfferCF_CARNAME: TStringField;
    qrEIntOfferSECTAFSILY_CODE: TFloatField;
    qrEIntOfferDetCF_USERPRICE: TIntegerField;
    qrEIntOfferECONOMIC_CODE: TStringField;
    qrEIntOfferCUSTADD: TStringField;
    qrEIntOfferCUST_CO: TStringField;
    qrEIntOfferCUSTTEL: TStringField;
    qrEIntOfferNAT_CODE: TStringField;
    qrEIntOfferCUST_STATE: TStringField;
    qrEIntOfferCUST_CTCODE: TStringField;
    qrEIntOfferPERCENT_REDUCTION: TStringField;
    qrEIntOfferCUSTTYPE_CODE: TStringField;
    qrEIntOfferCUST_DIR: TStringField;
    qrEIntOfferCUSTPOST: TStringField;
    qrEDistFact: TQuery;
    usEDistFact: TUpdateSQL;
    dsEDistFact: TDataSource;
    qrEDistFactOFDISTNUM: TStringField;
    qrPReturn: TQuery;
    qrTemp: TQuery;
    qrDocD: TQuery;
    qrDocM: TQuery;
    qrUpdateOffer: TQuery;
    qrPGenerateFact: TQuery;
    qrPGenerateFactGDS_CODE: TStringField;
    qrPGenerateFactOFQTY: TFloatField;
    qrPGenerateFactOFPRICE: TFloatField;
    qrPGenerateFactUNT_DESC: TStringField;
    qrPGenerateFactGDS_DESCF: TStringField;
    qrPGenerateFactON_QTY: TFloatField;
    qrPGenerateFactCF_ORDER: TIntegerField;
    qrPGenerateFactORDER_CODE: TFloatField;
    qrPGenerateFactCUSTTYPE_CODE: TFloatField;
    qrPGenerateFactDR_CODE: TFloatField;
    dsPGenerateFact: TDataSource;
    usPGenerateFact: TUpdateSQL;
    qrEDefOrder: TQuery;
    qrSummery: TQuery;
    qrSummeryORDER_CODE: TFloatField;
    qrSummeryOFQTY: TFloatField;
    qrSummeryGDS_WEIGHT: TFloatField;
    qrSummeryBOXQTY: TFloatField;
    qrSummeryTOTBOX_VOLUME: TFloatField;
    dsSummery: TDataSource;
    qrTrnas: TQuery;
    qrTrnasORDER_CODE: TFloatField;
    qrTrnasT_CODE: TStringField;
    qrTrnasCF_TRANSNAME: TStringField;
    qrTrnasCF_WCAP: TStringField;
    qrTrnasCF_VCAP: TStringField;
    dsTrnas: TDataSource;
    usTrnas: TUpdateSQL;
    qrTemp1: TQuery;
    qrTemp2: TQuery;
    qrSummeryCF_OFCOUNT: TIntegerField;
    qrSummeryCF_DIRNAME: TStringField;
    qrSummeryCF_GRPNAME: TStringField;
    qrEIntOfferDetCF_PERABAT: TFloatField;
    qrEIntOfferDetCF_TAX: TFloatField;
    qrEIntOfferTAFSILY_YEAR: TFloatField;
    qrEIntOfferUSERID: TStringField;
    dsCheckReturn: TDataSource;
    qrCheckReturn: TQuery;
    qrCheckReturnR_GDSCODE: TStringField;
    qrCheckReturnR_OFNUM: TStringField;
    qrCheckReturnR_OFYEAR: TFloatField;
    qrCheckReturnR_QTY: TFloatField;
    qrCheckReturnOFNUM: TStringField;
    qrCheckReturnCU_CODE: TFloatField;
    qrCheckReturnGDS_CODE: TStringField;
    qrCheckReturnOFQTY: TFloatField;
    qrCheckReturnGDS_DESCF: TStringField;
    qrEIntOfferDetCF_INVQTY: TIntegerField;
    qrPGenerateFactCUST_REQDATE: TStringField;
    qrPBAmani: TQuery;
    qrPGenerateFactOFQTY2: TFloatField;
    qrEIntOfferCF_STKDESC: TStringField;
    qrEIntOfferSTK_CODE: TFloatField;
    qrPGenerateFactSTK_CODE: TFloatField;
    qrEIntOfferUSERDATE: TDateTimeField;
    qrEIntOfferC_CODE: TFloatField;
    qrEIntOfferCF_STOREDESC: TStringField;
    qrEIntOfferDetOF_REALQTY: TFloatField;
    qrPGenerateFactSTK_NAME: TStringField;
    qrEIntOfferDetCF_RAAS: TIntegerField;
    qrEIntOfferDetUSER_PRICE: TFloatField;
    qrEIntOfferDetABATE: TFloatField;
    qrEIntOfferCF_COUNTRYNAME: TStringField;
    qrEIntOfferDetCASH_ABATE: TFloatField;
    qrEIntOfferDetCF_PERCASHABATE: TFloatField;
    qrEIntOfferOFDISTVAL: TFloatField;
    qrEIntOfferONLINESALE_NO: TStringField;

    procedure SortGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure SortSetText(Sender: TField; const Text: String);
    procedure DataModuleCreate(Sender: TObject);
    procedure qrEIntOfferNewRecord(DataSet: TDataSet);
    procedure qrERespondNewRecord(DataSet: TDataSet);
    procedure qrEProdFact_DPRDPRICEValidate(Sender: TField);
    procedure qrEProdFact_DSRVCODEValidate(Sender: TField);
    procedure qrEProdFact_MNewRecord(DataSet: TDataSet);
    procedure qrEIntOfferDetNewRecord(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_IntSales: TDM_IntSales;

implementation

uses Vars, Umessage,Functions;

{$R *.DFM}

{ TDM_IntSales }
            
procedure TDM_IntSales.DataModuleCreate(Sender: TObject);
begin
  MbConvertSchemaOfUpdateSqlAndQuery(Self);
end;

procedure TDM_IntSales.SortGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text := MbDb2St(Sender.AsString, MbCurrentCharSetCode);
end;

procedure TDM_IntSales.SortSetText(Sender: TField; const Text: String);
begin
  Sender.AsString := MbSt2Db(Text, MbCurrentCharSetCode);
end;

procedure TDM_IntSales.qrEIntOfferNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('OFSTAT').AsInteger:= 2;
  DataSet.FieldByName('TAFSILY_YEAR').AsInteger:= System_YY;
end;

procedure TDM_IntSales.qrERespondNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('RSPSTAT').AsInteger:= _intNotConfirmed;
end;

procedure TDM_IntSales.qrEProdFact_DPRDPRICEValidate(Sender: TField);
begin
  If (Sender.AsFloat > 9999999999999) Then
  begin
    MbError(RangeErr);
    Abort;
  end;
end;

procedure TDM_IntSales.qrEProdFact_DSRVCODEValidate(Sender: TField);
begin
  If Not ExistSRVCODE(Sender.AsString) Then
  begin
    MbError(InvalidCode);
    Abort;
  end;
  If (Sender.AsFloat > 999) Then
  begin
    MbError(RangeErr);
    Abort;
  end;
end;

procedure TDM_IntSales.qrEProdFact_MNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByNAme('PRCSTAT').AsInteger :=  _DisConfirmVal;
end;



procedure TDM_IntSales.qrEIntOfferDetNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('CU_CODE').AsInteger:= System_YY;
end;

end.
