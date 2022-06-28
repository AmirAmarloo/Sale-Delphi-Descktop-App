{$I Direct.Inc}
unit EExpCom;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus,DbTables, {$I MbUses.Inc};

type
  TFrmEExpCom = class(TMbForm)
    panButton: TPanel;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    stbMain: TStatusBar;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtnPost: TBitBtn;
    BitBtnDelete: TBitBtn;
    SpdBtnExit: TSpeedButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    MaskEdit1: TMaskEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    sbList: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label15: TLabel;
    DBEdit4: TDBEdit;
    DBEdit9: TDBEdit;
    Label7: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    DBEdit13: TDBEdit;
    dbcbKind: TDBComboBox;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    MaskEdit2: TMaskEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Button1: TButton;
    DBGrid2: TDBGrid;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpdBtnExitClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbListClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DbHandle: TMbHandle;
  end;

var
  FrmEExpCom: TFrmEExpCom;

implementation

uses MainUnit, HCustom, HBidVch, HCountry, HProf, HExpCom;

{$R *.DFM}

procedure TFrmEExpCom.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) And (ActiveControl <> dbGrid1) then
  begin
    SelectNext(ActiveControl, True, True);
    Key := #0;
  end;
end;

procedure TFrmEExpCom.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEExpCom.SpeedButton1Click(Sender: TObject);
begin
 MainForm.acHCustom.Execute;
 FrmHCustom.ShowModal;
end;

procedure TFrmEExpCom.sbListClick(Sender: TObject);
begin
 MainForm.acHExpCom.Execute;
 FrmHExpCom.ShowModal;
end;

procedure TFrmEExpCom.SpeedButton2Click(Sender: TObject);
begin
 MainForm.acHCustom.Execute;
 FrmHCustom.ShowModal;
end;

procedure TFrmEExpCom.Button1Click(Sender: TObject);
begin
 MainForm.acEEbtal.Execute;
end;

procedure TFrmEExpCom.FormShow(Sender: TObject);
begin
 dbcbKind.ItemIndex := 0;
end;

end.
