unit uUsuario;

interface

type
  TUsuario = class
  private
    { private declarations }
     FID: integer ;
    FUNIDADE: STRING;
    FDESCRICAO: STRING;



  protected
    { protected declarations }
  public
    destructor Destroy; override;
    { public declarations }

    property ID: Integer read FID write FID;
    property UNIDADE: STRING read FUNIDADE write FUNIDADE;
    property DESCRICAO: STRING read FDESCRICAO write FDESCRICAO;



    Constructor Create;






  published
    { published declarations }
  end;

implementation

{ TClientes }

constructor TUsuario.Create;
begin

end;

destructor TUsuario.Destroy;
begin

  inherited;
end;


end.
