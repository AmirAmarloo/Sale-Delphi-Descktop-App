{$I Direct.Inc}
unit EVisitGrp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus, DbTables, {$I MbUses.Inc};

type
  TFrmEVisitGrp = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    bbPrint: TBitBtn;
    qrEVisitGroup: TQuery;
    dsEVisitGroup: TDataSource;
    DBGrid1: TDBGrid;
    usEVisitGroup: TUpdateSQL;
    qrEVisitGroupCUSTTYPE_CODE: TFloatField;
    qrEVisitGroupCUSTTYPE_DESC: TStringField;
    procedure sbExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure qrEVisitGroupVG_CODEValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEVisitGrp: TFrmEVisitGrp;

implementation

uses MainUnit, HCustom, HBidVch, HUnit, HFinCom,
     HPrj, Help, Vars, UMessage, Functions, Utility;

{$R *.dfm}

procedure TFrmEVisitGrp.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEVisitGrp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmEVisitGrp.FormShow(Sender: TObject);
begin
  with qrEVisitGroup do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CUSTTYPE_T');
    Open;
  end;
end;

procedure TFrmEVisitGrp.BtnPostClick(Sender: TObject);
begin
  qrEVisitGroup.ApplyUpdates;
end;

procedure TFrmEVisitGrp.BtnDelClick(Sender: TObject);
begin
  with qrEVisitGroup do
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

procedure TFrmEVisitGrp.qrEVisitGroupVG_CODEValidate(Sender: TField);
begin
  if Sender.AsInteger > 99999999 then
  begin
   MbError(RangeErr);
   Abort;
  end;
end;

procedure TFrmEVisitGrp.FormCreate(Sender: TObject);
begin
  SetStatusBar(stbMain);
  SetFormColor(Self,_FormColor);
end;

end.
