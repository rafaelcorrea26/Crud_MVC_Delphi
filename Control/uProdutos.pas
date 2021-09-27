unit uProdutos;

interface

type
  TProdutos = class
  private
    { private declarations }
     FID: integer ;
     FDESCRICAO: string ;
     FID_UNIDADE: integer ;
     FCOD_BARRAS: string;
     FPRECO_VISTA: Double;
     FPRECO_PRAZO: Double;
     FSALDO: Double;
     FDATA_CAD: TDate;

  protected
    { protected declarations }
  public
    { public declarations }

    property ID: Integer read FID write FID;
    property DESCRICAO: string read FDESCRICAO write FDESCRICAO;
    property ID_UNIDADE: integer read FID_UNIDADE write FID_UNIDADE;
    property COD_BARRAS: STRING read FCOD_BARRAS write FCOD_BARRAS;
    property PRECO_VISTA: Double  read FPRECO_VISTA write FPRECO_VISTA;
    property PRECO_PRAZO: Double read FPRECO_PRAZO write FPRECO_PRAZO;
    property SALDO: Double read FSALDO write FSALDO;
    property DATA_CAD: TDate read FDATA_CAD write FDATA_CAD;



  published
    { published declarations }
  end;

implementation

end.
