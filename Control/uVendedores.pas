unit uVendedores;

interface

type
  TVendedores = class
  private
    { private declarations }
    FID: integer;
    FNOME: STRING;
    FLIMITE_DESC: DOUBLE;

  protected
    { protected declarations }
  public
    destructor Destroy; override;
    { public declarations }

    property ID: integer read FID write FID;
    property NOME: STRING read FNOME write FNOME;
    property LIMITE_DESC: DOUBLE read FLIMITE_DESC write FLIMITE_DESC;

    Constructor Create;

  published
    { published declarations }
  end;

implementation

{ TVendedores }

{ TVendedores }

constructor TVendedores.Create;
begin

end;

destructor TVendedores.Destroy;
begin

  inherited;
end;

{ TVendedores }



end.
