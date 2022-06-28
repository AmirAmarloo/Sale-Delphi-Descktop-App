{$I Direct.Inc}
unit EEbtal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Mask,
  Menus,DbTables, {$I MbUses.Inc};

type
  TFrmEEbtal = class(TMbForm)
    panButton: TPanel;
    SpdBtnExit: TSpeedButton;
    stbMain: TStatusBar;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit4: TDBEdit;
    MaskEdit1: TMaskEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure SpdBtnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbListClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DbHandle: TMbHandle;
  end;

{var
  FrmECustom: TFrmECustom;}

implementation

uses HCustom, HCountry, MainUnit, HMoin, HTaf;

{$R *.DFM}


procedure TFrmEEbtal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    SelectNext(ActiveControl, True, True);
    Key := #0;
  end;
end;

procedure TFrmEEbtal.fcShapeBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmEEbtal.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEEbtal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := CAFree;
end;

procedure TFrmEEbtal.sbListClick(Sender: TObject);
begin
 MainForm.acHMoin.Execute;
 FrmHMoin.ShowModal;
end;

procedure TFrmEEbtal.SpeedButton1Click(Sender: TObject);
begin
 MainForm.acHTaf.Execute;
 FrmHTaf.ShowModal;
end;

end.
