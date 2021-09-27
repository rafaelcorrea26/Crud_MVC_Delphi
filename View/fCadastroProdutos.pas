unit fCadastroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, IdBaseComponent,
  IdComponent, IdIPWatch;

type
  TfrmCadastroProdutos = class(TForm)
    dbgProdutos: TDBGrid;
    pgcPrincipal: TPageControl;
    tsConsultaProdutos: TTabSheet;
    tsCadastroProdutos: TTabSheet;
    pnl13: TPanel;
    edtSaldo: TDBEdit;
    lblsaldo: TLabel;
    edtPrecoVista: TDBEdit;
    lblPrecovista: TLabel;
    cbxIDUnidade: TDBLookupComboBox;
    lblidunid: TLabel;
    edtDescProd: TDBEdit;
    lblDescricao: TLabel;
    lblcodbarra: TLabel;
    edtCodBarra: TDBEdit;
    lblprecoprazo: TLabel;
    edtPrecoPrazo: TDBEdit;
    pnlConsulta: TPanel;
    pnlbotoesconsultprod: TPanel;
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    btnMostrarProdutos: TButton;
    btnSair: TButton;
    pnledtconsultprod: TPanel;
    lblBuscarProd: TLabel;
    edtBuscarProdutos: TEdit;
    rgProdutos: TRadioGroup;
    edtDataCad: TDBEdit;
    lblData_Cad: TLabel;
    edtbuscardataprod: TDateTimePicker;
    btnPesquisarProd: TButton;
    pnl1: TPanel;
    btnCadastrarProd: TButton;
    btnSairProd: TButton;
    btnCancelcadprod: TButton;
    pnlCadastro: TPanel;
    lblConsultadeprodutos: TLabel;
    Label1: TLabel;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCadastrarProdClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnSairProdClick(Sender: TObject);
    procedure btnMostrarProdutosClick(Sender: TObject);
    procedure dbgProdutosDblClick(Sender: TObject);
    procedure edtBuscarProdutosChange(Sender: TObject);
    procedure btnCancelcadprodClick(Sender: TObject);
    procedure rgProdutosClick(Sender: TObject);
    procedure edtBuscarProdutosKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarProdClick(Sender: TObject);
    procedure edtDescProdKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodBarraKeyPress(Sender: TObject; var Key: Char);
    procedure edtPrecoVistaKeyPress(Sender: TObject; var Key: Char);
    procedure edtPrecoPrazoKeyPress(Sender: TObject; var Key: Char);
    procedure edtSaldoKeyPress(Sender: TObject; var Key: Char);
    procedure edtSaldoExit(Sender: TObject);
    procedure cbxIDUnidadeKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private

    procedure PesquisarProd;
  public

    { Public declarations }
  end;

var
  frmCadastroProdutos: TfrmCadastroProdutos;

implementation

uses
  dConexao, fPrincipal, fCadastroUnidades, fCadastroUsuario, fLogin;

{$R *.dfm}

procedure TfrmCadastroProdutos.btnIncluirClick(Sender: TObject);
begin
  // Ativa o painel
  tsConsultaProdutos.TabVisible := False;
  tsCadastroProdutos.TabVisible := True;
  dtmConexao.qryConsultaUnidades.Open;
  dtmConexao.qryConsultaProdutos.Active := True;
  dtmConexao.qryConsultaProdutos.Insert;

  dtmConexao.qryConsultaProdutosDATA_CAD.Value := Date;
  frmCadastroProdutos.pgcPrincipal.ActivePageIndex := 1;
  frmCadastroProdutos.edtDescProd.SetFocus;

end;

procedure TfrmCadastroProdutos.btnMostrarProdutosClick(Sender: TObject);
begin
  dtmConexao.MostrarProdutos;
  edtBuscarProdutos.Text := '';
  edtbuscardataprod.Visible := False;
  edtBuscarProdutos.SetFocus;
  rgProdutos.ItemIndex := 0;

end;

procedure TfrmCadastroProdutos.btnPesquisarProdClick(Sender: TObject);
begin
  PesquisarProd;
end;

procedure TfrmCadastroProdutos.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroProdutos.btnSairProdClick(Sender: TObject);
begin
  if dtmConexao.qryConsultaProdutos.State in [dsInsert, dsEdit] then
  begin
    ShowMessage('Salve ou Cancele o registro antes de sair');
  end

  else

  begin
    frmCadastroProdutos.pgcPrincipal.ActivePageIndex := 0;
  end;

end;

procedure TfrmCadastroProdutos.cbxIDUnidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    // btnpesquisaclientevenda.Click;
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TfrmCadastroProdutos.dbgProdutosDblClick(Sender: TObject);
begin
  btnAlterar.Click;
end;

procedure TfrmCadastroProdutos.edtBuscarProdutosChange(Sender: TObject);
begin
  dtmConexao.qryConsultaProdutos.Close;
  dtmConexao.qryConsultaProdutos.Sql.Clear;
  dtmConexao.qryConsultaProdutos.Sql.ADD('SELECT                 ');
  dtmConexao.qryConsultaProdutos.Sql.ADD('PRODUTOS.ID,    ');
  dtmConexao.qryConsultaProdutos.Sql.ADD('PRODUTOS.descricao,    ');
  dtmConexao.qryConsultaProdutos.Sql.ADD('PRODUTOS.id_unidade,    ');
  dtmConexao.qryConsultaProdutos.Sql.ADD('unidades.unidade,      ');
  dtmConexao.qryConsultaProdutos.Sql.ADD('PRODUTOS.COD_BARRAS,   ');
  dtmConexao.qryConsultaProdutos.Sql.ADD('PRODUTOS.PRECO_VISTA,  ');
  dtmConexao.qryConsultaProdutos.Sql.ADD('PRODUTOS.PRECO_PRAZO,  ');
  dtmConexao.qryConsultaProdutos.Sql.ADD('PRODUTOS.SALDO,         ');
  dtmConexao.qryConsultaProdutos.Sql.ADD('PRODUTOS.DATA_CAD         ');
  dtmConexao.qryConsultaProdutos.Sql.ADD('FROM PRODUTOS          ');
  dtmConexao.qryConsultaProdutos.Sql.ADD
    ('INNER JOIN UNIDADES                   ');
  dtmConexao.qryConsultaProdutos.Sql.ADD
    ('ON (PRODUTOS.ID_UNIDADE = UNIDADES.ID) ');

  case rgProdutos.ItemIndex of
    0:

      begin

        dtmConexao.qryConsultaProdutos.Sql.ADD
          ('WHERE upper(PRODUTOS.DESCRICAO) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarProdutos.Text + '%')));

      end;

    1:

      begin
        dtmConexao.qryConsultaProdutos.Sql.ADD
          ('WHERE upper(PRODUTOS.COD_BARRAS) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarProdutos.Text + '%')));

      end;

    2:

      begin
        dtmConexao.qryConsultaProdutos.Sql.ADD('Where DATA_CAD = :data');
        dtmConexao.qryConsultaProdutos.parambyname('data').AsDate :=
          strToDate(formatDateTime('dd/mm/yyyy', edtbuscardataprod.Date));
        edtbuscardataprod.Visible := True;

      end;
  end;

  dtmConexao.qryConsultaProdutos.Open;

end;

procedure TfrmCadastroProdutos.edtBuscarProdutosKeyPress(Sender: TObject;
  var Key: Char);
begin
  case rgProdutos.ItemIndex of
    1:
      begin
        if (Key in ['0' .. '9'] = False) and (Word(Key) <> VK_BACK) then
        begin
          ShowMessage('Digite aqui apenas números');
          Key := #0;
        end;
      end;
  end;
end;

procedure TfrmCadastroProdutos.edtCodBarraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    // btnpesquisaclientevenda.Click;
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TfrmCadastroProdutos.edtDescProdKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    // btnpesquisaclientevenda.Click;
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TfrmCadastroProdutos.edtPrecoPrazoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    // btnpesquisaclientevenda.Click;
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TfrmCadastroProdutos.edtPrecoVistaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    // btnpesquisaclientevenda.Click;
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TfrmCadastroProdutos.edtSaldoExit(Sender: TObject);
begin
  btnCadastrarProd.SetFocus;
end;

procedure TfrmCadastroProdutos.edtSaldoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    // btnpesquisaclientevenda.Click;
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TfrmCadastroProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dtmConexao.qryConsultaProdutos.Cancel;
  frmCadastroProdutos.pgcPrincipal.ActivePageIndex := 0;
end;

procedure TfrmCadastroProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssShift in Shift) then
  begin
    if Key = VK_F11 then
      frmLogin.ShowModal;
  end;
end;

procedure TfrmCadastroProdutos.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if (Key = #13) then
        begin
            Key := #0;
            Perform(WM_NEXTDLGCTL, 0, 0);
        end;
end;

procedure TfrmCadastroProdutos.FormShow(Sender: TObject);
begin

  dtmConexao.MostrarProdutos;
  edtBuscarProdutos.SetFocus;
  //dtmConexao.BotoesFicamComEnableFalse(Self);
  dtmConexao.CustomizaTela(self);
end;

procedure TfrmCadastroProdutos.PesquisarProd;
begin
  dtmConexao.qryConsultaProdutos.Close;
  dtmConexao.qryConsultaProdutos.Sql.Clear;
  dtmConexao.qryConsultaProdutos.Sql.ADD('SELECT                 ');
  dtmConexao.qryConsultaProdutos.Sql.ADD('PRODUTOS.ID,    ');
  dtmConexao.qryConsultaProdutos.Sql.ADD('PRODUTOS.descricao,    ');
  dtmConexao.qryConsultaProdutos.Sql.ADD('PRODUTOS.id_unidade,    ');
  dtmConexao.qryConsultaProdutos.Sql.ADD('unidades.unidade,      ');
  dtmConexao.qryConsultaProdutos.Sql.ADD('PRODUTOS.COD_BARRAS,   ');
  dtmConexao.qryConsultaProdutos.Sql.ADD('PRODUTOS.PRECO_VISTA,  ');
  dtmConexao.qryConsultaProdutos.Sql.ADD('PRODUTOS.PRECO_PRAZO,  ');
  dtmConexao.qryConsultaProdutos.Sql.ADD('PRODUTOS.SALDO,         ');
  dtmConexao.qryConsultaProdutos.Sql.ADD('PRODUTOS.DATA_CAD         ');
  dtmConexao.qryConsultaProdutos.Sql.ADD('FROM PRODUTOS          ');
  dtmConexao.qryConsultaProdutos.Sql.ADD
    ('INNER JOIN UNIDADES                   ');
  dtmConexao.qryConsultaProdutos.Sql.ADD
    ('ON (PRODUTOS.ID_UNIDADE = UNIDADES.ID) ');

  case rgProdutos.ItemIndex of
    0:

      begin

        dtmConexao.qryConsultaProdutos.Sql.ADD
          ('WHERE upper(PRODUTOS.DESCRICAO) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarProdutos.Text + '%')));

        lblBuscarProd.Caption := 'Digite a Descrição do produto';
        edtBuscarProdutos.Clear;
        edtbuscardataprod.Visible := False;

      end;

    1:

      begin
        dtmConexao.qryConsultaProdutos.Sql.ADD
          ('WHERE upper(PRODUTOS.COD_BARRAS) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarProdutos.Text + '%')));

        lblBuscarProd.Caption := 'Digite código de barras do produto';
        edtBuscarProdutos.Clear;
        edtbuscardataprod.Visible := False;
      end;

    2:

      begin
        dtmConexao.qryConsultaProdutos.Sql.ADD('Where DATA_CAD = :data');
        dtmConexao.qryConsultaProdutos.parambyname('data').AsDate :=
          strToDate(formatDateTime('dd/mm/yyyy', edtbuscardataprod.Date));
        edtbuscardataprod.Visible := True;

        lblBuscarProd.Caption := 'Digite data de cadastro do produto';

      end;
  end;

  dtmConexao.qryConsultaProdutos.Open;
end;

procedure TfrmCadastroProdutos.rgProdutosClick(Sender: TObject);
begin
  PesquisarProd;
end;

procedure TfrmCadastroProdutos.btnAlterarClick(Sender: TObject);
begin
  dtmConexao.GravandoLog('Cadastro de produtos', 'Alterou dados');
  dtmConexao.qryConsultaUnidades.Open;
  dtmConexao.qryConsultaProdutos.Edit;
  frmCadastroProdutos.pgcPrincipal.ActivePageIndex := 1;
  frmCadastroProdutos.edtDescProd.SetFocus;

end;

procedure TfrmCadastroProdutos.btnAtualizarClick(Sender: TObject);
begin
  dtmConexao.MostrarProdutos;
end;

procedure TfrmCadastroProdutos.btnCadastrarProdClick(Sender: TObject);
begin
  if Trim(edtDescProd.text) = '' then
  begin
    ShowMessage('Preecha a descrição do produto');
    edtDescProd.SetFocus;
  end

  else if Trim(cbxIDUnidade.text) = '' then
  begin
    ShowMessage('Preecha o campo unidade do produto');
    cbxIDUnidade.SetFocus;
  end

  else if Trim(edtCodBarra.text) = '' then
  begin
    ShowMessage('Preecha o campo código de barras do produto');
    edtCodBarra.SetFocus;
  end

  else if Trim(edtPrecoVista.text) = '' then
  begin
    ShowMessage('Preecha o campo preço a vista do produto');
    edtPrecoVista.SetFocus;
  end

  else if Trim(edtPrecoPrazo.text) = '' then
  begin
    ShowMessage('Preecha o campo preço a prazo do produto');
    edtPrecoPrazo.SetFocus;
  end

  else if Trim(edtSaldo.text) = '' then
  begin
    ShowMessage('Preecha o campo de saldo do produto');
    edtSaldo.SetFocus;
  end
  else
  begin

    dtmConexao.GravandoLog('Cadastro Produto', 'Inclusao produto');

    dtmConexao.qryConsultaProdutos.Post;
    ShowMessage('Produto cadastrado com sucesso');

    frmCadastroProdutos.tsCadastroProdutos.TabVisible := False;
    frmCadastroProdutos.tsConsultaProdutos.TabVisible := True;
    dtmConexao.qryConsultaProdutos.Close;
    frmCadastroProdutos.pgcPrincipal.ActivePageIndex := 0;
    dtmConexao.MostrarProdutos;
  end;
end;

procedure TfrmCadastroProdutos.btnCancelcadprodClick(Sender: TObject);
begin
  dtmConexao.qryConsultaProdutos.Cancel;
  frmCadastroProdutos.pgcPrincipal.ActivePageIndex := 0;
end;

procedure TfrmCadastroProdutos.btnExcluirClick(Sender: TObject);
begin
  if dtmConexao.qryConsultaProdutos.IsEmpty then
  begin

    ShowMessage('Registros Zerado');
  end
  else
  begin

    case Application.MessageBox
      (PWideChar('Deseja excluir ' + (dbgProdutos.columns.items[0].Field.Text) +
      '?'), 'Excluir Produto', MB_YESNO + MB_ICONQUESTION) of
      IDYES:
        begin

          dtmConexao.GravandoLog('Cadastro de produtos', 'Excluiu dados');
          dtmConexao.qryConsultaProdutos.Delete;
          dtmConexao.qryConsultaProdutos.Refresh;
          ShowMessage('Produto excluido');

        end;
      IDNO:
        begin
          exit;
        end;

    end;

  end;

end;

end.
