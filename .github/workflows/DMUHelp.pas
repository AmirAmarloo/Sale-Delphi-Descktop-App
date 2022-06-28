{$I Direct.Inc}
unit DMUHelp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  db, DBTables, {$I MbUses.Inc};
                         
type
  TDM_Help = class(TDataModule)
    qrHCustomer: TQuery;
    dsHCustomer: TDataSource;
    qrHCustomerCUSTNO: TFloatField;
    qrHCustomerCUSTNAME: TStringField;
    qrHCountry: TQuery;
    dsHCountry: TDataSource;
    qrHCountryCOUNTERY_CODE: TFloatField;
    qrHCountryCOUNTRY_NAME: TStringField;
    dsHMoin: TDataSource;
    qrHMoin: TQuery;
    qrHMoinMOIN_CODE: TFloatField;
    qrHMoinMOIN_NAME: TStringField;
    qrHTaf: TQuery;
    dsHTaf: TDataSource;
    qrHTafTAFSILY_CODE: TFloatField;
    qrHTafTAFSILY_NAME: TStringField;
    qrHGds: TQuery;
    dsHGds: TDataSource;
    qrHGdsGDS_CODE: TStringField;
    qrHGdsGDS_DESCF: TStringField;
    qrHGdsGDS_DESCL: TStringField;
    qrHGdsGDS_PRTNO: TStringField;
    qrHGdsUNT_CODE: TFloatField;
    qrHGdsUNT_DESC: TStringField;
    qrHArz: TQuery;
    dsHArz: TDataSource;
    qrHArzCU_CODE: TFloatField;
    qrHArzCU_NAME: TStringField;
    qrHPrj: TQuery;
    dsHPrj: TDataSource;
    qrHPrjPRJCODE: TFloatField;
    qrHPrjPRJDESC: TStringField;
    qrHUnit: TQuery;
    dsHUnit: TDataSource;
    qrHUnitUNT_CODE: TFloatField;
    qrHUnitUNT_DESC: TStringField;
    qrHFinCom: TQuery;
    dsHFinCom: TDataSource;
    qrHFinComGDS_CODE: TStringField;
    qrHFinComGDS_DESCF: TStringField;
    qrHFinComGDS_DESCL: TStringField;
    qrHServ: TQuery;
    dsHServ: TDataSource;
    qrHServSRVCODE: TFloatField;
    qrHServMOIN_CODE: TFloatField;
    qrHServTAFSILY_CODE: TFloatField;
    qrHKasr: TQuery;
    dsHKasr: TDataSource;
    qrHKasrADCODE: TFloatField;
    qrHKasrADFNAME: TStringField;
    qrHKasrADLNAME: TStringField;
    qrHKasrADTYPE: TFloatField;
    qrHKasrADKIND: TFloatField;
    qrHKasrMOIN_YEAR: TFloatField;
    qrHKasrMOIN_CODE: TFloatField;
    qrHKasrTAFSILY_CODE: TFloatField;
    qrHBidVch: TQuery;
    dsHBidVch: TDataSource;
    qrHBidVchBINUM: TStringField;
    qrHBidVchCUSTNO: TFloatField;
    qrHBidVchBIDATE: TStringField;
    qrHBidVchBIPRICE: TFloatField;
    qrHBidVchBIDESC: TStringField;
    qrHBidVchBISTATUS: TFloatField;
    qrHBidVchBIREF: TStringField;
    qrHBidVchPRJCODE: TFloatField;
    qrHBidVchPRJDESC: TStringField;
    qrHBidVchCUSTNAME: TStringField;
    qrHBidVchBIDTYPE: TFloatField;
    qrHIntOffer: TQuery;
    dsHIntOffer: TDataSource;
    qrHIntOfferOFDLVDTE: TStringField;
    qrHIntOfferOFVALDTE: TStringField;
    qrHIntOfferCUSTNO: TFloatField;
    qrHIntOfferCUSTNAME: TStringField;
    qrHIntOfferOFSTAT: TFloatField;
    qrHCustReq: TQuery;
    dsHCustReq: TDataSource;
    qrHCustReqINQNUM: TStringField;
    qrHCustReqCUSTNO: TFloatField;
    qrHCustReqINQDTE: TStringField;
    qrHCustReqINQTYP: TFloatField;
    qrHCustReqINQDESC: TStringField;
    qrHCustReqINQSTAT: TFloatField;
    qrHCustReqINQREF: TStringField;
    qrHCustReqPRJCODE: TFloatField;
    qrHProf: TQuery;
    dsHProf: TDataSource;
    qrHProfPRFNUM: TFloatField;
    qrHProfPRFDATE: TStringField;
    qrHProfCUSTNAME: TStringField;
    dsHOrder: TDataSource;
    qrHOrder: TQuery;
    qrHOrderORDNO: TStringField;
    qrHOrderORDDATE: TStringField;
    qrHOrderPRFNUM: TFloatField;
    qrHOrderCUSTNAME: TStringField;
    qrHCnt: TQuery;
    dsHCnt: TDataSource;
    qrHCntCNTCODE: TStringField;
    qrHCntCNTDTE: TStringField;
    qrHCntPRFNUM: TFloatField;
    qrHCntPRFDATE: TStringField;
    qrHCntCUSTNAME: TStringField;
    qrHCmnt: TQuery;
    DsHCmnt: TDataSource;
    qrHCmntCF_RIDTE: TStringField;
    qrHCmntCNTCODE: TStringField;
    qrHCmntRISRL: TFloatField;
    qrHCmntRIDATE: TStringField;
    qrHFinalCnt: TQuery;
    DsHFinalCnt: TDataSource;
    qrHFinalCntCNTCODE: TStringField;
    qrHFinalCntRISRL: TFloatField;
    qrHFinalCntCNTSUBJ: TStringField;
    qrHIntPart: TQuery;
    dsHIntPart: TDataSource;
    qrHIntPartITMNO: TFloatField;
    qrHIntPartITMDTE: TStringField;
    qrHIntPartITMKIND: TFloatField;
    qrHIntPartITMTYP: TFloatField;
    qrHIntPartITMSTAT: TFloatField;
    qrHIntPartCNTCODE: TStringField;
    qrHIntSer: TQuery;
    DsHIntSer: TDataSource;
    qrHIntSerPRCNO: TFloatField;
    qrHIntSerPRCDTE: TStringField;
    qrHIntSerCUSTNO: TFloatField;
    qrHExpPart: TQuery;
    dsHExpPart: TDataSource;
    qrHExpPartINVSRL: TFloatField;
    qrHExpPartINVNUM: TStringField;
    qrHExpPartINVDTE: TStringField;
    qrHExpPartINVSTAT: TFloatField;
    qrHExpPartORDNO: TStringField;
    qrHExpPartCNTCODE: TStringField;
    qrHExpPartINVGRP: TFloatField;
    qrHExpPartINVKIND: TFloatField;
    qrHIntSerCUSTNAME: TStringField;
    qrHVch: TQuery;
    dsHVch: TDataSource;
    qrHVchVCHNO: TFloatField;
    qrHVchVCHDTE: TStringField;
    qrHVchVCHDESC: TStringField;
    qrHVchVCHTYP: TFloatField;
    qrHIntSerPRCSTAT: TFloatField;
    qrHIntOfferOFNUM: TStringField;
    qrHIntPartOFNUM: TStringField;
    qrHStk: TQuery;
    dsHStk: TDataSource;
    qrHStkSTK_CODE: TFloatField;
    qrHStkSTK_NAME: TStringField;
    qrHHavaleh: TQuery;
    dsHHavaleh: TDataSource;
    qrHHavalehDOC_M_CODE: TFloatField;
    qrHHavalehDOC_M_DATE: TStringField;
    qrHServSRVDESC: TStringField;
    qrHIntOfferOFDATE: TStringField;
    qrHOrderPRFDATE: TStringField;
    qrHCustomerType: TQuery;
    dsHCustomerType: TDataSource;
    qrHCustomerTypeCUSTTYPE_CODE: TFloatField;
    qrHCustomerTypeCUSTTYPE_DESC: TStringField;
    qrHOrd: TQuery;
    dsHOrd: TDataSource;
    qrHOrdORD_CODE: TFloatField;
    qrHOrdORD_DATE: TStringField;
    dsHCenter: TDataSource;
    qrHCenter: TQuery;
    qrHCenterCENTER_CODE: TFloatField;
    qrHCenterCENTER_NAME: TStringField;
    qrHCustomerCUSTGRP: TFloatField;
    qrHCustomerCUSTTYPE_CODE: TFloatField;
    qrHCustomerCUSTADD: TStringField;
    qrHCustomerCUSTPOST: TStringField;
    qrHCustomerCUST_CO: TStringField;
    qrHCustomerCUSTTEL: TStringField;
    qrHCustomerCUSTFAX: TStringField;
    qrHCustomerCUSTMOB: TStringField;
    qrHCustomerCUSTREGISTER: TStringField;
    qrHIntOfferTAFSILY_YEAR: TFloatField;

  procedure SortGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  procedure SortSetText(Sender: TField; const Text: string);
    procedure qrHKasrADTYPEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qrHBidVchBISTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qrHCmntCalcFields(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Help: TDM_Help;

implementation

uses Vars,Functions;

{$R *.DFM}
//==============================================================================
procedure TDM_Help.SortGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text := MbDb2St(Sender.AsString, MbCurrentCharSetCode);
end;

//==============================================================================
procedure TDM_Help.SortSetText(Sender: TField; const Text: String);
begin
  Sender.AsString := MbSt2Db(Text, MbCurrentCharSetCode);
end;

//==============================================================================

procedure TDM_Help.qrHKasrADTYPEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
 If Sender.AsInteger = 1 Then Text := _stAdd;
 If Sender.AsInteger = 2 Then Text := _stSub;
end;

procedure TDM_Help.qrHBidVchBISTATUSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
 If Sender.AsInteger = 1 Then Text := _StNGift;
 If Sender.AsInteger = 2 Then Text := _StGift;
end;

procedure TDM_Help.qrHCmntCalcFields(DataSet: TDataSet);
begin
  Dataset.FieldByName('CF_RIDTE').AsString := FindCntDte(Dataset.FieldByName('CNTCODE').AsString);
end;

end.
