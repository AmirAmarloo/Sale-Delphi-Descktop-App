{$I Direct.Inc}
unit DMUIntSales;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, {$I MbUses.Inc};

type
  TDM_IntSales = class(TDataModule)
    qrETemp: TQuery;
    dsEIntOffer: TDataSource;
    qrEIntOffer: TQuery;
    usEIntOffer: TUpdateSQL;
    qrEIntOfferDet: TQuery;
    dsEIntOfferDet: TDataSource;
    usEIntOfferDet: TUpdateSQL;
    qrEIntOfferDetGDS_DESCF: TStringField;
    qrEIntOfferDetGDS_DESCL: TStringField;
    qrEIntOfferDetUNT_DESC: TStringField;
    qrEIntOfferDetCU_NAME: TStringField;
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
    qrEProdFact_MCF_CustName: TStringField;
    qrEValidity: TQuery;
    UpEValidity: TUpdateSQL;
    DsEValidity: TDataSource;
    qrEValidityADCODE: TFloatField;
    qrEValidityADNUM3: TFloatField;
    qrEValidityADNUM4: TFloatField;
    qrEValidityADNUM5: TFloatField;
    qrEValidityADVAL: TFloatField;
    qrEValidityCF_Kind: TStringField;
    qrEValidityCF_Name: TStringField;
    qrEItmFact: TQuery;
    dsEItmFact: TDataSource;
    usEItmFact: TUpdateSQL;
    usEItmFactDet: TUpdateSQL;
    qrEItmFactDet: TQuery;
    dsEItmFactDet: TDataSource;
    qrEItmFactDetITMNO: TFloatField;
    qrEItmFactDetITMKIND: TFloatField;
    qrEItmFactDetITMROW: TFloatField;
    qrEItmFactDetGDS_CODE: TStringField;
    qrEItmFactDetCU_CODE: TFloatField;
    qrEItmFactDetITMARZPRICE: TFloatField;
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
    qrEIntOfferDetOFPRICE: TFloatField;
    qrEOffValidity: TQuery;
    usEOffValidity: TUpdateSQL;
    dsEOffValidity: TDataSource;
    qrEOffValidityADCODE: TFloatField;
    qrEOffValidityADNUM3: TFloatField;
    qrEOffValidityADNUM4: TFloatField;
    qrEOffValidityADNUM5: TFloatField;
    qrEOffValidityADVAL: TFloatField;
    qrEOffValidityADARZVAL: TFloatField;
    qrEOffValidityADDDESC: TStringField;
    qrEOffValidityADDTYPE: TStringField;
    qrEOffValidityADKIND: TStringField;
    qrEIntOfferDetTOTCOST: TFloatField;
    qrEOffValidityCF_SUM: TFloatField;
    qrEValidityCF_PricKind: TStringField;
    qrEIntOfferOFDATE: TStringField;
    qrEIntOfferOFVALDTE: TStringField;
    qrEIntOfferOFDLVDTE: TStringField;
    qrEIntOfferOFCOMM: TStringField;
    qrEIntOfferOFDESC: TStringField;
    qrEIntOfferOFSTAT: TFloatField;
    qrEIntOfferCUSTNO: TFloatField;
    qrEIntOfferPRJCODE: TFloatField;
    qrEIntOfferCUST_REQNO: TStringField;
    qrRSalePropOFDATE: TStringField;
    qrRSalePropOFVALDTE: TStringField;
    qrRSalePropOFDLVDTE: TStringField;
    qrRSalePropCUSTNO: TFloatField;
    qrRSalePropCUSTNAME: TStringField;
    qrRSalePropCUST_REQNO: TStringField;
    qrRSalePropPRJCODE: TFloatField;
    qrRSalePropPRJDESC: TStringField;
    qrRSalePropOFCOMM: TStringField;
    qrRSalePropGDS_CODE: TStringField;
    qrRSalePropGDS_DESCF: TStringField;
    qrRSalePropGDS_DESCL: TStringField;
    qrRSalePropGDS_UNTS: TFloatField;
    qrRSalePropUNT_DESC: TStringField;
    qrRSalePropOFQTY: TFloatField;
    qrRSalePropOFPRICE: TFloatField;
    qrRSalePropOFDESC: TStringField;
    qrRSalePropTOTLSUM: TFloatField;
    qrEIntOfferCF_CECODE: TStringField;
    qrEIntOfferCF_CUSTNAME: TStringField;
    qrEIntOfferCF_PRJDESC: TStringField;
    qrEProdFact_MCANCELDTE: TStringField;
    qrEIntOfferCUST_REQDATE: TStringField;
    qrRSalePropCUST_REQDATE: TStringField;
    qrEIntOfferAddress: TStringField;
    qrRSalePropCUSTADD: TStringField;
    qrEValidityADARZVAL: TFloatField;
    qrEValidityPART: TFloatField;
    qrEOffValidityADNUM1: TStringField;
    qrEValidityADNUM1: TStringField;
    qrEOffValidityPART: TFloatField;
    qrEIntOfferORD_DELV_NO: TFloatField;
    qrEIntOfferOFNUM: TStringField;
    qrEIntOfferDetOFNUM: TStringField;
    qrEOffValidityADNUM2: TStringField;
    qrEValidityADNUM2: TStringField;
    qrRSalePropOFNUM: TStringField;
    qrRAddADNUM2: TStringField;
    qrEIntOfferDetOFQTY: TFloatField;
    qrEItmFactDetITMQTY: TFloatField;
    qrEProdFact_DSRVDESC: TStringField;
    qrEItmFactITMNO: TFloatField;
    qrEItmFactITMKIND: TFloatField;
    qrEItmFactITMTYP: TFloatField;
    qrEItmFactITMDTE: TStringField;
    qrEItmFactITMSTAT: TFloatField;
    qrEItmFactITMDESC: TStringField;
    qrEItmFactOFNUM: TStringField;
    qrEItmFactCNTCODE: TStringField;
    qrEItmFactRISRL: TFloatField;
    qrEItmFactCANCELDTE: TStringField;
    qrEItmFactUSERID: TStringField;
    qrEItmFactUSERDATE: TDateTimeField;

    procedure SortGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure SortSetText(Sender: TField; const Text: String);
    procedure DataModuleCreate(Sender: TObject);
    procedure qrEIntOfferNewRecord(DataSet: TDataSet);
    procedure qrERespondNewRecord(DataSet: TDataSet);
    procedure qrEProdFact_DPRDPRICEValidate(Sender: TField);
    procedure qrEProdFact_DSRVCODEValidate(Sender: TField);
    procedure qrEProdFact_MNewRecord(DataSet: TDataSet);
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
  DataSet.FieldByName('OFSTAT').AsInteger:= _intNotConfirmed;
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

end.
