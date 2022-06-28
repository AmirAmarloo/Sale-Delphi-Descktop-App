{$I Direct.Inc}
unit DTurnMnt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus,DbTables, {$I MbUses.Inc};

type
  TFrmDTurnMnt = class(TMbForm)
    panButton: TPanel;
    stbMain: TStatusBar;
    SpdBtnExit: TSpeedButton;
    Panel3: TPanel;
    Label6: TLabel;
    DBEdit12: TDBEdit;
    Panel2: TPanel;
    Label7: TLabel;
    Label2: TLabel;
    DBEdit4: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    StringGrid1: TStringGrid;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpdBtnExitClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DbHandle: TMbHandle;
  end;

var
  FrmDTurnMnt: TFrmDTurnMnt;

implementation

uses MainUnit, HCustom, HBidVch, HSalesProp, EPeyvast, HCnt, ECntLaw, HArz,
  Utility;

{$R *.DFM}



procedure TFrmDTurnMnt.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13)  then
  begin
    SelectNext(ActiveControl, True, True);
    Key := #0;
  end;
end;

procedure TFrmDTurnMnt.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmDTurnMnt.SpeedButton2Click(Sender: TObject);
begin
 MainForm.acHCustom.Execute;
 FrmHCustom.ShowModal;
end;

procedure TFrmDTurnMnt.SpeedButton3Click(Sender: TObject);
begin
 MainForm.acHArz.Execute;
 FrmHArz.ShowModal;
end;

procedure TFrmDTurnMnt.SpeedButton1Click(Sender: TObject);
begin
 MainForm.acHCustom.Execute;
 FrmHCustom.ShowModal;
end;

procedure TFrmDTurnMnt.Button1Click(Sender: TObject);
begin
 MainForm.acECntLaw.Execute;
// FrmECntLaw.ShowModal;
end;

procedure TFrmDTurnMnt.Button2Click(Sender: TObject);
begin
 MainForm.acEGHCnt.Execute;
end;

procedure TFrmDTurnMnt.FormCreate(Sender: TObject);
begin
  SetFormColor(Self,_FormColor);
end;

end.
