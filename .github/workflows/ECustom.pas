{$I Direct.Inc}
unit ECustom;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Mask,
  Menus,DbTables, {$I MbUses.Inc};

type
  TFrmECustom = class(TMbForm)
    Panel1: TPanel;
    panButton: TPanel;
    stbMain: TStatusBar;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    BitBtnPost: TBitBtn;
    BitBtnDelete: TBitBtn;
    SpdBtnExit: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    sbList: TSpeedButton;
    SpeedButton1: TSpeedButton;
    BtnAcc: TBitBtn;
    dbcbGrp: TDBComboBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure SpdBtnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbListClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtnAccClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DbHandle: TMbHandle;
  end;

{var
  FrmECustom: TFrmECustom;}

implementation

uses HCustom, HCountry, MainUnit, Utility;

{$R *.DFM}


procedure TFrmECustom.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    SelectNext(ActiveControl, True, True);
    Key := #0;
  end;
end;

procedure TFrmECustom.fcShapeBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmECustom.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmECustom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := CAFree;
end;

procedure TFrmECustom.sbListClick(Sender: TObject);
begin
 MainForm.acHCustom.Execute;
 FrmHCustom.ShowModal;
end;

procedure TFrmECustom.SpeedButton1Click(Sender: TObject);
begin
 MainForm.acHCountry.Execute;
 FrmHCountry.ShowModal;
end;

procedure TFrmECustom.BtnAccClick(Sender: TObject);
begin
 MainForm.acEAcc.Execute;
end;

procedure TFrmECustom.FormShow(Sender: TObject);
begin
 dbcbGrp.ItemIndex := 1;
end;

procedure TFrmECustom.FormCreate(Sender: TObject);
begin
  SetFormColor(Self,_FormColor);
end;

end.
