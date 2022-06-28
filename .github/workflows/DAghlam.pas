{$I Direct.Inc}
unit DAghlam;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus,DbTables, {$I MbUses.Inc}, DMUDisplay, DCusCnt;

type
  TFrmDAghlam = class(TMbForm)
    panButton: TPanel;
    stbMain: TStatusBar;
    SpdBtnExit: TSpeedButton;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    dbedGdsDescL: TDBEdit;
    Panel1: TPanel;
    Label2: TLabel;
    edCntCode: TEdit;
    procedure SpdBtnExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FDM_Display: TDM_Display;
    procedure CalcField(DataSet: TDataSet);
  public
    { Public declarations }
    DbHandle: TMbHandle;
  end;

var
  FrmDAghlam: TFrmDAghlam;

implementation

uses MainUnit, HCustom, HBidVch, HSalesProp, EPeyvast, 
  HCnt, ECntLaw, HArz, Utility, Vars, UMessage, Functions, Help;

{$R *.DFM}

procedure TFrmDAghlam.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmDAghlam.FormCreate(Sender: TObject);
begin
  FDM_Display:= TDM_Display(MbDM.GetDM(FDM));
  SetStatusBar(stbMain);
  SetFormColor(Self,_FormColor);

  with FDM_Display.qrDAghlam do
  begin
    OnCalcFields:= CalcField;
  end;
end;

procedure TFrmDAghlam.CalcField(DataSet: TDataSet);
begin
  with FDM_Display.qrDTemp, SQL do
  begin
    Clear;
    Add('SELECT GDS_DESCL, GDS_DESCF');
    Add('FROM PSSALES.GOODS');
    Add('WHERE');
    Add('     GDS_CODE = :GDS_CODE');
    ParamByName('GDS_CODE').AsString:= DataSet.FieldByName('GDS_CODE').AsString;
    SQL:= MbSqlConvert(SQL);
    Open;

    DataSet.FieldByName('GDS_DESCF').AsString:= FieldByName('GDS_DESCF').AsString;
    DataSet.FieldByName('GDS_DESCL').AsString:= FieldByName('GDS_DESCL').AsString;
  end;

  with DataSet do
  begin
//    FieldByName('CU_NAME').AsString:= FindArzName(FieldByName('CU_CODE').AsString);
    FieldByName('TOTCOST').AsFloat:= FieldByName('CNTPRICE').AsFloat * FieldByName('CNTQTY').AsFloat;
  end;
end;

procedure TFrmDAghlam.FormShow(Sender: TObject);
begin
  edCntCode.Text:= (MbFM.GetFM(ParentFrm) as TFrmDCusCnt).FCntCode;
  with FDM_Display.qrDAghlam, SQL do
  begin
    Clear;
    Add('SELECT *');
    Add('FROM PSSALES.IDCONTACR_T');
    Add('WHERE');
    Add('     CNTCODE = :CNTCODE');
    Add('ORDER BY CNTROW');
    ParamByName('CNTCODE').AsString:= (MbFM.GetFM(ParentFrm) as TFrmDCusCnt).FCntCode;
    SQL:= MbSqlConvert(SQL);
    Open;
  end;
end;

procedure TFrmDAghlam.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

end.
