{$I Direct.Inc}
unit ECostCenter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus, DbTables, {$I MbUses.Inc};

type
  TFrmECostCenter = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    bbPrint: TBitBtn;
    usECostCenter: TUpdateSQL;
    dsECostCenter: TDataSource;
    qrECostCenter: TQuery;
    qrECostCenterCOST_CODE: TFloatField;
    qrECostCenterCOST_NAME: TStringField;
    DBGrid1: TDBGrid;
    procedure sbExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrECostCenterCOST_CODEValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmECostCenter: TFrmECostCenter;

implementation

uses MainUnit, HCustom, HBidVch, HUnit, HFinCom,
     HPrj, Help, Vars, UMessage, Functions, Utility;

{$R *.dfm}

procedure TFrmECostCenter.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmECostCenter.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmECostCenter.FormShow(Sender: TObject);
begin
  with qrECostCenter do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM COSTCENTER_T');
    Open;
  end;
end;

procedure TFrmECostCenter.BtnPostClick(Sender: TObject);
begin
  CheckNullFields(qrECostCenter, Copy(SchemaName, 1, Length(SchemaName) - 1), 'COSTCENTER_T');
  qrECostCenter.ApplyUpdates;
end;

procedure TFrmECostCenter.BtnDelClick(Sender: TObject);
begin
  with qrECostCenter do
  begin
    First;
    while not Eof do
    begin
      Delete;
      Next;
    end;
    ApplyUpdates;
  end;
end;

procedure TFrmECostCenter.FormCreate(Sender: TObject);
begin
  SetStatusBar(stbMain);
  SetFormColor(Self,_FormColor);
end;

procedure TFrmECostCenter.qrECostCenterCOST_CODEValidate(Sender: TField);
begin
  if Sender.AsInteger > 99999 then
  begin
   MbError(RangeErr);
   Abort;
  end;
end;

end.
