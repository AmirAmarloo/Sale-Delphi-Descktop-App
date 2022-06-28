{$I Direct.Inc}
unit DMUReport;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs,Db, DBTables,{$I MbUses.Inc};

type
  TDM_Report = class(TDataModule)
    qrRServ: TQuery;
    dsRServ: TDataSource;
    qrRServSRVCODE: TFloatField;
    qrRServSRVPRICE: TFloatField;
    qrRServMOIN_YEAR: TFloatField;
    qrRServMOIN_CODE: TFloatField;
    qrRServTAFSILY_CODE: TFloatField;
    qrRServMOIN_NAME: TStringField;
    qrRServTAFSILY_NAME: TStringField;
    qrRCustom: TQuery;
    dsRCustom: TDataSource;
    qrRCustomCUSTNAME: TStringField;
    qrRCustomCUSTADD: TStringField;
    qrRCustomCUSTTEL: TStringField;
    qrRCustomCUSTGRP: TFloatField;
    qrRPrj: TQuery;
    dsRPrj: TDataSource;
    qrRPrjPRJCODE: TFloatField;
    qrRPrjPRJDESC: TStringField;
    qrRPro: TQuery;
    dsRPro: TDataSource;
    qrRProGDS_CODE_T: TStringField;
    qrRProFINITMTYP: TFloatField;
    qrRProFINITROW: TFloatField;
    qrRProGDS_CODE_R: TStringField;
    qrRProFINITMVAL: TFloatField;
    qrRProCU_NAME: TStringField;
    qrRProCU_CODE: TFloatField;
    qrRProMOIN_YEAR: TFloatField;
    qrRProMOIN_CODE: TFloatField;
    qrRProTAFSILY_CODE: TFloatField;
    qrRProUNT_DESC: TStringField;
    qrRProMOIN_NAME: TStringField;
    qrRProTAFSILY_NAME: TStringField;
    qrRProUNT_CODE: TFloatField;
    qrRProGDS_DESCF: TStringField;
    qrRProGDS_DESCL: TStringField;
    qrRProSTK_CODE: TFloatField;
    qrRProUNT_CODE_R: TFloatField;
    qrRProGDS_DESCF_R: TStringField;
    qrRProGDS_DESCL_R: TStringField;
    qrRProSTK_CODE_R: TFloatField;
    qrRIdTech: TQuery;
    dsRIdTech: TDataSource;
    qrRIdTechTECDESC: TStringField;
    qrRIdTechTECPID: TStringField;
    qrRIdTechTECNO: TFloatField;
    qrRIdTechUNT_CODE: TFloatField;
    qrRIdTechUNT_DESC: TStringField;
    qrRKasr: TQuery;
    dsRKasr: TDataSource;
    qrRIdTechGDS_CODE: TStringField;
    qrRIdTechTECSRL: TFloatField;
    qrRIdTechCF_GDSDESC: TStringField;
    qrRKasrADCODE: TFloatField;
    qrRKasrADFNAME: TStringField;
    qrRKasrADLNAME: TStringField;
    qrRKasrADTYPE: TFloatField;
    qrRKasrADKIND: TFloatField;
    qrRKasrMOIN_YEAR: TFloatField;
    qrRKasrMOIN_CODE: TFloatField;
    qrRKasrTAFSILY_CODE: TFloatField;
    qrRKasrMOIN_NAME: TStringField;
    qrRKasrTAFSILY_NAME: TStringField;
    qrRPack: TQuery;
    dsRPack: TDataSource;
    qrRPackPCKID: TFloatField;
    qrRPackORDNO: TStringField;
    qrRPackPCKDATE: TStringField;
    qrRPackPCKREFID: TStringField;
    qrRPackPCKCASENO: TFloatField;
    qrRPackPCKSUPL: TFloatField;
    qrRPackPCKMAXWTH: TStringField;
    qrRPackMAXUNT: TFloatField;
    qrRPackPCKCURWTH: TStringField;
    qrRPackPURUNT: TFloatField;
    qrRPackPCKSIZE: TStringField;
    qrRPackPCKROW: TFloatField;
    qrRPackPCKQTY: TFloatField;
    qrRPackFIN_GDS_CODE: TStringField;
    qrRPackGDS_DESCF: TStringField;
    qrRPackGDS_DESCL: TStringField;
    qrRIdTechTECID: TStringField;
    qrRBidVch: TQuery;
    dsRBidVch: TDataSource;
    qrRBidVchBINUM: TStringField;
    qrRBidVchCUSTNO: TFloatField;
    qrRBidVchBIDATE: TStringField;
    qrRBidVchBISTATUS: TFloatField;
    qrRBidVchGDS_CODE: TStringField;
    qrRBidVchBIDLVDTE: TStringField;
    qrRBidVchGDS_DESCL: TStringField;
    qrRBidVchGDS_DESCF: TStringField;
    qrRBidVchGDS_PRTNO: TStringField;
    qrRBidVchCUSTNAME: TStringField;
    dsRIntReqCus: TDataSource;
    qrRIntReqCus: TQuery;
    qrRIntReqCusCF_ARZDESC: TStringField;
    qrRPishSal: TQuery;
    dsRPishSal: TDataSource;
    dsRExtCusReq: TDataSource;
    qrRExtCusReq: TQuery;
    dsRProf: TDataSource;
    qrRProf: TQuery;
    dsRCnt: TDataSource;
    qrRCnt: TQuery;
    qrRCntCNTCODE: TStringField;
    qrRCntRISRL: TFloatField;
    qrRCntRIDATE: TStringField;
    qrRCntRDROW: TFloatField;
    qrRCntCNTDTE: TStringField;
    qrRCntRIDSTAT: TFloatField;
    qrRCntGDS_CODE: TStringField;
    qrRCntRDQTY: TFloatField;
    qrRCntRDPRICE: TFloatField;
    qrRCntGDS_DESCF: TStringField;
    qrRCntTOTLPRICE: TFloatField;
    qrRCntCNTTYP: TFloatField;
    qrRCntCUSTNO: TFloatField;
    qrRCntCUSTNAME: TStringField;
    qrRBidVchBIDTYPE: TFloatField;
    qrRIntReqCusREQID: TFloatField;
    qrRIntReqCusCUSTNO: TFloatField;
    qrRIntReqCusCUSTNAME: TStringField;
    qrRIntReqCusREQDTE: TStringField;
    qrRIntReqCusRECSTAT: TFloatField;
    qrRIntReqCusCU_CODE: TFloatField;
    qrRIntReqCusGDS_CODE: TStringField;
    qrRIntReqCusREQQTY: TFloatField;
    qrRIntReqCusREQPRICE: TFloatField;
    qrRIntReqCusTOTLPRICE: TFloatField;
    qrRIntReqCusGDS_DESCF: TStringField;
    qrRIntReqCusGDS_DESCL: TStringField;
    qrRIntReqCusGDS_KIND: TFloatField;
    qrRPishSalOFDATE: TStringField;
    qrRPishSalOFVALDTE: TStringField;
    qrRPishSalOFDLVDTE: TStringField;
    qrRPishSalCUSTNO: TFloatField;
    qrRPishSalCUSTNAME: TStringField;
    qrRPishSalOFQTY: TFloatField;
    qrRPishSalOFPRICE: TFloatField;
    qrRPishSalGDS_CODE: TStringField;
    qrRPishSalGDS_DESCF: TStringField;
    qrRPishSalTOTLSUM: TFloatField;
    qrRPishSalOFSTAT: TFloatField;
    qrRExtCusReqINQNUM: TStringField;
    qrRExtCusReqINQDTE: TStringField;
    qrRExtCusReqCUSTNO: TFloatField;
    qrRExtCusReqCUSTNAME: TStringField;
    qrRExtCusReqGDS_CODE: TStringField;
    qrRExtCusReqGDS_DESCF: TStringField;
    qrRExtCusReqGDS_DESCL: TStringField;
    qrRExtCusReqINQTYP: TFloatField;
    qrRExtCusReqINYQTY: TFloatField;
    qrRExtCusReqINYPRICE: TFloatField;
    qrRExtCusReqCU_CODE: TFloatField;
    qrRExtCusReqCU_NAME: TStringField;
    qrRExtCusReqTOTPRICE: TFloatField;
    qrRProfPRFNUM: TFloatField;
    qrRProfPRFDATE: TStringField;
    qrRProfPRFSTAT: TFloatField;
    qrRProfPRFSBJ: TStringField;
    qrRProfCUSTNO: TFloatField;
    qrRProfCUSTNAME: TStringField;
    qrRProfCU_NAME: TStringField;
    qrRProfCU_CODE: TFloatField;
    qrRProfGDS_CODE: TStringField;
    qrRProfGDS_DESCF: TStringField;
    qrRProfGDS_DESCL: TStringField;
    qrRProfPROQTY: TFloatField;
    qrRProfPROPRICE: TFloatField;
    qrRProfTOTPRICE: TFloatField;
    qrRProfINQNUM: TStringField;
    qrRProfINQDTE: TStringField;
    dsRCntctCust: TDataSource;
    qrRCntctCust: TQuery;
    qrRCntctCustCNTCODE: TStringField;
    qrRCntctCustCNTDTE: TStringField;
    qrRCntctCustGDS_CODE: TStringField;
    qrRCntctCustCNTQTY: TFloatField;
    qrRCntctCustCNTPRICE: TFloatField;
    qrRCntctCustGDS_DESCF: TStringField;
    qrRCntctCustCUSTNO: TFloatField;
    qrRCntctCustCUSTNAME: TStringField;
    qrRCntctCustCNTSTAT: TFloatField;
    qrRCntctCustTOTLPRICE: TFloatField;
    qrTmp: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    StringField3: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField4: TStringField;
    StringField5: TStringField;
    FloatField4: TFloatField;
    StringField6: TStringField;
    StringField7: TStringField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    qrRCntct: TQuery;
    dsRCntCt: TDataSource;
    qrRCntctCNTCODE: TStringField;
    qrRCntctCNTDTE: TStringField;
    qrRCntctCU_CODE: TFloatField;
    qrRCntctGDS_CODE: TStringField;
    qrRCntctCNTQTY: TFloatField;
    qrRCntctCNTPRICE: TFloatField;
    qrRCntctCU_NAME: TStringField;
    qrRCntctGDS_DESCF: TStringField;
    qrRCntctCUSTNO: TFloatField;
    qrRCntctCUSTNAME: TStringField;
    qrRCntctPRJDESC: TStringField;
    qrRCntctCNTSTAT: TFloatField;
    qrRCntctTOTLPRICE: TFloatField;
    qrRCntctBINUM: TStringField;
    qrRCntctBIDATE: TStringField;
    qrRInFact: TQuery;
    dsRInFact: TDataSource;
    qrRInFactITMNO: TFloatField;
    qrRInFactITMKIND: TFloatField;
    qrRInFactITMTYP: TFloatField;
    qrRInFactITMDTE: TStringField;
    qrRInFactITMSTAT: TFloatField;
    qrRInFactITMDESC: TStringField;
    qrRInFactCNTCODE: TStringField;
    qrRInFactRISRL: TFloatField;
    qrRInFactGDS_CODE: TStringField;
    qrRInFactITMQTY: TFloatField;
    qrRInFactITMPRICE: TFloatField;
    qrRInFactTOTLPRICE: TFloatField;
    qrRInFactKASRVAL: TFloatField;
    qrRInFactEZAFEHVAL: TFloatField;
    qrRInFactRKASRVAL: TFloatField;
    qrRInFactREZAFEHVAL: TFloatField;
    qrRInFactCUSTNO: TFloatField;
    qrRInFactCUSTNAME: TStringField;
    qrRInFactUNT_DESC: TStringField;
    qrRInFactGDS_DESCF: TStringField;
    qrRInFactFDATE: TStringField;
    qrRInFactNETPRICE: TFloatField;
    qrRTmp: TQuery;
    qrRInFactNETRPRICE: TFloatField;
    qrRExFact: TQuery;
    dsRExFact: TDataSource;
    qrRExFactINVSRL: TFloatField;
    qrRExFactINVKIND: TFloatField;
    qrRExFactINVGRP: TFloatField;
    qrRExFactINVNUM: TStringField;
    qrRExFactINVDTE: TStringField;
    qrRExFactCNTCODE: TStringField;
    qrRExFactRISRL: TFloatField;
    qrRExFactORDNO: TStringField;
    qrRExFactINVLCNO: TStringField;
    qrRExFactINVSTAT: TFloatField;
    qrRExFactINVROW: TFloatField;
    qrRExFactGDS_CODE: TStringField;
    qrRExFactCU_CODE: TFloatField;
    qrRExFactINVQTY: TFloatField;
    qrRExFactINVPRICE: TFloatField;
    qrRExFactINVARZPRICE: TFloatField;
    qrRExFactTOTLPRICE: TFloatField;
    qrRExFactKASRVAL: TFloatField;
    qrRExFactEZAFEHVAL: TFloatField;
    qrRExFactRKASRVAL: TFloatField;
    qrRExFactREZAFEHVAL: TFloatField;
    qrRExFactCUSTNO: TFloatField;
    qrRExFactCU_NAME: TStringField;
    qrRExFactCUSTNAME: TStringField;
    qrRExFactUNT_DESC: TStringField;
    qrRExFactGDS_DESCF: TStringField;
    qrRExFactGDS_DESCL: TStringField;
    qrRExFactINTMGOODS: TStringField;
    qrRExFactFDATE: TStringField;
    qrRExFactNETPRICE: TFloatField;
    qrRExFactNETRPRICE: TFloatField;
    qrRGardesh_F: TQuery;
    dsRGardesh_F: TDataSource;
    qrRGardesh_FTOTDEBIT: TFloatField;
    qrRGardesh_FTOTCREDIT: TFloatField;
    qrRGardesh_FTOTMANDEH: TFloatField;
    qrRGardesh: TQuery;
    dsRGardesh: TDataSource;
    qrRGardesh_FCUSTNAME: TStringField;
    qrRGardeshBrief: TQuery;
    daRGardeshBrief: TDataSource;
    qrRGardeshBriefTOTDEBIT: TFloatField;
    qrRGardeshBriefTOTCREDIT: TFloatField;
    qrRGardeshBriefTOTMANDEH: TFloatField;
    qrRGardeshBriefCUSTNO: TFloatField;
    qrRGardeshBriefCUSTNAME: TStringField;
    qrRRejFact: TQuery;
    dsRRejFact: TDataSource;
    qrRRejFactITMNO: TFloatField;
    qrRRejFactITMKIND: TFloatField;
    qrRRejFactITMTYP: TFloatField;
    qrRRejFactITMDTE: TStringField;
    qrRRejFactITMSTAT: TFloatField;
    qrRRejFactITMDESC: TStringField;
    qrRRejFactCNTCODE: TStringField;
    qrRRejFactRISRL: TFloatField;
    qrRRejFactGDS_CODE: TStringField;
    qrRRejFactITMQTY: TFloatField;
    qrRRejFactITMPRICE: TFloatField;
    qrRRejFactTOTLPRICE: TFloatField;
    qrRRejFactKASRVAL: TFloatField;
    qrRRejFactEZAFEHVAL: TFloatField;
    qrRRejFactRKASRVAL: TFloatField;
    qrRRejFactREZAFEHVAL: TFloatField;
    qrRRejFactCUSTNO: TFloatField;
    qrRRejFactCUSTNAME: TStringField;
    qrRRejFactUNT_DESC: TStringField;
    qrRRejFactGDS_DESCF: TStringField;
    qrRSrvFact: TQuery;
    dsRSrvFact: TDataSource;
    qrRSrvFactPRCNO: TFloatField;
    qrRSrvFactPRCDTE: TStringField;
    qrRSrvFactPRCDESC: TStringField;
    qrRSrvFactPRCSTAT: TFloatField;
    qrRSrvFactCUSTNO: TFloatField;
    qrRSrvFactPRDROW: TFloatField;
    qrRSrvFactSRVCODE: TFloatField;
    qrRSrvFactPRDPRICE: TFloatField;
    qrRSrvFactKASRVAL: TFloatField;
    qrRSrvFactEZAFEHVAL: TFloatField;
    qrRSrvFactCUSTNAME: TStringField;
    qrRSrvFactNETPRICE: TFloatField;
    qrRERejFact: TQuery;
    dsRERejFact: TDataSource;
    qrRERejFactINVSRL: TFloatField;
    qrRERejFactINVKIND: TFloatField;
    qrRERejFactINVGRP: TFloatField;
    qrRERejFactINVNUM: TStringField;
    qrRERejFactINVDTE: TStringField;
    qrRERejFactCNTCODE: TStringField;
    qrRERejFactRISRL: TFloatField;
    qrRERejFactORDNO: TStringField;
    qrRERejFactINVLCNO: TStringField;
    qrRERejFactINVSTAT: TFloatField;
    qrRERejFactINVROW: TFloatField;
    qrRERejFactGDS_CODE: TStringField;
    qrRERejFactCU_CODE: TFloatField;
    qrRERejFactINVQTY: TFloatField;
    qrRERejFactINVPRICE: TFloatField;
    qrRERejFactINVARZPRICE: TFloatField;
    qrRERejFactTOTLPRICE: TFloatField;
    qrRERejFactKASRVAL: TFloatField;
    qrRERejFactEZAFEHVAL: TFloatField;
    qrRERejFactRKASRVAL: TFloatField;
    qrRERejFactREZAFEHVAL: TFloatField;
    qrRERejFactCUSTNO: TFloatField;
    qrRERejFactCU_NAME: TStringField;
    qrRERejFactCUSTNAME: TStringField;
    qrRERejFactUNT_DESC: TStringField;
    qrRERejFactGDS_DESCF: TStringField;
    qrRERejFactGDS_DESCL: TStringField;
    qrRERejFactINTMGOODS: TStringField;
    qrRMntSale: TQuery;
    dsRMntSale: TDataSource;
    qrRSaleMonth: TQuery;
    dsRSaleMonth: TDataSource;
    qrRSaleMonthCUSTNAME: TStringField;
    qrRSaleMonthCUSTADD: TStringField;
    qrRSaleMonthECONOMIC_CODE: TStringField;
    qrRSaleMonthSUMFSUM: TFloatField;
    qrRSaleKala: TQuery;
    dsRSaleKala: TDataSource;
    qrRMntSaleGDS_CODE: TStringField;
    qrRMntSaleSUM_COL_A: TFloatField;
    qrRMntSaleSUM_COL_B: TFloatField;
    qrRMntSaleSUM_COL_C: TFloatField;
    qrRMntSaleSUM_COL_D: TFloatField;
    qrRMntSaleGDS_DESCF: TStringField;
    qrRprintsrvfact: TQuery;
    dsRprintsrvfact: TDataSource;
    qrTemp: TQuery;
    qrRprintsrvfactPRCNO: TFloatField;
    qrRprintsrvfactPRDPRICE: TFloatField;
    qrRprintsrvfactPRCDTE: TStringField;
    qrRprintsrvfactCUSTNO: TFloatField;
    qrRprintsrvfactPRCDESC: TStringField;
    qrRprintsrvfactSRVCODE: TFloatField;
    qrRprintsrvfactPRDROW: TFloatField;
    qrRprintsrvfactCUSTNAME: TStringField;
    qrRprintfactex: TQuery;
    dsRprintfactex: TDataSource;
    qrRprintfactint: TQuery;
    dsRprintfactint: TDataSource;
    qrRprintfactintITMKIND: TFloatField;
    qrRprintfactintITMNO: TFloatField;
    qrRprintfactintITMDESC: TStringField;
    qrRprintfactintITMPRICE: TFloatField;
    qrRprintfactintTOTLPRICE: TFloatField;
    qrRprintfactintCUSTNO: TFloatField;
    qrRprintfactintGDS_DESCF: TStringField;
    qrRprintfactintCUSTNAME: TStringField;
    qrRprintfactintCUSTADD: TStringField;
    qrRprintfactintGDS_CODE: TStringField;
    qrRprintfactintITMDTE: TStringField;
    qrRprintfactexINVSRL: TFloatField;
    qrRprintfactexINVKIND: TFloatField;
    qrRprintfactexINVGRP: TFloatField;
    qrRprintfactexINVNUM: TStringField;
    qrRprintfactexINVDTE: TStringField;
    qrRprintfactexORDNO: TStringField;
    qrRprintfactexINVLCNO: TStringField;
    qrRprintfactexINVSTAT: TFloatField;
    qrRprintfactexINVROW: TFloatField;
    qrRprintfactexCUSTNO: TFloatField;
    qrRprintfactexGDS_CODE: TStringField;
    qrRprintfactexCU_CODE: TFloatField;
    qrRprintfactexINVPRICE: TFloatField;
    qrRprintfactexTOTLPRICE: TFloatField;
    qrRprintfactexKASRVAL: TFloatField;
    qrRprintfactexEZAFEHVAL: TFloatField;
    qrRprintfactexCU_NAME: TStringField;
    qrRprintfactexCUSTNAME: TStringField;
    qrRprintfactexGDS_DESCL: TStringField;
    qrRprintfactexINTMGOODS: TStringField;
    qrRprintfactexCUSTADD: TStringField;
    qrRprintfactexCOUNTERY_CODE: TFloatField;
    qrRprintfactexCUSECO: TStringField;
    qrRprintfactexCOUNTRY_NAME: TStringField;
    qrRprintfactexCNTCODE: TStringField;
    qrRprintfactintCNTCODE: TStringField;
    qrRprintfactintKASRVAL: TFloatField;
    qrRprintfactintEZAFEHVAL: TFloatField;
    qrRprintfactexCF_ORDERDATE: TIntegerField;
    qrRprintfactintCF_ORDERDTE: TIntegerField;
    qrRSaleKalaGDS_CODE: TStringField;
    qrRSaleKalaGDS_DESCF: TStringField;
    qrRSaleKalaSUM_COL_A: TFloatField;
    qrRSaleKalaSUM_QTY_A: TFloatField;
    qrRSaleKalaSUM_COL_B: TFloatField;
    qrRSaleKalaSUM_QTY_B: TFloatField;
    QrROrder: TQuery;
    dsROrder: TDataSource;
    QrROrderORDNO: TStringField;
    QrROrderORDDATE: TStringField;
    QrROrderPRFNUM: TFloatField;
    QrROrderPRFDATE: TStringField;
    QrROrderCUSTNAME: TStringField;
    QrROrderGDS_CODE: TStringField;
    QrROrderGDS_DESCL: TStringField;
    QrROrderORDQTY: TFloatField;
    QrROrderCU_NAME: TStringField;
    QrROrderORDPRICE: TFloatField;
    QrROrderTOTPRICE: TFloatField;
    QrROrderORDLVDTE: TStringField;
    qrRprintfactexINVZONE: TStringField;
    qrRprintfactexINVSHPMNT: TStringField;
    qrRprintfactexINVDESC: TStringField;
    qrRprintfactintITMTYP: TFloatField;
    qrRVch: TQuery;
    dsRVch: TDataSource;
    qrRVchVCHYEAR: TFloatField;
    qrRVchVCHNO: TFloatField;
    qrRVchVCHTYP: TFloatField;
    qrRVchVCHDTE: TStringField;
    qrRVchVCHDESC: TStringField;
    qrRVchVCHSTAT: TFloatField;
    qrRVchVSEQ: TFloatField;
    qrRVchVDESC: TStringField;
    qrRVchVDEBIT: TFloatField;
    qrRVchVCREDIT: TFloatField;
    qrRVchMOIN_CODE: TFloatField;
    qrRVchMOIN_NAME: TStringField;
    dsRDiffDet: TDataSource;
    qrRDiffDet: TQuery;
    qrRDiffSum: TQuery;
    dsRDiffSum: TDataSource;
    qrRDiffSumGDS_CODE: TStringField;
    qrRDiffSumGDS_DESCF: TStringField;
    qrRDiffSumITMQTY: TFloatField;
    qrRDiffSumTOTLPRICE: TFloatField;
    qrRDiffSumFINITMVAL: TFloatField;
    qrRDiffSumMANDEH: TFloatField;
    qrRprintsrvfactCUSTTEL: TStringField;
    qrRprintsrvfactFAX_NO: TStringField;
    qrRprintsrvfactPOSTCODE: TStringField;
    qrRVchTAFSILY_CODE: TFloatField;
    qrRVchTAFSILY_NAME: TStringField;
    qrTemp1: TQuery;
    qrRprintsrvfactCUSTADD: TStringField;
    qrRprintfactintITMHVLNO: TFloatField;
    qrRprintfactintITHHVLDTE: TStringField;
    qrRVchSEC_TAF_CODE: TFloatField;
    qrRInFactOFNUM: TStringField;
    qrRPishSalOFNUM: TStringField;
    qrRprintfactintOFNUM: TStringField;
    qrRInFactHavale: TQuery;
    dsRInFactHavale: TDataSource;
    qrRInFactHavaleSTK_CODE: TFloatField;
    qrRInFactHavaleDOC_M_CODE: TFloatField;
    qrRInFactHavaleCUSTNAME: TStringField;
    qrRInFactHavaleOFNUM: TStringField;
    qrRInFactHavaleGDS_CODE: TStringField;
    qrRInFactHavaleGDS_DESCF: TStringField;
    qrRInFactHavaleITMNO: TFloatField;
    qrRInFactHavaleITMDTE: TStringField;
    qrRInFactHavaleITMSTAT: TFloatField;
    qrRInFactHavaleDOC_M_DATE: TStringField;
    qrRprintfactintITMQTY: TFloatField;
    qrRprintfactexINVQTY: TFloatField;
    qrRRejFactOFNUM: TStringField;
    qrROfferCust: TQuery;
    dsROfferCust: TDataSource;
    qrRInFactITMHVLNO: TFloatField;
    qrRInFactITMROW: TFloatField;
    qrRInFact1: TQuery;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField10: TFloatField;
    StringField8: TStringField;
    FloatField11: TFloatField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    FloatField12: TFloatField;
    StringField12: TStringField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField22: TFloatField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField18: TStringField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField26: TFloatField;
    dsRInFact1: TDataSource;
    qrRServSRVDESC: TStringField;
    qrRprintsrvfactSRVDESC: TStringField;
    qrRGardeshFNO: TFloatField;
    qrRGardeshFDATE: TStringField;
    qrRGardeshFKIND: TStringField;
    qrRGardeshBED: TFloatField;
    qrRGardeshBES: TFloatField;
    qrRGardeshCUSTNAME: TStringField;
    qrRGardeshOFNUM: TStringField;
    qrRGardeshCNTCODE: TStringField;
    qrRGardeshADVAL: TFloatField;
    qrRKasrEzafeFact: TQuery;
    dsRKasrEzafeFact: TDataSource;
    qrRKasrEzafeFactADCODE: TFloatField;
    qrRKasrEzafeFactADTYPE: TFloatField;
    qrRKasrEzafeFactADFNAME: TStringField;
    qrRKasrEzafeFactADKIND: TFloatField;
    qrRKasrEzafeFactITMNO: TFloatField;
    qrRKasrEzafeFactADVAL: TFloatField;
    qrRKasrEzafeFactCUSTNO: TFloatField;
    qrRKasrEzafeFactCUSTNAME: TStringField;
    qrRKasrEzafeFactOFNUM: TStringField;
    qrRGardeshBriefADVAL: TFloatField;
    qrRQtyCardInt: TQuery;
    dsRQtyCardInt: TDataSource;
    qrRQtyCardExt: TQuery;
    dsRQtyCardExt: TDataSource;
    qrRQtyCardIntGDS_CODE: TStringField;
    qrRQtyCardIntITMKIND: TFloatField;
    qrRQtyCardIntOFNUM: TStringField;
    qrRQtyCardIntOFDATE: TStringField;
    qrRQtyCardIntITMDTE: TStringField;
    qrRQtyCardIntITMQTY: TFloatField;
    qrRQtyCardExtGDS_CODE: TStringField;
    qrRQtyCardExtITMKIND: TFloatField;
    qrRQtyCardExtOFNUM: TStringField;
    qrRQtyCardExtOFDATE: TStringField;
    qrRQtyCardExtITMNO: TStringField;
    qrRQtyCardExtITMDTE: TStringField;
    qrRQtyCardExtITMQTY: TFloatField;
    qrRQtyCardIntITMNO: TFloatField;
    qrRQtyCardIntQTY: TFloatField;
    qrRQtyCardExtQTY: TFloatField;
    qrRQtyCardIntDOC_M_CODE: TFloatField;
    qrRQtyCardExtDOC_M_CODE: TFloatField;
    qrRAmntCardInt: TQuery;
    dsRAmntCardInt: TDataSource;
    qrRAmntCardExt: TQuery;
    dsRAmntCardExt: TDataSource;
    qrRAmntCardExtITMKIND: TFloatField;
    qrRAmntCardExtOFNUM: TStringField;
    qrRAmntCardExtOFDATE: TStringField;
    qrRAmntCardExtITMNO: TStringField;
    qrRAmntCardExtITMDTE: TStringField;
    qrRAmntCardExtBED: TFloatField;
    qrRAmntCardExtBES: TFloatField;
    qrRAmntCardExtKASRVAL: TFloatField;
    qrRAmntCardExtEZAFEHVAL: TFloatField;
    qrRAmntCardExtCUSTNO: TFloatField;
    qrRAmntCardIntITMKIND: TFloatField;
    qrRAmntCardIntOFNUM: TStringField;
    qrRAmntCardIntOFDATE: TStringField;
    qrRAmntCardIntITMNO: TStringField;
    qrRAmntCardIntITMDTE: TStringField;
    qrRAmntCardIntBED: TFloatField;
    qrRAmntCardIntBES: TFloatField;
    qrRAmntCardIntKASRVAL: TFloatField;
    qrRAmntCardIntEZAFEHVAL: TFloatField;
    qrRAmntCardIntCUSTNO: TFloatField;
    qrRAmntCardIntMFOROOSH: TFloatField;
    qrRAmntCardExtMFOROOSH: TFloatField;
    qrRAmntCardExtCUSTNAME: TStringField;
    qrRAmntCardIntCUSTNAME: TStringField;
    qrRQtyCardIntCUSTNO: TFloatField;
    qrRQtyCardIntCUSTNAME: TStringField;
    qrRQtyCardExtCUSTNO: TFloatField;
    qrRQtyCardExtCUSTNAME: TStringField;
    qrRAmntCardExtCU_NAME: TStringField;
    qrRAmntCardExtMFOROOSH2: TFloatField;
    qrRCustomECONOMIC_CODE: TStringField;
    qrRCustomCUSTNO: TFloatField;
    qrRCustomCUST_EMAIL: TStringField;
    qrRGardeshCUSTNO: TFloatField;
    qrRDiffDetCUSTNO: TFloatField;
    qrRDiffDetCUSTNAME: TStringField;
    qrRDiffDetGDS_CODE: TStringField;
    qrRDiffDetGDS_DESCF: TStringField;
    qrRDiffDetITMQTY: TFloatField;
    qrRDiffDetSALE_RATE: TFloatField;
    qrRDiffDetITMPRICE: TFloatField;
    qrRDiffDetMANDEH: TFloatField;
    qrRDiffDetITMDTE: TStringField;
    qrRIso: TQuery;
    dsRIso: TDataSource;
    qrRIsoCUSTNAME: TStringField;
    qrRIsoORD_CODE: TFloatField;
    qrRIsoORD_DATE: TStringField;
    qrRIsoPACK_QTY: TFloatField;
    qrRIsoPACK_TYPE: TFloatField;
    qrRIsoAL_DARSAD: TStringField;
    qrRIsoDANE_BANDI: TStringField;
    qrRIsoBASTE: TStringField;
    qrRIsoANALIZ: TFloatField;
    qrRIsoDANEBANDI: TFloatField;
    qrRIsoTVL_DATE: TStringField;
    qrTmpCreate: TQuery;
    qrTmpInsert: TQuery;
    qrTmpSelect: TQuery;
    qrRDiagram: TQuery;
    dsRDiagram: TDataSource;
    qrRDiagramORDROW: TFloatField;
    qrRDiagramTVLDATE: TFloatField;
    qrRAmar: TQuery;
    dsRAmar: TDataSource;
    qrRAmarGDS_CODE: TStringField;
    qrRAmarGDS_DESCF: TStringField;
    qrRAmarITMMONTH: TStringField;
    qrRAmarITMDTE: TStringField;
    qrRAmarCUSTNAME: TStringField;
    qrRAmarITMNO: TFloatField;
    qrRAmarGDS_SIZE: TStringField;
    qrRAmarAL_DARSAD: TStringField;
    qrRAmarINFO_DESC: TStringField;
    qrRAmarITMQTY: TFloatField;
    qrRAmarITMPRICE: TFloatField;
    qrRAmarPREPAY: TFloatField;
    qrRAmarTOTALVALUE: TFloatField;
    qrRCustomCUSTTYPE_DESC: TStringField;
    qrRCustomDR_DESC: TStringField;
    qrRCustomV_CODE: TStringField;
    qrRCustomV_NAME: TStringField;
    qrRCustomDR_CODE: TFloatField;
    qrRCustomCK_DESC: TStringField;
    qrRReturnCust: TQuery;
    dsRReturnCust: TDataSource;
    qrRReturnCustR_CODE: TFloatField;
    qrRReturnCustR_DATE: TStringField;
    qrRReturnCustOFNUM: TStringField;
    qrRReturnCustGDS_CODE: TStringField;
    qrRReturnCustGDS_DESCF: TStringField;
    qrRReturnCustR_RESONE: TFloatField;
    qrRReturnCustREPTYPE: TFloatField;
    qrRReturnCustR_OFFER: TFloatField;
    qrRReturnCustOFQTY: TFloatField;
    qrRReturnCustR_QTY: TFloatField;
    qrRReturnCustRETURN_GROSS: TFloatField;
    qrRReturnCustRETURN_DISCOUNT: TFloatField;
    qrRReturnCustCUSTNAME: TStringField;
    qrRReturnCustSTK_NAME: TStringField;
    qrRReturnCustR_OFFER_PRICE: TFloatField;
    qrRReturnCustCUSTNO: TFloatField;
    qrRReturnCustORD_DELV_NO: TFloatField;
    qrRReturnCustV_NAME: TStringField;
    qrROfferCustCUSTNO: TFloatField;
    qrROfferCustCUSTNAME: TStringField;
    qrROfferCustOFNUM: TStringField;
    qrROfferCustOFDATE: TStringField;
    qrROfferCustGDS_CODE: TStringField;
    qrROfferCustGDS_DESCF: TStringField;
    qrROfferCustSTK_CODE: TFloatField;
    qrROfferCustSTK_NAME: TStringField;
    qrROfferCustUNT_DESC: TStringField;
    qrROfferCustOFQTY: TFloatField;
    qrROfferCustTOTLSUM: TFloatField;
    qrROfferCustDISCOUNT_AMOUNT: TFloatField;
    qrROfferCustORDNO: TFloatField;
    qrROfferCustORD_DELV_NO: TFloatField;
    qrROfferCustV_NAME: TStringField;
    qrROfferCustDISCOUNT_CASH_AMOUNT: TFloatField;
    qrRReturnCustRETURN_CASH_DISCOUNT: TFloatField;

  procedure SortGetText(Sender: TField; var Text: String; DisplayText: Boolean);
  procedure SortSetText(Sender: TField; const Text: String);
  procedure DataModuleCreate(Sender: TObject);
  procedure qrRIdTechCalcFields(DataSet: TDataSet);
    procedure qrROfferCustORDNOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qrRReturnCustR_OFFERGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);


  private
    FDM_Report: TDM_Report;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Report: TDM_Report;

implementation

uses Functions;

{$R *.DFM}
//==============================================================================
procedure TDM_Report.SortGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text := MbDb2St(Sender.AsString, MbCurrentCharSetCode);
end;

//==============================================================================
procedure TDM_Report.SortSetText(Sender: TField; const Text: String);
begin
  Sender.AsString := MbSt2Db(Text, MbCurrentCharSetCode);
end;

//==============================================================================

procedure TDM_Report.DataModuleCreate(Sender: TObject);
begin
  MbConvertSchemaOfUpdateSqlAndQuery(Self);
end;

procedure TDM_Report.qrRIdTechCalcFields(DataSet: TDataSet);
begin
 DataSet.FieldByName('CF_GDSDESC').AsString := FindGdsFDesc(DataSet.FieldByName('GDS_CODE').AsString);
end;

procedure TDM_Report.qrROfferCustORDNOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString = '1' then Text := '�ǘ���';
  if Sender.AsString = '2' then Text := '���';
end;

procedure TDM_Report.qrRReturnCustR_OFFERGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString = '1' then Text := '�ǘ���';
  if Sender.AsString = '2' then Text := '���';
  if Sender.AsString = '3' then Text := '����� �ǘ��� ';
end;

end.
