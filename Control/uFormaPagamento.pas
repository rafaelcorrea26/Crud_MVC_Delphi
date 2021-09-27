unit uFormaPagamento;

interface

type
  TFormaPagamento = class
  private
    { private declarations }
    FID: integer;
    FDESCRICAO: STRING;

  protected
    { protected declarations }
  public
    destructor Destroy; override;
    { public declarations }

    property ID: integer read FID write FID;
    property DESCRICAO: STRING read FDESCRICAO write FDESCRICAO;

    Constructor Create;

  published
    { published declarations }
  end;

implementation

{ TFormaPagamento }

{ TFormaPagamento }

constructor TFormaPagamento.Create;
begin

end;

destructor TFormaPagamento.Destroy;
begin

  inherited;
end;

{ TFormaPagamento }

end.
