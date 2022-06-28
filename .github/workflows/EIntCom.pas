{$I Direct.Inc}
unit EIntCom;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus,DbTables, {$I MbUses.Inc};

type
  TFrmEIntCom = class(TMbForm)
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
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label6: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    sbList: TSpeedButton;
    SpeedButton2: TSpeedButton;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Button1: TButton;
    DBEdit4: TDBEdit;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    Label4: TLabel;
    Label7: TLabel;
    DBGrid2: TDBGrid;
    Label10: TLabel;
    Label12: TLabel;
    SpeedButton4: TSpeedButton;
    DBEdit2: TDBEdit;
    MaskEdit5: TMaskEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label11: TLabel;
    Label17: TLabel;
    Label13: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label9: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Edit4: TEdit;
    Label19: TLabel;
    Edit5: TEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpdBtnExitClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbListClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbcbStatChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DbHandle: TMbHandle;
  end;

var
  FrmEIntCom: TFrmEIntCom;

implementation

uses MainUnit, HCustom, HBidVch, HHavaleh, HIntCom, HSalesProp;

{$R *.DFM}



procedure TFrmEIntCom.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) And (ActiveControl <> dbGrid1) then
  begin
    SelectNext(ActiveControl, True, True);
    Key := #0;
  end;
end;

procedure TFrmEIntCom.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEIntCom.SpeedButton1Click(Sender: TObject);
begin
 MainForm.acHHavaleh.Execute;
 FrmHHavaleh.ShowModal;
end;

procedure TFrmEIntCom.sbListClick(Sender: TObject);
begin
 MainForm.acHIntCom.Execute;
 FrmHSaleProp.ShowModal;   
end;

procedure TFrmEIntCom.Button1Click(Sender: TObject);
begin
 MainForm.acEEbtal.Execute;
end;

procedure TFrmEIntCom.FormShow(Sender: TObject);
begin
// dbcbStat.ItemIndex := 0;
end;

procedure TFrmEIntCom.dbcbStatChange(Sender: TObject);
begin
//
end;

procedure TFrmEIntCom.SpeedButton2Click(Sender: TObject);
begin
//
end;

end.
