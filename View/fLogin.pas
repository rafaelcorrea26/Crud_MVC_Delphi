unit fLogin;

interface

uses
 Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, DB, IdBaseComponent, IdComponent,
  IdIPWatch;

type
  TfrmLogin = class(TForm)
    imgFundo: TImage;
    lbUsuario: TLabel;
    lbSenha: TLabel;
    edtlogin: TEdit;
    edtsenha: TEdit;
    lbliniciologin: TLabel;
    Panel1: TPanel;
    btnsairlogin: TButton;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnsairloginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }

  public
    // var
    // LoginLog: String;
    // IPLog: TIdIPWatch;
    // IP: String;
    // PClog: String;
    //
    function CapturaNomePC: string;

  end;

var
  frmLogin: TfrmLogin;

implementation

uses
  dConexao, fPrincipal;

{$R *.dfm}

procedure TfrmLogin.btnsairloginClick(Sender: TObject);
begin
  // Caso o Formulário for fechado pelo X finaliza a aplicação inteira
  Application.Terminate;
end;

procedure TfrmLogin.Button1Click(Sender: TObject);
begin
  dtmConexao.qryLogin.Open;
  // verifica se os campos coincidem,
  // tanto na tabela, quanto nas edits
  if dtmConexao.qryLogin.Locate('login', edtlogin.Text, [loCaseInsensitive]) and
    dtmConexao.qryLogin.Locate('senha', edtsenha.Text, [loCaseInsensitive]) then
  begin

    if dtmConexao.tipologin = 'inicio' then

    begin
      dtmConexao.LoginLog := edtlogin.Text;
      dtmConexao.GravandoLog('inicio', 'Logou no sistema');
      dtmConexao.qryLogin.close();
      frmPrincipal.Show;
    end

    else if dtmConexao.tipologin = 'config' then
    begin
      dtmConexao.LoginLog := edtlogin.Text;
      dtmConexao.GravandoLog('login', 'Abriu a configuração');
      dtmConexao.qryLogin.close();
      frmPrincipal.Show;
    end

  end
  // se os campos forem vazios
  else if (edtlogin.Text = '') and (edtsenha.Text = '') then
  begin
    // mostra mensagem
    showmessage('Preencha os campos login e senha!');
    edtlogin.SetFocus;
  end
  else // campos nao conferem
  begin
    // campos nao conferem
    showmessage('Usuario ou senha inválidos!');
    edtlogin.Clear;
    edtsenha.Clear;
    edtlogin.SetFocus;
  end;

  edtlogin.Clear;
  edtsenha.Clear;

end;

function TfrmLogin.CapturaNomePC: string;
begin

end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Caso o Formulário for fechado pelo X finaliza a aplicação inteira
  frmLogin.Visible := False;
  Application.Terminate;

end;

procedure TfrmLogin.FormDestroy(Sender: TObject);
begin
  Application.Destroy
end;

procedure TfrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin

    Key := #0;
    Perform(wm_NextDlgCtl, 0, 0);
  end;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  edtlogin.SetFocus;
end;

// function TfrmLogin.CapturaNomePC: string;
/// / Para Capturar o usuário Logado no Windows
//
// Var
// NetUserNameLength: DWord;
// Begin
// NetUserNameLength := 50;
// SetLength(Result, NetUserNameLength);
// GetUserName(pChar(Result), NetUserNameLength);
// SetLength(Result, StrLen(pChar(Result)));
// End;

end.
