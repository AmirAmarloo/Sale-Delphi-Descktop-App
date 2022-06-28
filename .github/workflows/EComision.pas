{$I Direct.Inc}
unit EComision;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, ExtCtrls, DB, DBTables, Mask, ppBands,
  ppCache, ppClass, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppDBBDE, ppCtrls, ppPrnabl,
  {$I MbUses.Inc};

type
  TfrmEComision = class(TMbForm)
    panButton: TPanel;
    sbExportToExcel: TSpeedButton;
    stbCreate: TStatusBar;
    bbPrint: TBitBtn;
    bbPreview: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    edLoVCode: TEdit;
    edHiVCode: TEdit;
    edLoDate: TMaskEdit;
    edHiDate: TMaskEdit;
    qrEComision: TQuery;
    dsEComision: TDataSource;
    qrEComisionORD_DELV_NO: TFloatField;
    qrEComisionV_NAME: TStringField;
    qrEComisionCOUNTOFNUM: TFloatField;
    qrEComisionGROSSAMOUNT: TFloatField;
    qrEComisionTOTALDIST: TFloatField;
    qrEComisionRETURNPRICE: TFloatField;
    qrEComisionNETAMOUNT: TFloatField;
    qrEComisionCOUNTGDS: TFloatField;
    qrEComisionRETOF: TFloatField;
    qrEComisionP_DESC: TStringField;
    qrEComisionP_RATE: TFloatField;
    qrEComisionPAYPERFACT: TFloatField;
    qrEComisionPN_AMOUNT: TFloatField;
    qrEComisionOP_AMOUNT: TFloatField;
    qrEComisionGROSSPAY: TFloatField;
    ppReport1: TppReport;
    ppBDEPipeline1: TppBDEPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppShape1: TppShape;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLine2: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel12: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLabel17: TppLabel;
    pplbRepTime: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure pplbRepTimePrint(Sender: TObject);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure ppLabel19GetText(Sender: TObject; var Text: String);
    procedure ppLabel20GetText(Sender: TObject; var Text: String);
    procedure bbPreviewClick(Sender: TObject);
    procedure sbExportToExcelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEComision: TfrmEComision;

implementation

uses Help, Functions, Vars, UMessage, Utility, Utitlty;

{$R *.dfm}

procedure TfrmEComision.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEComision.SpeedButton1Click(Sender: TObject);
var
  Code: string;
begin
  if HelpVisitor(Code) then
  begin
    edLoVCode.SetFocus;
    edLoVCode.Text := Code;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEComision.SpeedButton2Click(Sender: TObject);
var
  Code: string;
begin
  if HelpVisitor(Code) then
  begin
    edHiVCode.SetFocus;
    edHiVCode.Text := Code;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmEComision.pplbRepTimePrint(Sender: TObject);
begin
  pplbRepTime.Text := ReportTime;
end;

procedure TfrmEComision.ppLabel4GetText(Sender: TObject; var Text: String);
begin
  if edLoDate.Text = '' then Exit;
  Text := MbFormatDate1(edLoDate.Text);
end;

procedure TfrmEComision.ppLabel5GetText(Sender: TObject; var Text: String);
begin
  if edHiDate.Text = '' then Exit;
  Text := MbFormatDate1(edHiDate.Text);
end;

procedure TfrmEComision.ppLabel19GetText(Sender: TObject;
  var Text: String);
begin
  if edLoVCode.Text = '' then Exit;
  Text := edLoVCode.Text;
end;

procedure TfrmEComision.ppLabel20GetText(Sender: TObject;
  var Text: String);
begin
  if edHiVCode.Text = '' then Exit;
  Text := edHiVCode.Text;
end;

procedure TfrmEComision.bbPreviewClick(Sender: TObject);
begin
  with qrEComision do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ALLDTA.ORD_DELV_NO, V_NAME, COUNTOFNUM,');
    SQL.Add('  GROSSAMOUNT, TOTALDIST, RETURNPRICE, NETAMOUNT, ROUND(COUNTGDS / COUNTOFNUM, 2) COUNTGDS, NVL(RETOF, 0)RETOF,');
    SQL.Add('  P_DESC, P_RATE, NVL(P_RATE, 0) * NVL(NETAMOUNT, 0) PAYPERFACT, PN_AMOUNT, OP_AMOUNT,');
    SQL.Add('  ((NVL(P_RATE, 0) * NVL(NETAMOUNT, 0))/100) - NVL(PN_AMOUNT, 0) GROSSPAY');
    SQL.Add('FROM');
    SQL.Add('(');
    SQL.Add('  SELECT COUNT(OFNUM)RETOF, ORD_DELV_NO');
    SQL.Add('  FROM OFFER_V');
    SQL.Add('  WHERE PACK_TYPE <> 9');
    SQL.Add('    AND TAFSILY_YEAR = :YEAR');
    SQL.Add('    AND OFDATE BETWEEN :LODATE AND :HIDATE');
    SQL.Add('    AND SECTAFSILY_CODE IS NOT NULL');
    SQL.Add('  HAVING SUM(NVL(R_QTY, 0)) = SUM(NVL(OFQTY, 0))');
    SQL.Add('  GROUP BY ORD_DELV_NO');
    SQL.Add(')CNTOFRET,');
    SQL.Add('(');
    SQL.Add('SELECT COUNT(GDS_CODE)COUNTGDS, ORD_DELV_NO');
    SQL.Add('FROM OFFERTIT_T T, OFFERDTL_T D');
    SQL.Add('WHERE T.ORD_DELV_NO BETWEEN :LOVISTOR AND :HIVISITOR');
    SQL.Add('  AND NVL(OFDLVPLACE, 0) <> 1');
    SQL.Add('  AND TAFSILY_YEAR = :YEAR');
    SQL.Add('  AND TAFSILY_YEAR = CU_CODE');
    SQL.Add('  AND PACK_TYPE <> 9');
    SQL.Add('  AND OFDATE BETWEEN :LODATE AND :HIDATE');
    SQL.Add('  AND D.OFNUM = T.OFNUM');
    SQL.Add('GROUP BY ORD_DELV_NO');
    SQL.Add(')CNTGDS,');
    SQL.Add('(');
    SQL.Add('SELECT T.ORD_DELV_NO, V_NAME, COUNTOFNUM, NVL(P_RATE, 0) P_RATE, P_DESC,');
    SQL.Add('  SUM(NVL(GROSSAMOUNT, 0))GROSSAMOUNT,');
    SQL.Add('  ROUND((SUM(NVL(SUMOFDIST, 0)) + SUM(NVL(ADVAL, 0))) - SUM(NVL(SUMTAX, 0))) TOTALDIST,');
    SQL.Add('  SUM(NVL(RETURNPRICE, 0))RETURNPRICE,');
    SQL.Add('  ROUND(SUM((NVL(GROSSAMOUNT, 0) - (NVL(SUMOFDIST, 0) + NVL(ADVAL, 0))) + NVL(SUMTAX, 0)) - SUM(NVL(RETURNPRICE, 0)))NETAMOUNT,');
    SQL.Add('  PN_AMOUNT, OP_AMOUNT');
    SQL.Add('FROM VISITOR_T VS, POSITION_T,');
    SQL.Add('(');
    SQL.Add('  SELECT SUM(NVL(PN_AMOUNT, 0))PN_AMOUNT, PN_VCODE FROM PENALTY_T');
    SQL.Add('  WHERE PN_DATE BETWEEN :LODATE AND :HIDATE');
    SQL.Add('    AND PN_VCODE BETWEEN :LOVISTOR AND :HIVISITOR');
    SQL.Add('  GROUP BY PN_VCODE');
    SQL.Add(')P,');
    SQL.Add('(');
    SQL.Add('  SELECT SUM(OP_AMOUNT)OP_AMOUNT, OP_IDNO FROM PAYROLL.P130_T');
    SQL.Add('  WHERE OP_YEAR = :YEAR');
    SQL.Add('    AND OP_MONTH BETWEEN SUBSTR(:LODATE, 5, 2) AND SUBSTR(:HIDATE, 5, 2)');
    SQL.Add('    AND OP_OBJECT = 9001');
    SQL.Add('  GROUP BY OP_IDNO');
    SQL.Add(')PAY,');
    SQL.Add('(');
    SQL.Add('  SELECT ADNUM2, ADVAL FROM VALIDITY_T');
    SQL.Add('  WHERE ADCODE = 0');
    SQL.Add('    AND ADNUM3 = :YEAR');
    SQL.Add(')V,');
    SQL.Add('(');
    SQL.Add('  SELECT ORD_DELV_NO, OFNUM,');
    SQL.Add('    COUNT(O.GDS_CODE)COUNTGDS, COUNT(OFNUM)COUNTOFNUM,');
    SQL.Add('    SUM(NVL(GROSS_AMOUNT, 0))GROSSAMOUNT, SUM(NVL(DISCOUNT_AMOUNT, 0))SUMOFDIST,');
    SQL.Add('    SUM(NVL(TAX_AMOUNT, 0))SUMTAX, SUM(NVL(RETURN_GROSS, 0))RETURNPRICE');
    SQL.Add('  FROM OFFER_V O, GOODSINFO_T G');
    SQL.Add('  WHERE ORD_DELV_NO BETWEEN :LOVISTOR AND :HIVISITOR');
    SQL.Add('    AND TAFSILY_YEAR = :YEAR');
    SQL.Add('    AND OFDATE BETWEEN :LODATE AND :HIDATE');
    SQL.Add('    AND O.GDS_CODE = G.GDS_CODE');
    SQL.Add('    AND SECTAFSILY_CODE IS NOT NULL');
    SQL.Add('  GROUP BY ORD_DELV_NO, OFNUM');
    SQL.Add(')T');
    SQL.Add('WHERE T.OFNUM = ADNUM2(+)');
    SQL.Add('  AND V_CODE = T.ORD_DELV_NO');
    SQL.Add('  AND V_PCODE = P_CODE(+)');
    SQL.Add('  AND T.ORD_DELV_NO = PN_VCODE(+)');
    SQL.Add('  AND T.ORD_DELV_NO = OP_IDNO(+)');
    SQL.Add('GROUP BY T.ORD_DELV_NO, V_NAME, COUNTOFNUM, P_RATE, PN_AMOUNT, P_DESC, OP_AMOUNT');
    SQL.Add(')ALLDTA');
    SQL.Add('WHERE ALLDTA.ORD_DELV_NO = CNTGDS.ORD_DELV_NO');
    SQL.Add('  AND ALLDTA.ORD_DELV_NO = CNTOFRET.ORD_DELV_NO(+)');
{    SQL.Add('SELECT ALLDTA.ORD_DELV_NO, V_NAME, COUNTOFNUM,');
    SQL.Add('  GROSSAMOUNT, TOTALDIST, RETURNPRICE, NETAMOUNT, ROUND(COUNTGDS / COUNTOFNUM, 2) COUNTGDS, NVL(RETOF, 0)RETOF,');
    SQL.Add('  P_DESC, P_RATE, NVL(P_RATE, 0) * NVL(NETAMOUNT, 0) PAYPERFACT, PN_AMOUNT, OP_AMOUNT,');
    SQL.Add('  ((NVL(P_RATE, 0) * NVL(NETAMOUNT, 0))/100) - NVL(PN_AMOUNT, 0) GROSSPAY');
    SQL.Add('FROM');
    SQL.Add('(');
    SQL.Add('  SELECT COUNT(RETOF.OFNUM)RETOF, ORD_DELV_NO');
    SQL.Add('  FROM');
    SQL.Add('  (');
    SQL.Add('  SELECT OFNUM FROM');
    SQL.Add('  (');
    SQL.Add('  SELECT R_OFNUM, COUNT(R_GDSCODE)R_GDSCODE, SUM(R_QTY)R_QTY');
    SQL.Add('  FROM RETURN_TIT_T RT, RETURN_ROW_T RR');
    SQL.Add('  WHERE RT.R_CODE = RR.R_CODE');
    SQL.Add('    AND R_DATE BETWEEN :LODATE AND :HIDATE');
    SQL.Add('    AND RT.R_YEAR = :YEAR');
    SQL.Add('    AND RT.R_YEAR = RR.R_YEAR');
    SQL.Add('  GROUP BY R_OFNUM');
    SQL.Add('  )RT,');
    SQL.Add('  (');
    SQL.Add('  SELECT OFNUM, COUNT(GDS_CODE)GDS_CODE, SUM(OFQTY)OFQTY');
    SQL.Add('  FROM OFFERDTL_T');
    SQL.Add('  WHERE PACK_TYPE <> 9');
    SQL.Add('  GROUP BY OFNUM');
    SQL.Add('  )OFD');
    SQL.Add('  WHERE OFNUM = R_OFNUM');
    SQL.Add('    AND GDS_CODE = R_GDSCODE');
    SQL.Add('    AND OFQTY = R_QTY');
    SQL.Add('  )RETOF, OFFERTIT_T T');
    SQL.Add('  WHERE T.OFNUM = RETOF.OFNUM');
    SQL.Add('    AND OFDATE BETWEEN :LODATE AND :HIDATE');
    SQL.Add('  GROUP BY ORD_DELV_NO');
    SQL.Add(')CNTOFRET,');
    SQL.Add('(');
    SQL.Add('SELECT COUNT(GDS_CODE)COUNTGDS, ORD_DELV_NO');
    SQL.Add('FROM OFFERTIT_T T, OFFERDTL_T D');
    SQL.Add('WHERE T.ORD_DELV_NO BETWEEN :LOVISTOR AND :HIVISITOR');
    SQL.Add('  AND PACK_TYPE <> 9');
    SQL.Add('  AND OFDATE BETWEEN :LODATE AND :HIDATE');
    SQL.Add('  AND D.OFNUM = T.OFNUM');
    SQL.Add('GROUP BY ORD_DELV_NO');
    SQL.Add(')CNTGDS,');
    SQL.Add('(');
    SQL.Add('SELECT T.ORD_DELV_NO, V_NAME, COUNTOFNUM, NVL(P_RATE, 0) P_RATE, P_DESC,');
    SQL.Add('  SUM(NVL(GROSSAMOUNT, 0))GROSSAMOUNT,');
    SQL.Add('  ROUND((SUM(NVL(SUMOFDIST, 0)) + SUM(NVL(ADVAL, 0))) - SUM(NVL(SUMTAX, 0))) TOTALDIST,');
    SQL.Add('  SUM(NVL(RETURNPRICE, 0))RETURNPRICE,');
    SQL.Add('  ROUND(SUM((NVL(GROSSAMOUNT, 0) - (NVL(SUMOFDIST, 0) + NVL(ADVAL, 0))) + NVL(SUMTAX, 0)) - SUM(NVL(RETURNPRICE, 0)))NETAMOUNT,');
    SQL.Add('  PN_AMOUNT, OP_AMOUNT');
    SQL.Add('FROM VISITOR_T VS, POSITION_T,');
    SQL.Add('(');
    SQL.Add('  SELECT SUM(NVL(PN_AMOUNT, 0))PN_AMOUNT, PN_VCODE FROM PENALTY_T');
    SQL.Add('  WHERE PN_DATE BETWEEN :LODATE AND :HIDATE');
    SQL.Add('    AND PN_VCODE BETWEEN :LOVISTOR AND :HIVISITOR');
    SQL.Add('  GROUP BY PN_VCODE');
    SQL.Add(')P,');
    SQL.Add('(');
    SQL.Add('  SELECT SUM(OP_AMOUNT)OP_AMOUNT, OP_IDNO FROM PAYROLL.P130_T');
    SQL.Add('  WHERE OP_YEAR = :YEAR');
    SQL.Add('    AND OP_MONTH BETWEEN SUBSTR(:LODATE, 5, 2) AND SUBSTR(:HIDATE, 5, 2)');
    SQL.Add('    AND OP_OBJECT = 9001');
    SQL.Add('  GROUP BY OP_IDNO');
    SQL.Add(')PAY,');
    SQL.Add('');
    SQL.Add('(');
    SQL.Add('  SELECT R_OFNUM, SUM(R_QTY * OFPRICE)RETURNPRICE');
    SQL.Add('  FROM RETURN_TIT_T RT, RETURN_ROW_T RR, OFFERDTL_T');
    SQL.Add('  WHERE RT.R_CODE = RR.R_CODE');
    SQL.Add('    AND R_DATE BETWEEN :LODATE AND :HIDATE');
    SQL.Add('    AND RT.R_YEAR = :YEAR');
    SQL.Add('    AND RT.R_YEAR = RR.R_YEAR');
    SQL.Add('    AND OFNUM = R_OFNUM');
    SQL.Add('    AND GDS_CODE = R_GDSCODE');
    SQL.Add('    AND PACK_TYPE <> 9');
    SQL.Add('  GROUP BY R_OFNUM');
    SQL.Add(')RET,');
    SQL.Add('(');
    SQL.Add('  SELECT ADNUM2, ADVAL FROM VALIDITY_T');
    SQL.Add('  WHERE ADCODE = 0');
    SQL.Add(')V,');
    SQL.Add('(');
    SQL.Add('  SELECT COUNT(OFNUM)COUNTOFNUM, ORD_DELV_NO FROM OFFERTIT_T');
    SQL.Add('   WHERE SECTAFSILY_CODE IS NOT NULL');
    SQL.Add('     AND OFDATE BETWEEN :LODATE AND :HIDATE');
    SQL.Add('  GROUP BY ORD_DELV_NO');
    SQL.Add(')CNT,');
    SQL.Add('(');
    SQL.Add('  SELECT ORD_DELV_NO, T.OFNUM,');
    SQL.Add('    SUM(OFQTY* OFPRICE)GROSSAMOUNT, SUM((((OFQTY* OFPRICE) * NVL(ABATE, 0)) /100))SUMOFDIST,');
    SQL.Add('    SUM((((((OFQTY* OFPRICE) - (((OFQTY* OFPRICE) * NVL(ABATE, 0)) /100))) * NVL(GDS_TAX, 0)) /100))SUMTAX');
    SQL.Add('  FROM OFFERTIT_T T, OFFERDTL_T D, GOODSINFO_T G');
    SQL.Add('  WHERE T.ORD_DELV_NO BETWEEN :LOVISTOR AND :HIVISITOR');
    SQL.Add('    AND OFDATE BETWEEN :LODATE AND :HIDATE');
    SQL.Add('    AND D.OFNUM = T.OFNUM');
    SQL.Add('    AND D.GDS_CODE = G.GDS_CODE');
    SQL.Add('    AND SECTAFSILY_CODE IS NOT NULL');
    SQL.Add('  GROUP BY ORD_DELV_NO, T.OFNUM');
    SQL.Add(')T');
    SQL.Add('WHERE T.OFNUM = ADNUM2(+)');
    SQL.Add('  AND T.OFNUM = RET.R_OFNUM(+)');
    SQL.Add('  AND V_CODE = T.ORD_DELV_NO');
    SQL.Add('  AND V_PCODE = P_CODE(+)');
    SQL.Add('  AND CNT.ORD_DELV_NO = T.ORD_DELV_NO');
    SQL.Add('  AND T.ORD_DELV_NO = PN_VCODE(+)');
    SQL.Add('  AND T.ORD_DELV_NO = OP_IDNO(+)');
    SQL.Add('GROUP BY T.ORD_DELV_NO, V_NAME, COUNTOFNUM, P_RATE, PN_AMOUNT, P_DESC, OP_AMOUNT');
    SQL.Add(')ALLDTA');
    SQL.Add('WHERE ALLDTA.ORD_DELV_NO = CNTGDS.ORD_DELV_NO');
    SQL.Add('  AND ALLDTA.ORD_DELV_NO = CNTOFRET.ORD_DELV_NO(+)');}
    ParamByName('LOVISTOR').AsString := edLoVCode.Text;
    ParamByName('HIVISITOR').AsString := edHiVCode.Text;
    ParamByName('LODATE').AsString := edLoDate.Text;
    ParamByName('HIDATE').AsString := edHiDate.Text;
    ParamByName('YEAR').AsInteger := System_YY;
    try
      SQL.SaveToFile('D:\asad.txt');
    except
      SQL.SaveToFile('C:\asad.txt');
    end;
    Open;
    if IsEmpty then
    begin
      MbPrompt(NoReport);
      Exit;
      sbExportToExcel.Enabled := False;
    end;
  end;
  ppLabel13.Caption := ComPanyName;
  ppReport1.Print;
  sbExportToExcel.Enabled := True;
end;

procedure TfrmEComision.sbExportToExcelClick(Sender: TObject);
begin
  ExportToExcel(qrEComision);
end;

procedure TfrmEComision.FormShow(Sender: TObject);
begin
  edLoDate.Text := IntToStr(System_YY) + '0101';
  edHiDate.Text := MbGetMachineDate1;
end;

procedure TfrmEComision.FormCreate(Sender: TObject);
begin
  SetFormColor(Self,_FormColor);
end;

end.
