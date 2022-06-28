{$I Direct.Inc}
unit DCntFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus,DbTables, {$I MbUses.Inc};

type
  TFrmDCntFilter = class(TMbForm)
    panButton: TPanel;
    stbMain: TStatusBar;
    SpdBtnExit: TSpeedButton;
    BitBtnPost: TBitBtn;
    Panel1: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
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
  FrmDCntFilter: TFrmDCntFilter;

implementation

uses MainUnit, HCustom, HBidVch, HSalesProp, EPeyvast, HCnt, ECntLaw, HArz,
  Utility;

{$R *.DFM}

procedure TFrmDCntFilter.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmDCntFilter.SpeedButton2Click(Sender: TObject);
begin
 MainForm.acHCustom.Execute;
 FrmHCustom.ShowModal;
end;

procedure TFrmDCntFilter.SpeedButton3Click(Sender: TObject);
begin
 MainForm.acHArz.Execute;
 FrmHArz.ShowModal;
end;

procedure TFrmDCntFilter.SpeedButton1Click(Sender: TObject);
begin
 MainForm.acHCustom.Execute;
 FrmHCustom.ShowModal;
end;

procedure TFrmDCntFilter.Button1Click(Sender: TObject);
begin
 MainForm.acECntLaw.Execute;
// FrmECntLaw.ShowModal;
end;

procedure TFrmDCntFilter.Button2Click(Sender: TObject);
begin
 MainForm.acEGHCnt.Execute;
end;

procedure TFrmDCntFilter.FormCreate(Sender: TObject);
begin
  SetFormColor(Self,_FormColor);
end;

end.
