{$I Direct.Inc}
unit EAssociate;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ComCtrls, ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids, Mask,
  Menus, DbTables, {$I MbUses.Inc};

type
  TfrmEAssociate = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    DBGrid1: TDBGrid;
    qrEAssociate: TQuery;
    usEAssociate: TUpdateSQL;
    dsEAssociate: TDataSource;
    qrEAssociateAS_MCUST: TFloatField;
    qrEAssociateAS_NAME: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    edMCustCode: TEdit;
    edMCustName: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrEAssociateNewRecord(DataSet: TDataSet);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEAssociate: TfrmEAssociate;

implementation

uses Utility, Functions, UMessage, EParam;

{$R *.dfm}

procedure TfrmEAssociate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEAssociate.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEAssociate.FormShow(Sender: TObject);
begin
  edMCustCode.Text := (MBFM.GetFM(ParentFrm) as TFrmEParam).CustId;
  edMCustName.Text := FindCusName(edMCustCode.Text);
  with qrEAssociate do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ASSOCIATE_T');
    SQL.Add('WHERE AS_MCUST = :CUST');
    ParamByName('CUST').AsString := edMCustCode.Text;
    Open;
  end;
end;

procedure TfrmEAssociate.qrEAssociateNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('AS_MCUST').AsString := edMCustCode.Text;
end;

procedure TfrmEAssociate.BtnPostClick(Sender: TObject);
begin
  qrEAssociate.ApplyUpdates;
end;

procedure TfrmEAssociate.BtnDelClick(Sender: TObject);
begin
  with qrEAssociate do
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

end.
