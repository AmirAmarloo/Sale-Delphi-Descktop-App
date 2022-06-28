{$I Direct.Inc}
unit ECountry;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, Grids, DBGrids, DBTables,
  DB, {$I MbUses.Inc};

type
  TfrmECountry = class(TMbForm)
    panButton: TPanel;
    sbExit: TSpeedButton;
    stbMain: TStatusBar;
    BtnPost: TBitBtn;
    BtnDel: TBitBtn;
    dbgrCountry: TDBGrid;
    qrECountry: TQuery;
    dsECountry: TDataSource;
    usECountry: TUpdateSQL;
    qrECountryCOUNTERY_CODE: TFloatField;
    qrECountryCOUNTRY_NAME: TStringField;
    procedure sbExitClick(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrECountryBeforeScroll(DataSet: TDataSet);
    procedure qrECountryBeforeDelete(DataSet: TDataSet);
    procedure qrECountryAfterDelete(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrECountryCOUNTERY_CODEValidate(Sender: TField);
  private
    { Private declarations }
    DelFlag: Boolean;
  public
    { Public declarations }
  end;

var
  frmECountry: TfrmECountry;

implementation

uses Utility, Vars, UMessage;

{$R *.dfm}

procedure TfrmECountry.sbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmECountry.BtnPostClick(Sender: TObject);
begin
  if CheckNullFields(qrECountry, SchemaName, 'COUNTRY_T') then Exit;
  qrECountry.ApplyUpdates;
end;

procedure TfrmECountry.BtnDelClick(Sender: TObject);
begin
  qrECountry.Delete;
  qrECountry.ApplyUpdates;
end;

procedure TfrmECountry.FormShow(Sender: TObject);
begin
  with qrECountry do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM COUNTRY_T');
    Open;
  end;
  DelFlag := True;
end;

procedure TfrmECountry.qrECountryBeforeScroll(DataSet: TDataSet);
begin
  if not DelFlag then
    Exit;
  if IsRowDuplicate(dbgrCountry, ['COUNTERY_CODE']) then
  begin
    MbError(RepeatedError);
    dbgrCountry.SelectedIndex := 0;
    Abort;
  end;
end;

procedure TfrmECountry.qrECountryBeforeDelete(DataSet: TDataSet);
begin
  DelFlag := False;
end;

procedure TfrmECountry.qrECountryAfterDelete(DataSet: TDataSet);
begin
  DelFlag := True;
end;

procedure TfrmECountry.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmECountry.qrECountryCOUNTERY_CODEValidate(Sender: TField);
begin
  if Sender.AsInteger > 9999 then
  begin
    MbError(OutOfRange);
    Abort;
  end;
end;

end.
