{$I Direct.Inc}
unit DFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus,DbTables, {$I MbUses.Inc};

type
  TFrmDFilter = class(TMbForm)
    panButton: TPanel;
    stbMain: TStatusBar;
    SpdBtnExit: TSpeedButton;
    BitBtnPost: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    meFrDate: TMaskEdit;
    meToDate: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    edFrContract: TEdit;
    edToContract: TEdit;
    sbFrContract: TSpeedButton;
    sbToContract: TSpeedButton;
    procedure SpdBtnExitClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtnPostClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbFrContractClick(Sender: TObject);
    procedure sbToContractClick(Sender: TObject);
    procedure edFrContractKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edToContractKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edFrContractExit(Sender: TObject);
    procedure edToContractExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure meFrDateExit(Sender: TObject);
    procedure meToDateExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    DbHandle: TMbHandle;
    FrCntCode,
    ToCntCode: string;

    FrDate,
    ToDate: string;
  end;

var
  FrmDFilter: TFrmDFilter;

implementation

uses MainUnit, HCustom, HBidVch, HSalesProp, EPeyvast,
  HCnt, ECntLaw, HArz, Help, Vars, Functions, Utility, UMessage;

{$R *.DFM}

procedure TFrmDFilter.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmDFilter.SpeedButton2Click(Sender: TObject);
begin
 MainForm.acHCustom.Execute;
 FrmHCustom.ShowModal;
end;

procedure TFrmDFilter.SpeedButton3Click(Sender: TObject);
begin
 MainForm.acHArz.Execute;
 FrmHArz.ShowModal;
end;

procedure TFrmDFilter.SpeedButton1Click(Sender: TObject);
begin
 MainForm.acHCustom.Execute;
 FrmHCustom.ShowModal;
end;

procedure TFrmDFilter.Button1Click(Sender: TObject);
begin
 MainForm.acECntLaw.Execute;
// FrmECntLaw.ShowModal;
end;

procedure TFrmDFilter.Button2Click(Sender: TObject);
begin
 MainForm.acEGHCnt.Execute;
end;

procedure TFrmDFilter.BitBtnPostClick(Sender: TObject);
begin
  FrCntCode:= edFrContract.Text;
  ToCntCode:= edToContract.Text;

  FrDate:= meFrDate.Text;
  ToDate:= meToDate.Text;

  MainForm.acDCusCnt.Execute;
end;

procedure TFrmDFilter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MbDB.RollBack(FDB);
  Action:= caFree;
end;

procedure TFrmDFilter.sbFrContractClick(Sender: TObject);
var
  Code: string;
begin
  if HelpCnt(Code) then
  begin
    edFrContract.SetFocus;
    edFrContract.Text:= Code;

    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmDFilter.sbToContractClick(Sender: TObject);
var
  Code: string;
begin
  if HelpCnt(Code) then
  begin
    edToContract.SetFocus;
    edToContract.Text:= Code;

    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmDFilter.edFrContractKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    sbFrContract.Click;
end;

procedure TFrmDFilter.edToContractKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    sbToContract.Click;
end;

procedure TFrmDFilter.edFrContractExit(Sender: TObject);
begin
{  if not (edFrContract.Text = '') then
    if (not ExistCnt(edFrContract.Text)) and (not ExistCnt(edFrContract.Text, _intExport)) then
    begin
      MbError(InvalidCnt);
      edFrContract.SetFocus;
      Exit;
    end;}
end;

procedure TFrmDFilter.edToContractExit(Sender: TObject);
begin
{  if not (edToContract.Text = '') then
    if (not ExistCnt(edToContract.Text)) and (not ExistCnt(edToContract.Text, _intExport)) then
    begin
      MbError(InvalidCnt);
      edToContract.SetFocus;
      Exit;
    end;}
end;

procedure TFrmDFilter.FormShow(Sender: TObject);
begin
  meFrDate.Text:= IntToStr(System_YY) + '0101';
  meToDate.Text:= MbUserDate;
end;

procedure TFrmDFilter.meFrDateExit(Sender: TObject);
begin
  if meFrDate.Text = '' then Exit;

  if not MsDateIsValid1(meFrDate.Text, False) then
  begin
    MbMessage(' «—ÌŒ €Ì— „Ã«“', mtError, [mbOk], mbOk);
    meFrDate.SetFocus;
    meFrDate.Text := MbUserDate;
    meFrDate.SelStart := 0;
    Exit;
  end;
end;

procedure TFrmDFilter.meToDateExit(Sender: TObject);
begin
  if meToDate.Text = '' then Exit;

  if not MsDateIsValid1(meToDate.Text, False) then
  begin
    MbMessage(' «—ÌŒ €Ì— „Ã«“', mtError, [mbOk], mbOk);
    meToDate.SetFocus;
    meToDate.Text := MbUserDate;
    meToDate.SelStart := 0;
    Exit;
  end;
end;

procedure TFrmDFilter.FormCreate(Sender: TObject);
begin
  SetFormColor(Self,_FormColor);
end;

end.
