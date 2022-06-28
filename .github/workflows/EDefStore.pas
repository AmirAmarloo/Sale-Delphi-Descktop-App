{$I Direct.Inc}
unit EDefStore;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ComCtrls, ExtCtrls, DB,
  DBTables, {$I MbUses.Inc};

type
  TfrmEDefStore = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    qrEDefStore: TQuery;
    usEDefStore: TUpdateSQL;
    dsEDefStore: TDataSource;
    qrEDefStoreCUSTNO: TFloatField;
    qrEDefStoreC_CODE: TFloatField;
    qrEDefStoreC_NAME: TStringField;
    qrEDefStoreC_ADD: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbExitClick(Sender: TObject);
    procedure qrEDefStoreNewRecord(DataSet: TDataSet);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEDefStore: TfrmEDefStore;

implementation

uses EParam;

{$R *.dfm}

procedure TfrmEDefStore.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEDefStore.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEDefStore.qrEDefStoreNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('CUSTNO').AsString := Edit1.Text;
end;

procedure TfrmEDefStore.BtnPostClick(Sender: TObject);
begin
  qrEDefStore.ApplyUpdates;
end;

procedure TfrmEDefStore.BtnDelClick(Sender: TObject);
begin
  qrEDefStore.Delete;
  qrEDefStore.ApplyUpdates;
end;

procedure TfrmEDefStore.FormShow(Sender: TObject);
begin
  Edit1.Text := (MBFM.GetFM(ParentFrm) as TFrmEParam).CustId;
  Edit2.Text := (MBFM.GetFM(ParentFrm) as TFrmEParam).CustName;
  with qrEDefStore do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CUSTSTORE_T');
    SQL.Add('WHERE CUSTNO = :CUSTNO');
    ParamByName('CUSTNO').AsString := Edit1.Text;
    Open;
    if IsEmpty then
    begin
      Edit;
      FieldByName('CUSTNO').AsString := Edit1.Text; 
    end;
  end;
end;

end.
