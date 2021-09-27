unit fCadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls,
  IdBaseComponent, IdComponent,
  IdIPWatch, Vcl.CheckLst;

type
  TfrmCadastroUsuario = class(TForm)
    pgcConsultaUsuario: TPageControl;
    tsConsultaUsuario: TTabSheet;
    tsCadastroUsuario: TTabSheet;
    dbgUsuario: TDBGrid;
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    btnMostrarUsuarios: TButton;
    btnSair: TButton;
    pnlBotoes: TPanel;
    btnCadastrarUsu: TButton;
    btnSairUsu: TButton;
    pnlConsulta: TPanel;
    pnlMenu: TPanel;
    pnlEdtsUnid: TPanel;
    edtSenha: TDBEdit;
    lblSenha: TLabel;
    edtLogin: TDBEdit;
    lblLogin: TLabel;
    edtNomeUsuario: TDBEdit;
    pnlCadastro: TPanel;
    lblNomeUsuario: TLabel;
    lblCadastroUsuario: TLabel;
    pnledtconsultus: TPanel;
    rgUsuario: TRadioGroup;
    edtBuscarUsuario: TEdit;
    lblBuscarUsuario: TLabel;
    btnCancelarCadUsu: TButton;
    Label1: TLabel;
    Label20: TLabel;
    rgConsultaVenda: TRadioGroup;
    rgRelatoriodeClientes: TRadioGroup;
    rgRelatoriodeProdutos: TRadioGroup;
    rgCadastrodeVendedor: TRadioGroup;
    rgCadastrodeFormaPGT: TRadioGroup;
    rgCadastrodeProdutos: TRadioGroup;
    rgCadastrodeClientes: TRadioGroup;
    rgCadastrodeUsuarios: TRadioGroup;
    rgCadastrodeUnidades: TRadioGroup;
    rgTelaVenda: TRadioGroup;
    rgLog: TRadioGroup;
    rgCadastro: TRadioGroup;
    rgConfig: TRadioGroup;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCadastrarUsuClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnSairUsuClick(Sender: TObject);
    procedure edtBuscarUsuarioChange(Sender: TObject);
    procedure dbgUsuarioDblClick(Sender: TObject);
    procedure btnMostrarUsuariosClick(Sender: TObject);
    procedure btnCancelarCadUsuClick(Sender: TObject);
    procedure rgUsuarioClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edtLoginKeyPress(Sender: TObject; var Key: Char);
    procedure edtNomeUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure edtSenhaExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public

  end;

var
  frmCadastroUsuario: TfrmCadastroUsuario;

implementation

uses
  dConexao, fPrincipal, fLogin;

{$R *.dfm}

procedure TfrmCadastroUsuario.btnAlterarClick(Sender: TObject);
begin
  dtmConexao.GravandoLog('Cadastro de usuários', 'Alteração de dados');
  dtmConexao.qryConsultaUsuario.Edit;
  frmCadastroUsuario.pgcConsultaUsuario.ActivePageIndex := 1;
  frmCadastroUsuario.edtLogin.SetFocus;
end;

procedure TfrmCadastroUsuario.btnAtualizarClick(Sender: TObject);
begin
  dtmConexao.MostrarUsuarios;
end;

procedure TfrmCadastroUsuario.btnCadastrarUsuClick(Sender: TObject);
begin

  if Trim(edtLogin.text) = '' then
  begin
    ShowMessage('Preecha o usuário de login');
    edtLogin.SetFocus;
  end
  else if Trim(edtSenha.text) = '' then
  begin
    ShowMessage('Preecha a senha de login');
    edtSenha.SetFocus;
  end
  else if Trim(edtNomeUsuario.text) = '' then
  begin
    ShowMessage('Preecha o nome do usuário');
    edtNomeUsuario.SetFocus;
  end
  else
  begin
    dtmConexao.GravaControleDeAcessos;
    dtmConexao.GravandoLog('Cadastro de usuários', 'Inclusão dados');
    dtmConexao.qryConsultaUsuario.Post;
    ShowMessage('Usuário Cadastrado com sucesso');

    frmCadastroUsuario.tsCadastroUsuario.TabVisible := False;
    frmCadastroUsuario.tsConsultaUsuario.TabVisible := True;
    dtmConexao.qryConsultaUsuario.Close;
    frmCadastroUsuario.pgcConsultaUsuario.ActivePageIndex := 0;
    dtmConexao.MostrarUsuarios;
  end
end;

procedure TfrmCadastroUsuario.btnCancelarCadUsuClick(Sender: TObject);

begin
  dtmConexao.qryConsultaUsuario.Cancel;
  frmCadastroUsuario.pgcConsultaUsuario.ActivePageIndex := 0;

end;

procedure TfrmCadastroUsuario.btnExcluirClick(Sender: TObject);
begin
  if dtmConexao.qryConsultaUsuario.IsEmpty then
  begin

    ShowMessage('Registros Zerado');
  end
  else
  begin

    case Application.MessageBox
      (PWideChar('Deseja excluir ' + (dbgUsuario.columns.items[0].Field.Text) +
      '?'), 'Excluir Usuario', MB_YESNO + MB_ICONQUESTION) of
      IDYES:
        begin
          dtmConexao.GravandoLog('Cadastro de usuários ', 'Alteração dados');
          dtmConexao.qryConsultaUsuario.Delete;
          dtmConexao.qryConsultaUsuario.Refresh;
          ShowMessage('Usuário(a) excluido(a)');

        end;

      IDNO:

        begin
          exit;
        end;
    end;
  end;
end;

procedure TfrmCadastroUsuario.btnIncluirClick(Sender: TObject);
begin
  tsConsultaUsuario.TabVisible := False;
  tsCadastroUsuario.TabVisible := True;

  dtmConexao.qryConsultaUsuario.Active := True;
  dtmConexao.qryConsultaUsuario.Insert;
  frmCadastroUsuario.pgcConsultaUsuario.ActivePageIndex := 1;
  frmCadastroUsuario.edtLogin.SetFocus;
end;

procedure TfrmCadastroUsuario.btnMostrarUsuariosClick(Sender: TObject);
begin
  dtmConexao.MostrarUsuarios;
  edtBuscarUsuario.Text := '';
  edtBuscarUsuario.SetFocus;
  rgUsuario.ItemIndex := 0;
end;

procedure TfrmCadastroUsuario.btnSairClick(Sender: TObject);
begin
  Close;

end;

procedure TfrmCadastroUsuario.btnSairUsuClick(Sender: TObject);
begin
  if dtmConexao.qryConsultaUsuario.State in [dsInsert, dsEdit] then
  begin
    ShowMessage('Salve ou Cancele o registro antes de sair');
  end

  else
  // se não, só fecha//

  begin
    frmCadastroUsuario.pgcConsultaUsuario.ActivePageIndex := 0;
  end;

end;

procedure TfrmCadastroUsuario.dbgUsuarioDblClick(Sender: TObject);
begin
  btnAlterar.Click;

end;

procedure TfrmCadastroUsuario.edtBuscarUsuarioChange(Sender: TObject);
begin

  dtmConexao.qryConsultaUsuario.Close;
  dtmConexao.qryConsultaUsuario.Sql.Clear;
  dtmConexao.qryConsultaUsuario.Sql.ADD('SELECT * FROM USUARIO');

  case rgUsuario.ItemIndex of
    0:

      begin
        dtmConexao.qryConsultaUsuario.Sql.ADD('WHERE upper(NOME) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarUsuario.Text + '%')));

      end;

    1:

      begin
        dtmConexao.qryConsultaUsuario.Sql.ADD('WHERE upper(LOGIN) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarUsuario.Text + '%')));

      end;

  end;
  // dtmConexao.qryConsultaUsuario.Sql.Add('order by Nome');
  dtmConexao.qryConsultaUsuario.Open;

end;

procedure TfrmCadastroUsuario.edtLoginKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TfrmCadastroUsuario.edtNomeUsuarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TfrmCadastroUsuario.edtSenhaExit(Sender: TObject);
begin
  btnCadastrarUsu.SetFocus;
end;

procedure TfrmCadastroUsuario.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TfrmCadastroUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dtmConexao.qryConsultaUsuario.Cancel;
  frmCadastroUsuario.pgcConsultaUsuario.ActivePageIndex := 0;

end;

procedure TfrmCadastroUsuario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssShift in Shift) then
  begin
    if Key = VK_F11 then
      frmLogin.ShowModal;
  end;
end;

procedure TfrmCadastroUsuario.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if (Key = #13) then
        begin
            Key := #0;
            Perform(WM_NEXTDLGCTL, 0, 0);
        end;
end;

procedure TfrmCadastroUsuario.FormShow(Sender: TObject);
begin
  dtmConexao.MostrarUsuarios;
  edtBuscarUsuario.SetFocus;
  dtmConexao.CustomizaTela(self);
end;

procedure TfrmCadastroUsuario.rgUsuarioClick(Sender: TObject);
begin
  case rgUsuario.ItemIndex of
    0:
      begin
        lblBuscarUsuario.Caption := 'Digite o nome do usuário';
        lblBuscarUsuario.Visible := True;
        edtBuscarUsuario.Clear;
      end;

    1:
      begin
        lblBuscarUsuario.Caption := 'Digite o login do usuário';
        lblBuscarUsuario.Visible := True;
        edtBuscarUsuario.Clear;
      end;

  end;
end;

end.
