{$I Direct.Inc}
unit DMUDisplay;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, {$I MbUses.Inc};

type
  TDM_Display = class(TDataModule)
    qrDFilter: TQuery;
    dsDFilter: TDataSource;
    qrDTemp: TQuery;
    qrDAghlam: TQuery;
    dsDAghlam: TDataSource;
    qrDAghlamCNTCODE: TStringField;
    qrDAghlamCNTROW: TFloatField;
    qrDAghlamCU_CODE: TFloatField;
    qrDAghlamGDS_CODE: TStringField;
    qrDAghlamCNTQTY: TFloatField;
    qrDAghlamCNTPRICE: TFloatField;
    qrDAghlamGDS_DESCF: TStringField;
    qrDAghlamGDS_DESCL: TStringField;
    qrDAghlamCU_NAME: TStringField;
    qrDAghlamTOTCOST: TFloatField;
    qrDFilterCNTCODE: TStringField;
    qrDFilterCNTDTE: TStringField;
    qrDFilterCNTTYP: TFloatField;
    qrDFilterCUSTNAME: TStringField;
    qrDGardesh: TQuery;
    dsDGardesh: TDataSource;
    qrDGardeshROWNUM: TFloatField;
    qrDGardeshBED: TFloatField;
    qrDGardeshBES: TFloatField;
    qrDGardeshCUSTNAME: TStringField;
    qrDGardeshMANDEH: TFloatField;

    procedure SortGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure SortSetText(Sender: TField; const Text: String);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Display: TDM_Display;

implementation

{$R *.dfm}

{ TDM_Display }

procedure TDM_Display.DataModuleCreate(Sender: TObject);
begin
  MbConvertSchemaOfUpdateSqlAndQuery(Self);
end;

procedure TDM_Display.SortGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text := MbDb2St(Sender.AsString, MbCurrentCharSetCode);
end;

procedure TDM_Display.SortSetText(Sender: TField; const Text: String);
begin
  Sender.AsString := MbSt2Db(Text, MbCurrentCharSetCode);
end;

end.
