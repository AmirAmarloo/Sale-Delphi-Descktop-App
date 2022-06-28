{$I Direct.Inc}
unit DDistPersent;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, Buttons, ExtCtrls, DB,
  DBTables, {$I MbUses.Inc};

type
  TfrmDDistPersent = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    sbExportToExcel: TSpeedButton;
    stbMain: TStatusBar;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    qrDDistRecord: TQuery;
    DataSource1: TDataSource;
    qrDDistRecordDR_CUSTNO: TFloatField;
    qrDDistRecordDR_DATE: TStringField;
    qrDDistRecordDR_DISTPERSENT: TFloatField;
    qrDDistRecordDR_DISTRIAL: TFloatField;
    qrDDistRecordDR_DISTQTY: TFloatField;
    qrDDistRecordDR_DISTROW: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure sbExitClick(Sender: TObject);
    procedure sbExportToExcelClick(Sender: TObject);
    procedure qrDDistRecordDR_DISTRIALGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDDistPersent: TfrmDDistPersent;

implementation

uses Utility, Utitlty, Help, Functions, UMessage, EDistPersent;

{$R *.dfm}

procedure TfrmDDistPersent.FormShow(Sender: TObject);
begin
  if MBFM.GetFM(ParentFrm) is TfrmEDistPersent then
  begin
    Edit1.Text := (MBFM.GetFM(ParentFrm) as TfrmEDistPersent).DistCustno;
    Edit2.Text := (MBFM.GetFM(ParentFrm) as TfrmEDistPersent).DistCustName;
  end;
  with qrDDistRecord do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT DR_CUSTNO, DR_DATE, DR_DISTPERSENT, DR_DISTRIAL, DR_DISTQTY,');
    SQL.Add('  DR_DISTROW');
    SQL.Add('FROM DISTRECORD_T');
    SQL.Add('WHERE DR_CUSTNO = :DRCUSTNO');
    ParamByName('DRCUSTNO').AsString := (MBFM.GetFM(ParentFrm) as TfrmEDistPersent).DistCustno;
    Open;
  end;
end;

procedure TfrmDDistPersent.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDDistPersent.sbExportToExcelClick(Sender: TObject);
begin
  ExportToExcel(qrDDistRecord);
end;

procedure TfrmDDistPersent.qrDDistRecordDR_DISTRIALGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString = '0' then
    Text := '‰œ«—œ';
  if Sender.AsString = '1' then
    Text := 'œ«—œ';
  if Sender.AsString = '' then
    Text := '';
end;

end.
