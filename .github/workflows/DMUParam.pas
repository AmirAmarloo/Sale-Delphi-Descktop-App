{$I Direct.Inc}
unit DMUParam;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, {$I MbUses.Inc};

type
  TDM_Param = class(TDataModule)
    qrECustomer: TQuery;
    dsECustomer: TDataSource;
    usECustomer: TUpdateSQL;
    qrEFinProd: TQuery;
    dsEFinProd: TDataSource;                      
    usEFinProd: TUpdateSQL;
    qrEFinProdDet: TQuery;
    usEFinProdDet: TUpdateSQL;
    dsEFinProdDet: TDataSource;
    qrEFinProdGDS_CODE: TStringField;
    qrEFinProdFINITMTYP: TFloatField;
    qrEFinProdDetFIN_GDS_CODE: TStringField;
    qrEFinProdDetFINITROW: TFloatField;
    qrEFinProdDetPCKID: TFloatField;
    qrEFinProdDetGDS_CODE: TStringField;
    qrEFinProdDetCU_CODE: TFloatField;
    qrEFinProdDetFINITMVAL: TFloatField;
    qrEFinProdDetMOIN_YEAR: TFloatField;
    qrEFinProdDetMOIN_CODE: TFloatField;
    qrEFinProdDetTAFSILY_CODE: TFloatField;
    qrEFinProdGDS_DESCF: TStringField;
    qrEFinProdGDS_DESCL: TStringField;
    qrEFinProdDetGDS_DESCF: TStringField;
    qrEFinProdDetGDS_DESCL: TStringField;
    qrEFinProdDetUNT: TStringField;
    qrEFinProdDetUNT_DESC: TStringField;
    qrEFinProdDetON_QTY: TFloatField;
    qrEFinProdDetMOIN_NAME: TStringField;
    qrEFinProdDetTAFSILY_NAME: TStringField;
    qrEFinProdDetCU_NAME: TStringField;
    qrEServices: TQuery;
    dsEServices: TDataSource;
    usEServices: TUpdateSQL;
    qrEServicesSRVCODE: TFloatField;
    qrEServicesSRVPRICE: TFloatField;
    qrEServicesMOIN_YEAR: TFloatField;
    qrEServicesMOIN_CODE: TFloatField;
    qrEServicesTAFSILY_CODE: TFloatField;
    qrEServicesMOIN_NAME: TStringField;
    qrEServicesTAFSILY_NAME: TStringField;
    qrETemp: TQuery;
    qrEAddSub: TQuery;
    dsEAddSub: TDataSource;
    usEAddSub: TUpdateSQL;
    qrEAddSubADCODE: TFloatField;
    qrEAddSubADFNAME: TStringField;
    qrEAddSubADLNAME: TStringField;
    qrEAddSubADTYPE: TFloatField;
    qrEAddSubADKIND: TFloatField;
    qrEAddSubMOIN_YEAR: TFloatField;
    qrEAddSubMOIN_CODE: TFloatField;
    qrEAddSubTAFSILY_CODE: TFloatField;
    qrEAddSubMOIN_NAME: TStringField;
    qrEAddSubTAFSILY_NAME: TStringField;
    qrEPacking: TQuery;
    dsEPacking: TDataSource;
    usEPacking: TUpdateSQL;
    qrEPackingDet: TQuery;
    usEPackingDet: TUpdateSQL;
    dsEPackingDet: TDataSource;
    qrEPackingDetPCKID: TFloatField;
    qrEPackingDetPCKROW: TFloatField;
    qrEPackingDetFIN_GDS_CODE: TStringField;
    qrEPackingDetPCKQTY: TFloatField;
    qrEPackingPCKID: TFloatField;
    qrEPackingORDNO: TStringField;
    qrEPackingPCKDATE: TStringField;
    qrEPackingPCKREFID: TStringField;
    qrEPackingPCKCASENO: TFloatField;
    qrEPackingPCKSUPL: TFloatField;
    qrEPackingPCKMAXWTH: TStringField;
    qrEPackingMAXUNT: TFloatField;
    qrEPackingPCKCURWTH: TStringField;
    qrEPackingPURUNT: TFloatField;
    qrEPackingPCKSIZE: TStringField;
    qrEPackingDetGDS_FNAME: TStringField;
    qrEPackingDetGDS_LNAME: TStringField;
    qrETec: TQuery;
    dsETec: TDataSource;
    usETec: TUpdateSQL;
    qrETecTECSRL: TFloatField;
    qrETecTECID: TStringField;
    qrETecTECDESC: TStringField;
    qrETecTECPID: TStringField;
    qrETecTECNO: TFloatField;
    qrETecUNT_CODE: TFloatField;
    qrETecDet: TQuery;
    dsETecDet: TDataSource;
    usETecDet: TUpdateSQL;
    qrETecDetTECSRL: TFloatField;
    qrETecDetTECID: TStringField;
    qrETecDetTECDESC: TStringField;
    qrETecDetTECPID: TStringField;
    qrETecDetTECNO: TFloatField;
    qrETecDetUNT_CODE: TFloatField;
    qrETecDetUNT_DESC: TStringField;
    qrETecDetTemp: TStringField;
    qrETecTECROW: TFloatField;
    qrETecDetTECROW: TFloatField;
    qrETecUNT_DESC: TStringField;
    qrETecGDS_CODE: TStringField;
    qrETecDetGDS_CODE: TStringField;
    qrETecGDS_DESC: TStringField;
    qrEAddSubVALDEF: TFloatField;
    qrEFinProdDetFINITQTY: TFloatField;
    qrEFinProdFINITMKND: TFloatField;
    usETSanavie: TUpdateSQL;
    dsETSanavie: TDataSource;
    qrETSanavie: TQuery;
    qrETSanavieTDATE: TStringField;
    qrETSanavieCUSTNO: TFloatField;
    qrETSanavieSECTAFSILY_CODE: TFloatField;
    qrETSanavieCF_CUSTNAME: TStringField;
    qrETSanavieCF_SEC_TAF_DESC: TStringField;
    qrETSanavieCF_TAF_CODE: TStringField;
    qrETSanavieCF_TAF_NAME: TStringField;
    qrETSanavieTNUM: TStringField;
    qrEAddSubVCH_TYPE: TFloatField;
    qrEServicesSRVDESC: TStringField;
    qrECustType: TQuery;
    dsECustType: TDataSource;
    usECustType: TUpdateSQL;
    qrECustTypeCUSTTYPE_CODE: TFloatField;
    qrECustTypeCUSTTYPE_DESC: TStringField;
    qrECustomerCUSTNO: TFloatField;
    qrECustomerCUSTNAME: TStringField;
    qrECustomerCUSTADD: TStringField;
    qrECustomerCUSTPOST: TStringField;
    qrECustomerCUSTTEL: TStringField;
    qrECustomerCUSTFAX: TStringField;
    qrECustomerCUSTMOB: TStringField;
    qrECustomerCUSTGRP: TFloatField;
    qrECustomerMOIN_CODE: TFloatField;
    qrECustomerMOIN_YEAR: TFloatField;
    qrECustomerTAFSILY_CODE: TFloatField;
    qrECustomerTAFSILY_YEAR: TFloatField;
    qrECustomerECONOMIC_CODE: TStringField;
    qrECustomerCUST_EMAIL: TStringField;
    qrECustomerPERCENT_REDUCTION: TFloatField;
    qrECustomerCUSTTYPE_CODE: TFloatField;
    qrECustomerCUST_DESC: TStringField;
    qrECustomerCUST_CO: TStringField;
    qrECustomerCF_CustGrpDesc: TStringField;
    qrEGds: TQuery;
    dsEGds: TDataSource;
    usEGds: TUpdateSQL;
    qrEGdsGDS_CODE: TStringField;
    qrEGdsGDS_DESC: TStringField;
    qrEGdsGDS_DESC1: TStringField;
    qrEGdsGDS_DESC2: TStringField;
    qrEGdsInfo: TQuery;
    dsEGdsInfo: TDataSource;
    usEGdsInfo: TUpdateSQL;
    qrEGdsInfoGDS_CODE: TStringField;
    qrEGdsInfoSALE_RATE: TFloatField;
    qrEGdsInfoCOST_PACK: TFloatField;
    qrEGdsInfoREDUCTION_PACK: TFloatField;
    qrEGdsInfoCF_GDSDESC: TStringField;
    qrEGdsInfoCF_GDSQTY: TStringField;
    qrEGdsInfoPACK_TYPE: TFloatField;
    qrTmp: TQuery;
    qrEGdsCF_GDSDESC: TStringField;
    qrEGdsInfoAL_DARSAD: TStringField;
    qrEGdsInfoDANE_BANDI: TStringField;
    qrEGdsInfoISO_TYPE: TFloatField;
    qrECustomerCUSTREGISTER: TStringField;
    qrEGdsInfoGDS_ABATE: TFloatField;
    qrEGoodsInfo: TQuery;
    dsEGoodsInfo: TDataSource;
    usEGoodsInfo: TUpdateSQL;
    qrEGoodsInfoINFO_CODE: TFloatField;
    qrEGoodsInfoINFO_DESC: TStringField;
    qrGdsInfo: TQuery;
    FloatField1: TFloatField;
    StringField1: TStringField;
    dsGdsInfo: TDataSource;
    qrEGdsInfoGDS_INFO: TFloatField;
    qrEGdsInfoGDSINFO: TStringField;
    qrEGdsInfoGDS_SIZE: TStringField;
    qrECustomerNAT_CODE: TStringField;
    qrEState: TQuery;
    qrEStateST_CODE: TFloatField;
    qrEStateST_NAME: TStringField;
    usEState: TUpdateSQL;
    dsEState: TDataSource;
    qrECity: TQuery;
    usECity: TUpdateSQL;
    dsECity: TDataSource;
    qrECityCT_CODE: TFloatField;
    qrECityCT_NAME: TStringField;
    qrECityCT_STATE: TFloatField;
    qrECityCF_STATENAME: TStringField;
    qrEOperator: TQuery;
    usEOperator: TUpdateSQL;
    dsEOperator: TDataSource;
    qrEOperatorMS_IDNO: TStringField;
    qrEOperatorUSR_USERNAME: TStringField;
    qrECustomerCUST_CTCODE: TFloatField;
    qrECustomerCUST_STATE: TFloatField;
    qrECustomerCUST_VISITOR: TStringField;
    qrECustomerCUST_ADMIN: TStringField;
    qrECustomerCUST_ADMIN_DATE: TStringField;
    qrECustomerCUST_VISITOR_DATE: TStringField;
    qrECustomerCUST_CONTROL: TStringField;
    qrECustomerCUST_CONTROL_DATE: TStringField;
    qrECustomerCUST_OPRATOR: TStringField;
    qrECustomerCUST_OPRATOR_DATE: TStringField;
    qrECustomerCF_VISITORNAME: TStringField;
    qrECustomerCF_CITYNAME: TStringField;
    qrECustomerCF_STATENAME: TStringField;
    qrECustomerCUST_LICENCE: TFloatField;
    qrECustomerCUST_LICENCE_OTHER: TStringField;
    qrECustomerCUST_LICENCE_CARD: TFloatField;
    qrECustomerCUST_DIR: TFloatField;
    qrECustomerCF_DIRECTDESC: TStringField;
    qrEBox: TQuery;
    dsEBox: TDataSource;
    usEBox: TUpdateSQL;
    qrEBoxBOX_CODE: TFloatField;
    qrEBoxBOX_DESC: TStringField;
    qrEBoxBOX_LENGHT: TFloatField;
    qrEBoxBOX_WIDTH: TFloatField;
    qrEBoxBOX_HEIGHT: TFloatField;
    qrEGdsInfoGDS_BOX: TFloatField;
    qrEGdsInfoCF_BOXDESC: TStringField;
    qrEGdsInfoCF_GDS_UNTS: TStringField;
    qrEGdsInfoCF_GDS_ECX: TFloatField;
    qrEGdsInfoCF_UNT_CODE: TStringField;
    qrEGdsInfoCF_QTY: TIntegerField;
    qrEGdsInfoGDS_USER_PRICE: TFloatField;
    qrEGdsInfoGDS_BUY_RATE: TFloatField;
    qrEGdsInfoGDS_PROFIT_DISPATCH: TFloatField;
    qrEGdsInfoGDS_PROFIT_OBJECT: TFloatField;
    qrEGdsInfoCF_SALERATE: TFloatField;
    qrEGdsInfoGDS_STATUSE: TFloatField;
    qrEGdsInfoGDS_BARCODE: TStringField;
    qrEGdsInfoGDS_WEIGHT: TFloatField;
    qrECustKind: TQuery;
    usECustKind: TUpdateSQL;
    dsECustKind: TDataSource;
    qrECustKindCK_CODE: TFloatField;
    qrECustKindCK_DESC: TStringField;
    qrECustomerCUST_CUSTKIND: TFloatField;
    qrECustomerCF_CUSTKINKD: TStringField;
    qrEBoxBOX_WEIGHT: TFloatField;
    qrECustomerCUST_DRORDER: TFloatField;
    qrECustomerSALECHANNEL: TStringField;
    qrEGdsInfoGDS_TAX: TFloatField;
    qrEGdsInfoGDS_USERPRICE: TFloatField;
    qrECustomerSEND_STAT: TFloatField;
    qrECustomerBR_CODE: TFloatField;
    qrECustTypeSEND_STAT: TFloatField;
    qrEGdsInfoCF_GDSINFO: TStringField;
    qrECustomerCUST_DISTPERSENT: TFloatField;
    qrECustomerCUST_DISTRIAL: TFloatField;
    qrECustomerCUST_DISTQTY: TFloatField;
    qrECustomerCUST_DISTROW: TFloatField;
    qrEGdsInfoCLEARING_DATE: TFloatField;
    qrECustomerCF_CHANNLENAME: TStringField;
    qrECustomerCOUNTERY_CODE: TFloatField;
    qrECustomerCF_COUNTRYNAME: TStringField;
    qrEGdsInfoG_ID: TStringField;
    qrEGdsInfoGDS_EXCHANGE: TFloatField;
    qrECustomerCUSTMIDNAME: TStringField;
    qrECustomerISPERSONEL: TStringField;
    qrECustomerNAGHSH_CODE: TStringField;

    procedure SortGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure SortSetText(Sender: TField; const Text: String);
    procedure DataModuleCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Param: TDM_Param;

implementation


{$R *.DFM}
//==============================================================================
procedure TDM_Param.SortGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text := MbDb2St(Sender.AsString, MbCurrentCharSetCode);
end;

//==============================================================================
procedure TDM_Param.SortSetText(Sender: TField; const Text: String);
begin
  Sender.AsString := MbSt2Db(Text, MbCurrentCharSetCode);
end;

//==============================================================================

procedure TDM_Param.DataModuleCreate(Sender: TObject);
begin
  MbConvertSchemaOfUpdateSqlAndQuery(Self);
end;

end.
