{$I Direct.Inc}
unit DVchSale;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus,DbTables, {$I MbUses.Inc};

type
  TFrmDVchSale = class(TMbForm)
    panButton: TPanel;
    stbMain: TStatusBar;
    SpdBtnExit: TSpeedButton;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label6: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    DBEdit12: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    Button2: TButton;
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
  FrmDVchSale: TFrmDVchSale;

implementation

uses MainUnit, HCustom, HBidVch, HSalesProp, EPeyvast,
  HCnt, ECntLaw, HArz, Utility;

{$R *.DFM}

procedure TFrmDVchSale.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmDVchSale.SpeedButton2Click(Sender: TObject);
begin
 MainForm.acHCustom.Execute;
 FrmHCustom.ShowModal;
end;

procedure TFrmDVchSale.SpeedButton3Click(Sender: TObject);
begin
 MainForm.acHArz.Execute;
 FrmHArz.ShowModal;
end;

procedure TFrmDVchSale.SpeedButton1Click(Sender: TObject);
begin
 MainForm.acHCustom.Execute;
 FrmHCustom.ShowModal;
end;

procedure TFrmDVchSale.Button1Click(Sender: TObject);
begin
 MainForm.acECntLaw.Execute;
// FrmECntLaw.ShowModal;
end;

procedure TFrmDVchSale.Button2Click(Sender: TObject);
begin
 MainForm.acDFilter.Execute;
end;

procedure TFrmDVchSale.FormCreate(Sender: TObject);
begin
  SetFormColor(Self,_FormColor);
end;

end.
