unit fCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask, IdBaseComponent,
  IdComponent,
  IdIPWatch;

type
  TFrmCadastroClientes = class(TForm)
    pgcConsultaClientes: TPageControl;
    pnlCadastro: TPanel;
    tsConsultaclientes: TTabSheet;
    tsCadClientes: TTabSheet;
    lblCadclientes: TLabel;
    pnlConsulta: TPanel;
    lblconsultaclientes: TLabel;
    pnlbtncadclient: TPanel;
    btnIncluirclientes: TButton;
    btnAlterarclientes: TButton;
    btnExcluirclientes: TButton;
    btnSairclientes1: TButton;
    grdconsultaclient: TDBGrid;
    pnlcadclientedts: TPanel;
    edt_nome: TDBEdit;
    edt_endereco: TDBEdit;
    edt_bairro: TDBEdit;
    edt_cidade: TDBEdit;
    CbxUF: TDBComboBox;
    edt_cep: TDBEdit;
    edt_RG: TDBEdit;
    edt_cpf: TDBEdit;
    edt_Telefone: TDBEdit;
    edt_celular: TDBEdit;
    edt_email: TDBEdit;
    edt_datanasc: TDBEdit;
    edt_datacad: TDBEdit;
    CxSituacao: TDBComboBox;
    btnMostrarclientes: TButton;
    lblNome: TLabel;
    lblendereco: TLabel;
    lblUF: TLabel;
    lblBairro: TLabel;
    lblCidade: TLabel;
    lblCep: TLabel;
    lblRG: TLabel;
    lblcPF: TLabel;
    lbltelefone: TLabel;
    lblcelular: TLabel;
    lblemail: TLabel;
    lblDatanasc: TLabel;
    lbldatacad: TLabel;
    lblsituacao: TLabel;
    edtbuscardata: TDateTimePicker;
    lblbuscaclient: TLabel;
    btnPesquisar: TButton;
    rgclientes: TRadioGroup;
    rgSituacaoClientes: TRadioGroup;
    edtBuscarclientes: TEdit;
    pnl2: TPanel;
    btnCadastrarclientes: TButton;
    btnSairclientes: TButton;
    btnCancelarclientes: TButton;
    procedure rgclientesClick(Sender: TObject);
    procedure btnIncluirclientesClick(Sender: TObject);
    procedure btnAlterarclientesClick(Sender: TObject);
    procedure btnExcluirclientesClick(Sender: TObject);
    procedure btnMostrarclientesClick(Sender: TObject);
    procedure btnSairclientes1Click(Sender: TObject);
    procedure btnCadastrarclientesClick(Sender: TObject);
    procedure btnCancelarclientesClick(Sender: TObject);
    procedure btnSairclientesClick(Sender: TObject);
    procedure edtBuscarclientesChange(Sender: TObject);
    procedure grdconsultaclientDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnProcurarclientesClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure edt_nomeKeyPress(Sender: TObject; var Key: Char);
    procedure edt_enderecoKeyPress(Sender: TObject; var Key: Char);
    procedure CbxUFKeyPress(Sender: TObject; var Key: Char);
    procedure edt_bairroKeyPress(Sender: TObject; var Key: Char);
    procedure edt_cidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edt_cepKeyPress(Sender: TObject; var Key: Char);
    procedure edt_RGKeyPress(Sender: TObject; var Key: Char);
    procedure edt_cpfKeyPress(Sender: TObject; var Key: Char);
    procedure edt_TelefoneKeyPress(Sender: TObject; var Key: Char);
    procedure edt_celularKeyPress(Sender: TObject; var Key: Char);
    procedure edt_emailKeyPress(Sender: TObject; var Key: Char);
    procedure edt_datanascKeyPress(Sender: TObject; var Key: Char);
    procedure edt_datacadKeyPress(Sender: TObject; var Key: Char);
    procedure CxSituacaoKeyPress(Sender: TObject; var Key: Char);
    procedure CxSituacaoExit(Sender: TObject);
    procedure rgSituacaoClientesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    procedure pesquisarclientes;

  public
    { Public declarations }
  end;

var
  FrmCadastroClientes: TFrmCadastroClientes;

implementation

uses
  dConexao;

{$R *.dfm}

procedure TFrmCadastroClientes.btnAlterarclientesClick(Sender: TObject);
begin
  dtmConexao.GravandoLog('Cadastro de clientes', 'Alteração dados');
  dtmConexao.qryConsultaClientes.Edit;
  FrmCadastroClientes.pgcConsultaClientes.ActivePageIndex := 1;
  FrmCadastroClientes.edt_nome.SetFocus;

end;

procedure TFrmCadastroClientes.btnCadastrarclientesClick(Sender: TObject);
begin
  if Trim(edt_nome.text) = '' then
  begin
    ShowMessage('Preecha o nome do cliente');
    edt_nome.SetFocus;
  end
  else if Trim(edt_endereco.text) = '' then
  begin
    ShowMessage('Preencha o endereço do cliente');
    edt_endereco.SetFocus;
  end
  else if Trim(CbxUF.text) = '' then
  begin
    ShowMessage('Preencha o UF do cliente');
    CbxUF.SetFocus;
  end
  else if Trim(edt_bairro.text) = '' then
  begin
    ShowMessage('Preencha o bairro do cliente');
    edt_bairro.SetFocus;
  end
  else if Trim(edt_cep.text) = '' then
  begin
    ShowMessage('Preencha o CEP do cliente');
    edt_cep.SetFocus;
  end

  else if Trim(edt_cidade.text) = '' then
  begin
    ShowMessage('Preencha a cidade do cliente');
    edt_cidade.SetFocus;
  end

  else if Trim(edt_RG.text) = '' then
  begin
    ShowMessage('Preencha o RG do cliente');
    edt_RG.SetFocus;
  end

  else if Trim(edt_cpf.text) = '' then
  begin
    ShowMessage('Preencha o CPF do cliente');
    edt_cpf.SetFocus;
  end

  else if Trim(edt_Telefone.text) = '' then
  begin
    ShowMessage('Preencha o telefone do cliente');
    edt_Telefone.SetFocus;
  end

  else if Trim(edt_celular.text) = '' then
  begin
    ShowMessage('Preencha o celular do cliente');
    edt_celular.SetFocus;
  end

  else if Trim(edt_email.text) = '' then
  begin
    ShowMessage('Preencha o email do cliente');
    edt_email.SetFocus;
  end

  else if Trim(edt_datanasc.text) = '' then
  begin
    ShowMessage('Preencha data de nascimento do cliente');
    edt_datanasc.SetFocus;
  end

  else if Trim(CxSituacao.text) = '' then
  begin
    ShowMessage('Preencha a situação do cliente');
    CxSituacao.SetFocus;
  end

  else
  begin
    dtmConexao.GravandoLog('Cadastro de clientes', 'Inlusão dados');
    dtmConexao.qryConsultaClientes.Post;
    ShowMessage('Cliente cadastrado com sucesso');

    FrmCadastroClientes.tsCadClientes.TabVisible := False;
    FrmCadastroClientes.tsConsultaclientes.TabVisible := True;
    dtmConexao.qryConsultaClientes.Close;
    FrmCadastroClientes.pgcConsultaClientes.ActivePageIndex := 0;
    dtmConexao.MostrarClientes;
  end;
end;

procedure TFrmCadastroClientes.btnCancelarclientesClick(Sender: TObject);
begin
  dtmConexao.qryConsultaClientes.Cancel;
  FrmCadastroClientes.pgcConsultaClientes.ActivePageIndex := 0;
end;

procedure TFrmCadastroClientes.btnExcluirclientesClick(Sender: TObject);
begin
  if dtmConexao.qryConsultaClientes.IsEmpty then
  begin

    ShowMessage('Registros Zerado');
  end
  else
  begin

    case Application.MessageBox
      (PWideChar('Deseja excluir ' + (grdconsultaclient.columns.items[0]
      .Field.Text) + '?'), 'Excluir Cliente', MB_YESNO + MB_ICONQUESTION) of
      IDYES:
        begin
          dtmConexao.GravandoLog('Cadastro de clientes', 'Exclusão dados');
          dtmConexao.qryConsultaClientes.Delete;
          dtmConexao.qryConsultaClientes.Refresh;
          ShowMessage('Cliente excluido');

        end;
      IDNO:
        begin
          exit;
        end;

    end;
  end;
end;

procedure TFrmCadastroClientes.btnIncluirclientesClick(Sender: TObject);
begin
  // Ativa o painel
  tsConsultaclientes.TabVisible := False;
  tsCadClientes.TabVisible := True;

  dtmConexao.qryConsultaClientes.Open;
  dtmConexao.qryConsultaClientes.Active := True;
  dtmConexao.qryConsultaClientes.Insert;

  dtmConexao.qryConsultaClientesCLI_DATA_CAD.Value := Date;
  FrmCadastroClientes.pgcConsultaClientes.ActivePageIndex := 1;
  FrmCadastroClientes.edt_nome.SetFocus;
  CbxUF.Text := 'RS';
  CxSituacao.Text := 'Ativo';
  edt_cidade.Text := 'Camaquã';
end;

procedure TFrmCadastroClientes.btnMostrarclientesClick(Sender: TObject);
begin
  edtbuscardata.Visible := False;
  edtBuscarclientes.SetFocus;
  dtmConexao.MostrarClientes;
  edtBuscarclientes.Text := '';
  rgclientes.ItemIndex := 0;

end;

procedure TFrmCadastroClientes.btnPesquisarClick(Sender: TObject);
begin
  pesquisarclientes;
end;

procedure TFrmCadastroClientes.btnProcurarclientesClick(Sender: TObject);
begin
  dtmConexao.MostrarClientes;
end;

procedure TFrmCadastroClientes.btnSairclientes1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadastroClientes.btnSairclientesClick(Sender: TObject);
begin
  if dtmConexao.qryConsultaClientes.State in [dsInsert, dsEdit] then
  begin
    ShowMessage('Salve ou Cancele o registro antes de sair');
  end

  else

  begin
    FrmCadastroClientes.pgcConsultaClientes.ActivePageIndex := 0;
  end;
end;

procedure TFrmCadastroClientes.CbxUFKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TFrmCadastroClientes.CxSituacaoExit(Sender: TObject);
begin
  btnCadastrarclientes.SetFocus;
end;

procedure TFrmCadastroClientes.CxSituacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TFrmCadastroClientes.edtBuscarclientesChange(Sender: TObject);
begin
  dtmConexao.qryConsultaClientes.Close;
  dtmConexao.qryConsultaClientes.Sql.Clear;
  dtmConexao.qryConsultaClientes.Sql.Add('SELECT * FROM Clientes ');

  case rgclientes.ItemIndex of
    0:

      begin
        dtmConexao.qryConsultaClientes.Sql.Add('WHERE upper(cli_nome) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarclientes.Text + '%')));

      end;

    1:

      begin
        dtmConexao.qryConsultaClientes.Sql.Add('Where CLI_DATA_NASC = :data');
        dtmConexao.qryConsultaClientes.parambyname('data').AsDate :=
          strToDate(formatDateTime('dd/mm/yyyy', edtbuscardata.Date));
        edtbuscardata.Visible := True;

      end;

    2:
      begin
        dtmConexao.qryConsultaClientes.Sql.Add('WHERE upper(CLI_RG) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarclientes.Text + '%')));

      end;

    3:
      begin
        dtmConexao.qryConsultaClientes.Sql.Add('WHERE upper(CLI_CPF) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarclientes.Text + '%')));

      end;

    4:
      begin
        dtmConexao.qryConsultaClientes.Sql.Add('WHERE upper(CLI_situacao) LIKE '
          + QuotedStr('%' + AnsiUpperCase(edtBuscarclientes.Text + '%')));

      end;

  end;
  dtmConexao.qryConsultaClientes.Sql.Add('order by cli_nome');
  dtmConexao.qryConsultaClientes.Open;
end;

procedure TFrmCadastroClientes.edt_bairroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TFrmCadastroClientes.edt_celularKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TFrmCadastroClientes.edt_cepKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TFrmCadastroClientes.edt_cidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TFrmCadastroClientes.edt_cpfKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TFrmCadastroClientes.edt_datacadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TFrmCadastroClientes.edt_datanascKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TFrmCadastroClientes.edt_emailKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TFrmCadastroClientes.edt_enderecoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TFrmCadastroClientes.edt_nomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TFrmCadastroClientes.edt_RGKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TFrmCadastroClientes.edt_TelefoneKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TFrmCadastroClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dtmConexao.qryConsultaClientes.Cancel;
  FrmCadastroClientes.pgcConsultaClientes.ActivePageIndex := 0;
end;

procedure TFrmCadastroClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if (Key = #13) then
        begin
            Key := #0;
            Perform(WM_NEXTDLGCTL, 0, 0);
        end;
end;

procedure TFrmCadastroClientes.FormShow(Sender: TObject);
begin
  dtmConexao.CustomizaTela(self);
  dtmConexao.MostrarClientes;
  edtBuscarclientes.SetFocus;

end;

procedure TFrmCadastroClientes.grdconsultaclientDblClick(Sender: TObject);
begin
  btnAlterarclientes.Click;
end;

procedure TFrmCadastroClientes.pesquisarclientes;
begin
  dtmConexao.qryConsultaClientes.Close;
  dtmConexao.qryConsultaClientes.Sql.Clear;
  dtmConexao.qryConsultaClientes.Sql.Add('SELECT * FROM Clientes ');

  case rgclientes.ItemIndex of
    0:

      begin
        dtmConexao.qryConsultaClientes.Sql.Add('WHERE upper(cli_nome) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarclientes.Text + '%')));
        edtbuscardata.Visible := False;
        lblCadclientes.Caption := 'Digite o nome do cliente';

      end;

    1:

      begin
        dtmConexao.qryConsultaClientes.Sql.Add('Where CLI_DATA_NASC = :data');
        dtmConexao.qryConsultaClientes.parambyname('data').AsDate :=
          strToDate(formatDateTime('dd/mm/yyyy', edtbuscardata.Date));
        edtbuscardata.Visible := True;
        lblCadclientes.Caption := 'Marque a data de nascimento do cliente';

      end;

    2:
      begin
        dtmConexao.qryConsultaClientes.Sql.Add('WHERE upper(CLI_RG) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarclientes.Text + '%')));
        edtbuscardata.Visible := False;
        lblCadclientes.Caption := 'Digite o nº de RG do cliente';

      end;

    3:
      begin
        dtmConexao.qryConsultaClientes.Sql.Add('WHERE upper(CLI_CPF) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarclientes.Text + '%')));
        edtbuscardata.Visible := False;
        lblCadclientes.Caption := 'Digite o nº de CPF do cliente';

      end;

  end;

  dtmConexao.qryConsultaClientes.Sql.Add('order by cli_nome');
  dtmConexao.qryConsultaClientes.Open;
end;

procedure TFrmCadastroClientes.rgclientesClick(Sender: TObject);
begin
  pesquisarclientes;
end;

procedure TFrmCadastroClientes.rgSituacaoClientesClick(Sender: TObject);
begin
  dtmConexao.qryConsultaClientes.Close;
  dtmConexao.qryConsultaClientes.Sql.Clear;
  dtmConexao.qryConsultaClientes.Sql.Add('select cli_nome from clientes');

  case rgSituacaoClientes.ItemIndex of

    0:
      begin

      end;

    1:
      begin

      end;

    2:
      begin

      end;

  end;
end;

end.
