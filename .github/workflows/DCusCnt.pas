{$I Direct.Inc}
unit DCusCnt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus,DbTables, {$I MbUses.Inc}, DMUDisplay, DFilter;

type
  TFrmDCusCnt = class(TMbForm)
    panButton: TPanel;
    stbMain: TStatusBar;
    SpdBtnExit: TSpeedButton;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button3: TButton;
    procedure SpdBtnExitClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FDM_Display: TDM_Display;
    procedure CntTypeGetText(Sender: TField; var Text: String; DisplayText: Boolean);
  public
    FCntCode: string;
    DbHandle: TMbHandle;
  end;

var
  FrmDCusCnt: TFrmDCusCnt;

implementation

uses MainUnit, HCustom, HBidVch, HSalesProp, EPeyvast, 
  HCnt, ECntLaw, HArz, Utility, Vars, Functions, UMessage, Help;

{$R *.DFM}

procedure TFrmDCusCnt.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmDCusCnt.Button1Click(Sender: TObject);
begin
  FCntCode:= FDM_Display.qrDFilter.FieldByName('CNTCODE').AsString;
  MainForm.acDAghlam.Execute;
end;

procedure TFrmDCusCnt.Button3Click(Sender: TObject);
begin
 MainForm.acDElhagh.Execute;
end;

procedure TFrmDCusCnt.FormCreate(Sender: TObject);
begin
  FDM_Display:= TDM_Display(MbDM.GetDM(FDM));
  SetStatusBar(stbMain);
  SetFormColor(Self,_FormColor);

  with FDM_Display.qrDFilter do
  begin
    FieldByName('CNTTYP').OnGetText:= CntTypeGetText;
  end;
end;

procedure TFrmDCusCnt.FormShow(Sender: TObject);
begin
  with FDM_Display.qrDFilter, SQL do
  begin
    Clear;
    Add('SELECT  I.CNTCODE, I.CNTDTE, I.CNTTYP,              ');
    Add('        ID.CUSTNAME');
    Add('  FROM  IDCONTACT_T I,                      ');
    Add('        IDCUSTOMER_T ID                     ');
    Add('  WHERE CNTCODE BETWEEN :FRCODE AND :TOCODE         ');
    Add('  AND   CNTDTE BETWEEN :FRDATE AND :TODATE          ');
    Add('  AND   I.CUSTNO = ID.CUSTNO                        ');
    ParamByName('FRCODE').AsString:= (MbFM.GetFM(ParentFrm) as TFrmDFilter).FrCntCode;
    ParamByName('TOCODE').AsString:= (MbFM.GetFM(ParentFrm) as TFrmDFilter).ToCntCode;
    ParamByName('FRDATE').AsString:= (MbFM.GetFM(ParentFrm) as TFrmDFilter).FrDate;
    ParamByName('TODATE').AsString:= (MbFM.GetFM(ParentFrm) as TFrmDFilter).ToDate;
    SQL:= MbSqlConvert(SQL);
    Open;
  end;
end;

procedure TFrmDCusCnt.CntTypeGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    _intIntSale: Text:= _stIntSale;
    _intExtSale: Text:= _stExtSale;
  end;
end;

procedure TFrmDCusCnt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

end.
