{$I Direct.Inc}

unit DMonth;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, DMUDisplay, StdCtrls, Buttons, ComCtrls, Grids, DBGrids,
  ExtCtrls,{$I MbUses.Inc};

type
  TFrmEMonth = class(TMbForm)
    Panel1: TPanel;
    Label13: TLabel;
    EDGdsCode: TEdit;
    DbgrReq: TDBGrid;
    panButton: TPanel;
    stbMain: TStatusBar;
    BitBtn1: TBitBtn;
    DNumber: TEdit;
    Label1: TLabel;
    RadioButton1: TRadioButton;
    Edit1: TEdit;
    RadioButton2: TRadioButton;
    edName: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);

  private
    FDM_DISPLAY : TDM_Display;
    FM : TMbHandle;
    Procedure SelectData;
    { Private declarations }
  public

     GdsCode,GdsYear,GdsName,ENumber1:String;
    { Public declarations }
  end;

//var
//  FrmEMonth: TFrmEMonth;

implementation

uses DCom;



{$R *.dfm}

procedure TFrmEMonth.FormCreate(Sender: TObject);
begin
{  FDM_DataEntry := TDM_DataEntry(MbDm.GetDM(FDM));
  SetStatusBar(stbMain);
  With FDM_DataEntry Do
  begin
    DsERequest_M.OnStateChange   := Nil;
    DsERequest_M.OnStateChange   := DsERequestStateChange;
    DsERequest_D.OnStateChange   := Nil;
    DsERequest_D.OnStateChange   := DsERequestStateChange;
    qrERequest_M.OnCalcFields    := qrERequest_MCalcFields;
    qrERequest_D.OnCalcFields    := qrERequest_DCalcFields;
    qrERequest_D.BeforeScroll    := qrERequest_DBeforeScroll;
    qrERequest_DRVALUE.OnChange  := qrERequest_DRVALUEChange;
    qrERequest_DFOBRATE.OnChange := qrERequest_DFOBRATEChange;
  end;
 }
end;

procedure TFrmEMonth.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;

end;

procedure TFrmEMonth.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
//  CanClose := CheckChanges(FDM_DataEntry.qrERequest_D, FDM_DataEntry.qrERequest_D,FDM);

end;

procedure TFrmEMonth.FormShow(Sender: TObject);
begin
  EDGdsCode.Text:= TfrmDCom(MbFM.GetFM(ParentFrm)).EGdsCode.Text;
  edName.Text:= TfrmDCom(MbFM.GetFM(ParentFrm)).dbedG_Name.Text;
  ENumber.Text:=TfrmDCom(MbFM.GetFM(ParentFrm)).ENumber.Text;
  GdsYear:=TfrmDCom(MbFM.GetFM(ParentFrm)).EYear.Text;
  GdsCode:=EDGdsCode.Text;
  {  tFrmEMonth.GdsYear:=EYear.text;
  tFrmEMonth.GdsName:=DM_Display.dsDCom.FieldByName('G_NAME').AsString;
  tFrmEMonth.ENumber1:=ENumber.TEXT}
  SelectData;
end;

procedure TFrmEMonth.SelectData;
begin
  With FDM_DISPLAY.QrEMonth,Sql Do
  begin
    Close;
    Clear;
    Add('SELECT YEAR,SUM(WHGD_RECQTY) INTKOL,SUM(WHGD_ISUQTY) EXTKOL,');
    Add('        SUM(WHGD_RECQTY)-SUM(WHGD_ISUQTY)  INHAVE      ');
    Add(' FROM   KHINVENTOR.WH_GOOD                             ');
    Add('  where  WHGD_YEAR=:year                               ');
    if RadioButton1.Checked = true then
      Add(' AND   G_CODE=:G_CODE                               ');
    Add('    GROUP BY WHGD_MON                                  ');
//    if RadioButton1.Checked = true then
    ParamByName('YEAR').AsString := GdsYear;
    if RadioButton1.Checked = true then
      ParamByName('G_CODE').AsString := GdsCode;

    Sql := MbSqlConvert(Sql);
    Open;
  end;

end;

end.
