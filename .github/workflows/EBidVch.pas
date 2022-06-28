{$I Direct.Inc}
unit EBidVch;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus,DbTables, {$I MbUses.Inc};

type
  TFrmEBidVch = class(TMbForm)
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
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    MaskEdit1: TMaskEdit;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    sbList: TSpeedButton;
    SpeedButton1: TSpeedButton;
    ComboBox1: TComboBox;
    Label6: TLabel;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure SpdBtnExitClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbListClick(Sender: TObject);
    procedure Label6Click(Sender: TObject);
  private
    { Private declarations }
   Procedure Grid_Enter (grTmp : TdbGrid;TmpKey : Word);
  public
    { Public declarations }
    DbHandle: TMbHandle;
  end;

var
  FrmEBidVch: TFrmEBidVch;

implementation

uses MainUnit, HCustom, HBidVch;

{$R *.DFM}



procedure TFrmEBidVch.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) And (ActiveControl <> dbGrid1) then
  begin
    SelectNext(ActiveControl, True, True);
    Key := #0;
  end;
end;

Procedure TFrmEBidVch.Grid_Enter (grTmp : TdbGrid;TmpKey : Word);
var
  tgMsg: TagMsg;
Begin
  case TmpKey of
    VK_RETURN:
    begin
      PeekMessage(tgMsg, grTmp.Handle, 0, 0, WM_KEYDOWN);
      PostMessage(grTmp.Handle, WM_KEYDOWN, VK_TAB, 0);
    end;
  End;
 End;

procedure TFrmEBidVch.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 Grid_Enter(TDBGrid(Sender),Key);
end;

procedure TFrmEBidVch.fcShapeBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmEBidVch.SpdBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEBidVch.SpeedButton1Click(Sender: TObject);
begin
 MainForm.acHCustom.Execute;
 FrmHCustom.ShowModal;
end;

procedure TFrmEBidVch.sbListClick(Sender: TObject);
begin
 MainForm.acHBidVch.Execute;
 FrmHBidVch.ShowModal;
end;

procedure TFrmEBidVch.Label6Click(Sender: TObject);
begin
//
end;

end.
