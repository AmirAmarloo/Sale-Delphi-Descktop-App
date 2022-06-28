{$I Direct.Inc}
unit DMUExtSales;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, {$I MbUses.Inc};

type
  TDM_ExtSales = class(TDataModule)
    qrEExtCust: TQuery;
    usEExtCust: TUpdateSQL;
    dsEExtCust: TDataSource;
    dsEExtCustDet: TDataSource;
    qrEExtCustDet: TQuery;
    usEExtCustDet: TUpdateSQL;
    qrEExtCustINQNUM: TStringField;
    qrEExtCustCUSTNO: TFloatField;
    qrEExtCustINQDTE: TStringField;
    qrEExtCustINQTYP: TFloatField;
    qrEExtCustINQDESC: TStringField;
    qrEExtCustINQSTAT: TFloatField;
    qrEExtCustINQREF: TStringField;
    qrEExtCustPRJCODE: TFloatField;
    qrEExtCustDetINQNUM: TStringField;
    qrEExtCustDetINYROW: TFloatField;
    qrEExtCustDetCU_CODE: TFloatField;
    qrEExtCustDetGDS_CODE: TStringField;
    qrEExtCustDetINYQTY: TFloatField;
    qrEExtCustPRJDESC: TStringField;
    qrEExtCustCOUNTRY_NAME: TStringField;
    qrEExtCustCUSTTEL: TStringField;
    qrEExtCustCUSTPOST: TStringField;
    qrEExtCustCUSTADD: TStringField;
    qrETemp: TQuery;
    qrEExtCustDetCU_NAME: TStringField;
    qrEExtCustDetGDS_DESCL: TStringField;
    qrEExtCustDetGDS_DESCF: TStringField;
    qrEProf: TQuery;
    usEProf: TUpdateSQL;
    dsEProf: TDataSource;
    qrEProfPRFNUM: TFloatField;
    qrEProfPRFDATE: TStringField;
    qrEProfPRFREF: TStringField;
    qrEProfPRFSBJ: TStringField;
    qrEProfPRFTIM: TStringField;
    qrEProfPRFPAY: TFloatField;
    qrEProfPRFSTAT: TFloatField;
    qrEProfCUSTNAME: TStringField;
    qrEProfREQDTE: TStringField;
    qrEProfPRJNAME: TStringField;
    qrEProfCOUNTRY_NAME: TStringField;
    qrEProfDet: TQuery;
    dsEProfDet: TDataSource;
    usEProfDet: TUpdateSQL;
    qrEProfDetGDS_DESCL: TStringField;
    qrEProfDetTOTCOST: TFloatField;
    qrEExtCustDetTOTALPRICE: TFloatField;
    qrEOrder: TQuery;
    usEOrder: TUpdateSQL;
    dsEOrder: TDataSource;
    qrEOrderORDNO: TStringField;
    qrEOrderPRFNUM: TFloatField;
    qrEOrderORDDATE: TStringField;
    qrEOrderORDSUPL: TFloatField;
    qrEOrderORDREF: TStringField;
    qrEOrderORDCREF: TStringField;
    qrEOrderORDCOMM: TStringField;
    dsEOrderDet: TDataSource;
    usEOrderDet: TUpdateSQL;
    qrEOrderDet: TQuery;
    qrEOrderDetORDNO: TStringField;
    qrEOrderDetORDSEQ: TFloatField;
    qrEOrderDetGDS_CODE: TStringField;
    qrEOrderDetORDLVDTE: TStringField;
    qrEOrderCUSTNAME: TStringField;
    qrEOrderPRJNAME: TStringField;
    qrEOrderCOUNTRY_NAME: TStringField;
    qrEOrderDetGDS_DESCL: TStringField;
    qrEOrderDetCU_NAME: TStringField;
    qrEOrderDetTOTCOST: TFloatField;
    qrEOrderINQNUM: TStringField;
    qrEOrderDetCU_CODE: TFloatField;
    qrEExpPart: TQuery;
    usEExpPart: TUpdateSQL;
    dsEExpPart: TDataSource;
    qrEExpPartINVSRL: TFloatField;
    qrEExpPartINVKIND: TFloatField;
    qrEExpPartINVGRP: TFloatField;
    qrEExpPartINVNUM: TStringField;
    qrEExpPartINVDTE: TStringField;
    qrEExpPartCNTCODE: TStringField;
    qrEExpPartRISRL: TFloatField;
    qrEExpPartORDNO: TStringField;
    qrEExpPartINVDESC: TStringField;
    qrEExpPartINVLCNO: TStringField;
    qrEExpPartINVSHPMNT: TStringField;
    qrEExpPartINVZONE: TStringField;
    qrEExpPartINVSTAT: TFloatField;
    qrEExpPartINTMGOODS: TStringField;
    qrEExpPartCANCELDTE: TStringField;
    qrEExpPartCOUNTRY_NAME: TStringField;
    qrEExpPartPRJDESC: TStringField;
    qrEExpPartCUSTNAME: TStringField;
    qrEExpPartFDATE: TStringField;
    qrEExpPartFINALPRICE: TFloatField;
    dsEExpPartDet: TDataSource;
    qrEExpPartDet: TQuery;
    qrEExpPartDetINVSRL: TFloatField;
    qrEExpPartDetINVKIND: TFloatField;
    qrEExpPartDetINVGRP: TFloatField;
    qrEExpPartDetINVROW: TFloatField;
    qrEExpPartDetGDS_CODE: TStringField;
    qrEExpPartDetCU_CODE: TFloatField;
    qrEExpPartDetINVARZPRICE: TFloatField;
    qrEExpPartDetGDS_DESCL: TStringField;
    qrEExpPartDetTOTCOST: TFloatField;
    qrEExpPartDetCU_NAME: TStringField;
    qrEOffValidity: TQuery;
    qrEOffValidityADCODE: TFloatField;
    qrEOffValidityADNUM3: TFloatField;
    qrEOffValidityADNUM4: TFloatField;
    qrEOffValidityADNUM5: TFloatField;
    qrEOffValidityADVAL: TFloatField;
    qrEOffValidityADDDesc: TStringField;
    qrEOffValidityADDTYPE: TStringField;
    dsEOffValidity: TDataSource;
    usEOffValidity: TUpdateSQL;
    qrEOffValidityADARZVAL: TFloatField;
    qrEOrderDetORDPRICE: TFloatField;
    qrEExtCustDetINYPRICE: TFloatField;
    qrEExpPartDetINVPRICE: TFloatField;
    qrEOffValidityADKIND: TStringField;
    qrEProfCUSTNO: TFloatField;
    qrEProfPRJCODE: TFloatField;
    qrEProfCF_CUSTNAME: TStringField;
    qrEProfCF_PRJDESC: TStringField;
    qrEProfDetPRFNUM: TFloatField;
    qrEProfDetPROROW: TFloatField;
    qrEProfDetGDS_CODE: TStringField;
    qrEProfDetPROQTY: TFloatField;
    qrEProfDetPROPRICE: TFloatField;
    qrEProfDetCU_CODE: TFloatField;
    qrEProfDetCU_NAME: TStringField;
    qrEOrderORDSTAT: TFloatField;
    qrEOrderORD_DELV_NO: TFloatField;
    qrEOffValidityADNUM1: TStringField;
    qrEOffValidityPART: TFloatField;
    qrRExpFact2: TQuery;
    IntegerField1: TIntegerField;
    DsRExpFact2: TDataSource;
    qrRExpFact2INVSRL: TFloatField;
    qrRExpFact2INVKIND: TFloatField;
    qrRExpFact2INVGRP: TFloatField;
    qrRExpFact2INVROW: TFloatField;
    qrRExpFact2GDS_CODE: TStringField;
    qrRExpFact2CU_CODE: TFloatField;
    qrRExpFact2INVQTY: TFloatField;
    qrRExpFact2INVPRICE: TFloatField;
    qrRExpFact2INVARZPRICE: TFloatField;
    qrRExpFact2INVSRL_1: TFloatField;
    qrRExpFact2INVKIND_1: TFloatField;
    qrRExpFact2INVGRP_1: TFloatField;
    qrRExpFact2INVNUM: TStringField;
    qrRExpFact2INVDTE: TStringField;
    qrRExpFact2CNTCODE: TStringField;
    qrRExpFact2RISRL: TFloatField;
    qrRExpFact2ORDNO: TStringField;
    qrRExpFact2INVDESC: TStringField;
    qrRExpFact2INVLCNO: TStringField;
    qrRExpFact2INVSHPMNT: TStringField;
    qrRExpFact2INVZONE: TStringField;
    qrRExpFact2INVSTAT: TFloatField;
    qrRExpFact2INTMGOODS: TStringField;
    qrRExpFact2CANCELDTE: TStringField;
    qrRExpFact2CUSTNAME: TStringField;
    qrRExpFact2COUNTRY_NAME: TStringField;
    qrRExpFact2GDS_DESCL: TStringField;
    qrRExpFact2TOTCOST: TFloatField;
    qrRExpFact2CU_NAME: TStringField;
    qrRExpFact2CF_CUSTADD: TStringField;
    qrRExpFact2CNTDTE: TStringField;
    qrRExpFact2INVFDTE: TStringField;
    qrRExpFact2ADDDESC: TStringField;
    qrRExpFact2ADCODE: TFloatField;
    qrRExpFact2ADVAL: TFloatField;
    qrRExpFact2ADKIND: TStringField;
    qrRProf: TQuery;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField1: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    StringField2: TStringField;
    FloatField6: TFloatField;
    StringField3: TStringField;
    dsRProf: TDataSource;
    qrRExpFact: TQuery;
    DsRExpFact: TDataSource;
    qrRExpFactADCODE: TFloatField;
    qrRExpFactADVAL: TFloatField;
    qrRExpFactINVSRL: TFloatField;
    qrRExpFactINVKIND: TFloatField;
    qrRExpFactINVGRP: TFloatField;
    qrRExpFactINVROW: TFloatField;
    qrRExpFactGDS_CODE: TStringField;
    qrRExpFactCOUNTRY_NAME: TStringField;
    qrRExpFactCUSTADD: TStringField;
    qrRExpFactCUSTNAME: TStringField;
    qrRExpFactINVZONE: TStringField;
    qrRExpFactINVSHPMNT: TStringField;
    qrRExpFactINVLCNO: TStringField;
    qrRExpFactINVDESC: TStringField;
    qrRExpFactCNTCODE: TStringField;
    qrRExpFactCNTDTE: TStringField;
    qrRExpFactORDDATE: TStringField;
    qrRExpFactINVNUM: TStringField;
    qrRExpFactINVDTE: TStringField;
    qrRExpFactINVPRICE: TFloatField;
    qrRExpFactADTYPE: TStringField;
    qrRExpFactADDDESC: TStringField;
    qrRExpFactCU_NAME: TStringField;
    qrRExpFactTOTCOST: TFloatField;
    qrRExpFactGDS_DESCL: TStringField;
    qrRExpFactORDNO2: TStringField;
    qrRExpFactCU_CODE: TFloatField;
    qrEOrderPRFDATE: TStringField;
    qrEOrderCUSTNO: TFloatField;
    qrEOrderPRJCODE: TFloatField;
    qrEOrderCOUNTERY_CODE: TFloatField;
    qrEOffValidityADNUM2: TStringField;
    qrEOrderDetORDQTY: TFloatField;
    qrEExpPartDetINVQTY: TFloatField;
    qrRExpFactINVQTY: TFloatField;
    procedure SortGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure SortSetText(Sender: TField; const Text: String);
    procedure DataModuleCreate(Sender: TObject);
    procedure qrEPacking_DPCKQTYValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_ExtSales: TDM_ExtSales;

implementation

uses UMessage;
{$R *.dfm}

{ TDM_ExtSales }

procedure TDM_ExtSales.DataModuleCreate(Sender: TObject);
begin
  MbConvertSchemaOfUpdateSqlAndQuery(Self);
end;

procedure TDM_ExtSales.SortGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text := MbDb2St(Sender.AsString, MbCurrentCharSetCode);
end;

procedure TDM_ExtSales.SortSetText(Sender: TField; const Text: String);
begin
  Sender.AsString := MbSt2Db(Text, MbCurrentCharSetCode);
end;

procedure TDM_ExtSales.qrEPacking_DPCKQTYValidate(Sender: TField);
begin
  If (Sender.AsFloat > 9999999999) Then
  begin
    MbError(RangeErr);
    Abort;
  end;
end;

end.
