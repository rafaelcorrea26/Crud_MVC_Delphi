unit uLog;

interface

type
  TLog = class
  private
    FUSUARIO_LOG: string;
    FIP_LOG: string;
    FPC_LOG: string;
    FDATA_LOG: TDateTime;
    FROTINA_LOG: string;
    FACAO_LOG: string;
    { private declarations }

  protected
    { protected declarations }
  public
    destructor Destroy; override;
    { public declarations }
    property USUARIO_LOG: string read FUSUARIO_LOG write FUSUARIO_LOG;
    property IP_LOG: string read FIP_LOG write FIP_LOG;
    property PC_LOG: string read FPC_LOG write FPC_LOG;
    property DATA_LOG: TDateTime read FDATA_LOG write FDATA_LOG;
    property ROTINA_LOG: string read FROTINA_LOG write FROTINA_LOG;
    property ACAO_LOG: string read FACAO_LOG write FACAO_LOG;




    Constructor Create;

  published
    { published declarations }
  end;

implementation

{ TClientes }

constructor TLog.Create;
begin

end;

destructor TLog.Destroy;
begin

  inherited;
end;

end.
