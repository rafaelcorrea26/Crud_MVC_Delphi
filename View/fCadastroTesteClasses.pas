unit fCadastroTesteClasses;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uClientes;

type
  TfrmTestesClasses = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTestesClasses: TfrmTestesClasses;

implementation

{$R *.dfm}

procedure TfrmTestesClasses.Button1Click(Sender: TObject);
var
lcliente : TClientes;

begin

lcliente := TClientes.Create;
try
     lcliente.CLI_ID := 1;
     lcliente.carrega;

finally
  lcliente.Free;
end;


end;

end.
