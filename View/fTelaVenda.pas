unit fTelaVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  fConsultaVenda, uClassTypes, IdBaseComponent, IdComponent,
  IdIPWatch;

type
  TfrmTelaVenda = class(TForm)
    pgcTelaVenda: TPageControl;
    tsTelaVenda: TTabSheet;
    pnlCadastro: TPanel;
    lblVenda: TLabel;
    pnlbtnsvenda: TPanel;
    btnConfirmafinalvenda: TButton;
    btnsairfinalvenda: TButton;
    lblDesconto: TLabel;
    lbldescontoporcento: TLabel;
    shpfundototal: TShape;
    Total: TLabel;
    lblTotal: TLabel;
    pnl1: TPanel;
    edtQUANTIDADEVenda: TDBEdit;
    lbltotalproduto: TLabel;
    edtValorTotal: TDBEdit;
    lblquantidadeproduto: TLabel;
    edtValorUnit: TDBEdit;
    lblPrecoUnit: TLabel;
    btnCONFIRMARPRODUTO: TButton;
    btncancelarproduto: TButton;
    btnExcluirproduto: TButton;
    edtEMISSAO: TDBEdit;
    lblemissao: TLabel;
    edtProdutoVenda: TDBEdit;
    lblprodutovenda: TLabel;
    btnprodutovenda: TSpeedButton;
    lblShowProduto: TLabel;
    btnInserir: TButton;
    edttotalfinal: TDBEdit;
    tspgctelaconsultavenda: TTabSheet;
    pnlConsulta: TPanel;
    lblconsultavenda: TLabel;
    pnl3: TPanel;
    grdConsultaVendas: TDBGrid;
    lblconsultavendas: TLabel;
    edtBuscarVendas: TEdit;
    lblbuscarvendas: TLabel;
    rgConsultaVendas: TRadioGroup;
    pnl4: TPanel;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btnsairconsultavendas: TButton;
    pnl5: TPanel;
    lblClienteVenda: TLabel;
    edtclientevenda: TDBEdit;
    lblFormadepgt: TLabel;
    edtFormapgt: TDBEdit;
    btnpesquisaclientevenda: TSpeedButton;
    btnpesquisaformadepgt: TSpeedButton;
    lblShowCliente: TLabel;
    lblShowFormadepgt: TLabel;
    lblvendedor: TLabel;
    edtVendedorvenda: TDBEdit;
    btnPESQUISARVENDEDOR: TSpeedButton;
    lbl3: TLabel;
    edtOBSvenda: TDBEdit;
    lblShowVendedor: TLabel;
    btn1: TButton;
    btncancelarvenda: TButton;
    grdvenda: TDBGrid;
    edtDESCONTO: TDBEdit;
    edtdescontoporcento: TDBEdit;
    edtTotalBruto: TDBEdit;
    Label1: TLabel;
    lbltotalbruto: TLabel;
    Shape1: TShape;
    procedure btnConfirmafinalvendaClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btncancelarvendaClick(Sender: TObject);
    procedure btnCONFIRMARPRODUTOClick(Sender: TObject);
    procedure btncancelarprodutoClick(Sender: TObject);
    procedure btnExcluirprodutoClick(Sender: TObject);
    procedure edtclientevendaExit(Sender: TObject);
    procedure edtVendedorvendaExit(Sender: TObject);
    procedure btnPESQUISARVENDEDORClick(Sender: TObject);
    procedure edtFormapgtExit(Sender: TObject);
    procedure btnpesquisaformadepgtClick(Sender: TObject);
    procedure edtProdutoVendaExit(Sender: TObject);
    procedure edtclientevendaKeyPress(Sender: TObject; var Key: Char);
    procedure edtVendedorvendaKeyPress(Sender: TObject; var Key: Char);
    procedure edtFormapgtKeyPress(Sender: TObject; var Key: Char);
    procedure edtOBSvendaKeyPress(Sender: TObject; var Key: Char);
    procedure edtProdutoVendaKeyPress(Sender: TObject; var Key: Char);
    procedure btnsairfinalvendaClick(Sender: TObject);
    procedure edtQUANTIDADEVendaExit(Sender: TObject);
    procedure edtValorUnitExit(Sender: TObject);
    procedure edtValorUnitKeyPress(Sender: TObject; var Key: Char);
    procedure edtQUANTIDADEVendaKeyPress(Sender: TObject; var Key: Char);
    procedure btnInserirClick(Sender: TObject);
    procedure btnCONFIRMARPRODUTOKeyPress(Sender: TObject; var Key: Char);
    procedure btnInserirKeyPress(Sender: TObject; var Key: Char);
    procedure btnpesquisaclientevendaClick(Sender: TObject);
    procedure btnprodutovendaClick(Sender: TObject);
    procedure btnPorcentoClick(Sender: TObject);
    procedure btnValorClick(Sender: TObject);
    procedure edtdescontoporcentoExit(Sender: TObject);
    procedure edtDESCONTOExit(Sender: TObject);
    procedure edtdescontoporcentoKeyPress(Sender: TObject; var Key: Char);
    procedure edtDESCONTOKeyPress(Sender: TObject; var Key: Char);
    procedure btn4Click(Sender: TObject);
    procedure tsTelaVendaShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure tspgctelaconsultavendaShow(Sender: TObject);
    procedure edtBuscarVendasChange(Sender: TObject);
    procedure rgConsultaVendasClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure grdConsultaVendasDblClick(Sender: TObject);
    procedure tsTelaVendaExit(Sender: TObject);
    procedure btnsairconsultavendasClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FTotalVenda: Currency;
    FTipoPesquisa: TTipoPesquisa;
    totalbruto: Currency;
    procedure LimparCache(Sender: TObject);
    procedure DesativaVendaItens;

    //
    procedure DesativarEnabledVendaItens;
    procedure AtivarEnabledVendaItens;
    //
    procedure ValorTotal;
    procedure TotalFinal;
    //
    procedure CalculaPercentualDesconto;
    procedure CalculaValorDesconto;
    //
    procedure ChamarTotal;

    function BuscaInformacoes(pCampo: array of string; pTabela: string;
      pValor: string; Sender: TObject = nil): String;

    procedure MostrarClientelbl;
    procedure MostrarVendedorlbl;
    procedure MostrarFormaPGTlbl;
    procedure MostrarProdutoslbl;
    procedure IniciarVenda;

    procedure ProcuraVenda;
  public
    { Public declarations }
    TipoOperacao: string;
    CapturaIDdaVenda: String;

    procedure AtivarVendaItens;
  end;

var
  frmTelaVenda: TfrmTelaVenda;

implementation

uses
  dConexao;

{$R *.dfm}

procedure TfrmTelaVenda.AtivarEnabledVendaItens;
begin
  edtQUANTIDADEVenda.Enabled := True;
  edtValorUnit.Enabled := True;
  edtProdutoVenda.Enabled := True;

  btnCONFIRMARPRODUTO.Enabled := True;
  btncancelarproduto.Enabled := True;
  btnExcluirproduto.Enabled := True;
  btnprodutovenda.Enabled := True;
  // btnInserir.Enabled := True;

end;

procedure TfrmTelaVenda.AtivarVendaItens;
begin
  lblquantidadeproduto.Visible := True;
  lblPrecoUnit.Visible := True;
  lblemissao.Visible := True;
  lbltotalproduto.Visible := True;
  lblprodutovenda.Visible := True;
  lblShowProduto.Visible := True;

  edtQUANTIDADEVenda.Visible := True;
  edtValorUnit.Visible := True;
  edtEMISSAO.Visible := True;
  edtValorTotal.Visible := True;
  edtProdutoVenda.Visible := True;

  btnCONFIRMARPRODUTO.Visible := True;
  btncancelarproduto.Visible := True;
  btnExcluirproduto.Visible := True;
  btnprodutovenda.Visible := True;
  btnInserir.Visible := True;

end;

procedure TfrmTelaVenda.btn1Click(Sender: TObject);
begin
  if Trim(edtclientevenda.Field.AsString) = '' then
  begin
    ShowMessage('Preecha o campo cliente');
    edtclientevenda.SetFocus;
  end

  else

    if Trim(edtVendedorvenda.Field.AsString) = '' then
  begin
    ShowMessage('Preecha o campo vendedor');
    edtVendedorvenda.SetFocus;
  end

  else

    if Trim(edtFormapgt.Field.AsString) = '' then
  begin
    ShowMessage('Preecha o campo forma de pagamento');
    edtFormapgt.SetFocus;
  end

  else

    if TipoOperacao = 'A' then
  begin

    edtProdutoVenda.SetFocus;
    dtmConexao.qryVendaItens.Edit;

  end
  else

  begin
    AtivarVendaItens;
    edtProdutoVenda.Visible := True;
    edtProdutoVenda.SetFocus;

    dtmConexao.qryVenda.Post;

    dtmConexao.qryVendaItens.Open;
    dtmConexao.qryVendaItens.Active := True;
    dtmConexao.qryVendaItens.Insert;

  end;

end;

procedure TfrmTelaVenda.btn2Click(Sender: TObject);
begin
  if dtmConexao.qryVenda.IsEmpty then
  begin

    ShowMessage('Registros Zerado');
  end
  else
  begin

    case Application.MessageBox(PWideChar('Deseja excluir a venda nº ' +
      (grdConsultaVendas.columns.items[0].Field.Text) + '?'), 'Excluir Venda',
      MB_YESNO + MB_ICONQUESTION) of
      IDYES:
        begin
          // dtmConexao.qryVendaItens.Delete;
          dtmConexao.qryVenda.Delete;
          dtmConexao.FDSchemaAdapter1.ApplyUpdates(0);
          ShowMessage('Venda excluida');

        end;
      IDNO:
        begin
          exit;
        end;

    end;

  end;
end;

procedure TfrmTelaVenda.btn3Click(Sender: TObject);
begin

  If (grdConsultaVendas.DataSource.DataSet.RecordCount <= 0) then
  begin
    ShowMessage
      ('Selecione algo para alterar, se não tiver vendas, faça uma venda antes.');
  end

  else
  begin

    frmTelaVenda.TipoOperacao := 'A';
    dtmConexao.MostrarVendas(dtmConexao.qryVendaID.AsInteger);

    dtmConexao.MostrarItens(dtmConexao.qryVendaID.AsInteger);
    dtmConexao.qryVenda.Edit;

    // pgcTelaVenda.ActivePageIndex := 0;
    tspgctelaconsultavenda.TabVisible := False;
    tsTelaVenda.TabVisible := True;
    edtclientevenda.SetFocus;

  end;
end;

procedure TfrmTelaVenda.btn4Click(Sender: TObject);
begin
  frmTelaVenda.TipoOperacao := 'I';
  tspgctelaconsultavenda.TabVisible := False;
  tsTelaVenda.TabVisible := True;

end;

procedure TfrmTelaVenda.btn5Click(Sender: TObject);
begin
  dtmConexao.MostrarVendas(0);
  dtmConexao.MostrarItens(0);
  edtBuscarVendas.Text := '';
  edtBuscarVendas.SetFocus;
  rgConsultaVendas.ItemIndex := 0;

end;

procedure TfrmTelaVenda.btn6Click(Sender: TObject);
begin
  dtmConexao.qryVenda.Edit;
  AtivarEnabledVendaItens;
  btnCONFIRMARPRODUTO.Enabled := True;
end;

procedure TfrmTelaVenda.btncancelarprodutoClick(Sender: TObject);
begin
  dtmConexao.qryVenda.Cancel;
  dtmConexao.qryVendaItens.Cancel;
  dtmConexao.qryVenda.close;
  dtmConexao.qryVendaItens.close;
  close;
  lblShowProduto.Caption := 'Produto';
  lblShowCliente.Caption := 'Cliente';
  lblShowFormadepgt.Caption := 'Forma de pagamento';
  lblShowVendedor.Caption := 'Vendedor';
  lblTotal.Caption := '0,00';
  lbltotalbruto.Caption := '0,00';
  btnInserir.Enabled := False;

end;

procedure TfrmTelaVenda.btncancelarvendaClick(Sender: TObject);
begin
  lblShowCliente.Caption := 'Cliente';
  lblShowVendedor.Caption := 'Vendedor';
  lblShowFormadepgt.Caption := 'Forma de pagamento';
  lblShowProduto.Caption := 'Produto';
  lblTotal.Caption := '0,00';
  lbltotalbruto.Caption := '0,00';
  FTotalVenda := 0;

  lblquantidadeproduto.Visible := False;
  lblPrecoUnit.Visible := False;
  lblemissao.Visible := False;
  lbltotalproduto.Visible := False;
  lblprodutovenda.Visible := False;
  lblShowProduto.Visible := False;

  edtQUANTIDADEVenda.Visible := False;
  edtValorUnit.Visible := False;
  edtEMISSAO.Visible := False;
  edtValorTotal.Visible := False;
  edtProdutoVenda.Visible := False;

  btnCONFIRMARPRODUTO.Visible := False;
  btncancelarproduto.Visible := False;
  btnExcluirproduto.Visible := False;
  btnprodutovenda.Visible := False;
  btnInserir.Visible := False;

  dtmConexao.qryVenda.close;
  dtmConexao.qryVendaItens.close;
  btnInserir.Enabled := False;
  close;

end;

procedure TfrmTelaVenda.btnConfirmafinalvendaClick(Sender: TObject);
begin
  dtmConexao.qryVendaItens.Edit;
  edtTotalBruto.Field.Value := FTotalVenda;

  if TipoOperacao = 'A' then
  begin

    case Application.MessageBox('Deseja alterar a venda?', 'alterar venda',
      MB_YESNO + MB_ICONQUESTION) of
      IDYES:
        begin
          dtmConexao.GravandoLog('Tela de venda', 'Alteração de venda');
          dtmConexao.qryVenda.Edit;
          btnConfirmafinalvenda.Enabled := True;
          dtmConexao.qryVendaItens.Post;
          edtTotalBruto.Field.Value := FTotalVenda;
          edttotalfinal.Field.Value := lblTotal.Caption;
          dtmConexao.FDSchemaAdapter1.ApplyUpdates(0);
          ShowMessage('Venda alterada com sucesso');
          FTotalVenda := 0;
          close;

        end;
      IDNO:
        begin
          close;
        end;
    end;

  end
  else
  begin
    dtmConexao.qryVendaItens.Edit;

    // edtTotalBruto.Field.Value := FTotalVenda;

    dtmConexao.GravandoLog('Tela de venda', 'Venda realizada');
    edttotalfinal.Field.Value := lblTotal.Caption;
    dtmConexao.qryVenda.Post;

    dtmConexao.FDSchemaAdapter1.ApplyUpdates(0);
    ShowMessage('Venda realizada com sucesso');
    FTotalVenda := 0;
    CapturaIDdaVenda := grdvenda.columns.items[0].Field.Text;
    //

    // qryvenda
    dtmConexao.qryimpRelVenda.SQL.Clear;
    dtmConexao.qryimpRelVenda.close;

    dtmConexao.qryimpRelVenda.SQL.Add('SELECT');
    dtmConexao.qryimpRelVenda.SQL.Add('VENDA.ID,');
    dtmConexao.qryimpRelVenda.SQL.Add
      ('VENDA.ID_CLIENTE, VENDA.ID_VENDEDOR, VENDA.ID_FORMA_PAGAMENTO, VENDA.EMISSAO,');
    dtmConexao.qryimpRelVenda.SQL.Add
      ('VENDA.OBSERVACAO, VENDA.TOTAL, VENDA.PERCENTUAL_DESCONTO,');
    dtmConexao.qryimpRelVenda.SQL.Add('VENDA.VALOR_DESCONTO,');
    dtmConexao.qryimpRelVenda.SQL.Add('VENDA.TOTAL_BRUTO,');

    dtmConexao.qryimpRelVenda.SQL.Add
      ('CLIENTES.CLI_Nome cliente_nome, FORMA_PAGAMENTO.Descricao forma_Descricao,');
    dtmConexao.qryimpRelVenda.SQL.Add('VENDEDORES.Nome vendedor_nome');

    dtmConexao.qryimpRelVenda.SQL.Add('FROM VENDA');

    dtmConexao.qryimpRelVenda.SQL.Add
      ('INNER JOIN CLIENTES ON(VENDA.ID_CLIENTE = CLIENTES.CLI_ID)');
    dtmConexao.qryimpRelVenda.SQL.Add
      ('INNER JOIN FORMA_PAGAMENTO ON(VENDA.ID_FORMA_PAGAMENTO = FORMA_PAGAMENTO.ID)');
    dtmConexao.qryimpRelVenda.SQL.Add
      ('INNER JOIN VENDEDORES ON(VENDA.ID_VENDEDOR = VENDEDORES.ID)');

    dtmConexao.qryimpRelVenda.SQL.Add('where venda.id =' + (CapturaIDdaVenda));

    dtmConexao.qryimpRelVenda.Open;
    //

    // vendaitens

    // dtmConexao.qryimpRelVenda_itens.SQL.Clear;
    // dtmConexao.qryimpRelVenda_itens.close;
    dtmConexao.qryimpRelVenda_itens.Open;
    dtmConexao.frxReport3.LoadFromFile
      (GetCurrentDir + '\Rel\Relatorio_Venda.fr3');
    dtmConexao.frxReport3.ShowReport();

    // reseta lbls//
    lblShowProduto.Caption := 'Produto';
    lblShowCliente.Caption := 'Cliente';
    lblShowFormadepgt.Caption := 'Forma de pagamento';
    lblShowVendedor.Caption := 'Vendedor';

    case Application.MessageBox('Deseja iniciar uma nova venda?',
      'Iniciar venda', MB_YESNO + MB_ICONQUESTION) of
      IDYES:
        begin
          DesativaVendaItens;
          IniciarVenda;

        end;
      IDNO:
        begin
          close;
        end;
    end;
  end;

end;

procedure TfrmTelaVenda.btnCONFIRMARPRODUTOClick(Sender: TObject);
begin
  if (Trim(edtProdutoVenda.Text) = '') then
  begin
    ShowMessage('Atenção! O campo produto é de preenchimento obrigatório!');
    edtProdutoVenda.SetFocus;
  end
  else

  begin
    dtmConexao.qryVendaItens.Post;
    ChamarTotal;

    ShowMessage('Produto inserido');
    btnInserir.Enabled := True;
    btnInserir.SetFocus;
    edtProdutoVenda.Clear;
    edtValorUnit.Clear;
    edtQUANTIDADEVenda.Clear;
    edtValorTotal.Clear;

    lblShowProduto.Caption := 'Produto';

    DesativarEnabledVendaItens;
    btnConfirmafinalvenda.Enabled := True;
    dtmConexao.qryVendaItens.Edit;
    dtmConexao.qryVenda.Edit;

  end;

end;

procedure TfrmTelaVenda.btnCONFIRMARPRODUTOKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure TfrmTelaVenda.btnExcluirprodutoClick(Sender: TObject);
begin
  if dtmConexao.qryVendaItens.IsEmpty then
  begin

    ShowMessage('Registros Zerado');
  end
  else
  begin

    case Application.MessageBox
      (PWideChar('Deseja excluir ' + (grdvenda.columns.items[1].Field.Text) +
      '?'), 'Excluir Produto', MB_YESNO + MB_ICONQUESTION) of
      IDYES:
        begin
          dtmConexao.qryVendaItens.Delete;

          ChamarTotal;

        end;
      IDNO:
        begin
          exit;
        end;
    end;
  end

end;

procedure TfrmTelaVenda.btnInserirClick(Sender: TObject);
begin
  dtmConexao.qryVendaItens.Insert;
  AtivarEnabledVendaItens;
  edtProdutoVenda.SetFocus;

end;

procedure TfrmTelaVenda.btnInserirKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure TfrmTelaVenda.btnpesquisaclientevendaClick(Sender: TObject);
begin
  frmConsultaVenda.TipoPesquisa := tpCliente;

  frmConsultaVenda.ShowModal;
  edtclientevenda.Field.AsString := frmConsultaVenda.CapturaID;
  lblShowCliente.Caption := frmConsultaVenda.CapturaNome;

end;

procedure TfrmTelaVenda.btnpesquisaformadepgtClick(Sender: TObject);
begin
  frmConsultaVenda.TipoPesquisa := tpFormaPagamento;

  frmConsultaVenda.ShowModal;

  edtFormapgt.Field.AsString := frmConsultaVenda.CapturaID;
  lblFormadepgt.Caption := frmConsultaVenda.CapturaNome;
end;

procedure TfrmTelaVenda.btnPESQUISARVENDEDORClick(Sender: TObject);
begin

  frmConsultaVenda.TipoPesquisa := tpVendedor;

  frmConsultaVenda.ShowModal;

  edtVendedorvenda.Field.AsString := frmConsultaVenda.CapturaID;
  lblShowVendedor.Caption := frmConsultaVenda.CapturaNome;

end;

procedure TfrmTelaVenda.btnPorcentoClick(Sender: TObject);
begin
  // CalculaPercentualDesconto;
end;

procedure TfrmTelaVenda.btnprodutovendaClick(Sender: TObject);
begin
  frmConsultaVenda.TipoPesquisa := tpProduto;

  frmConsultaVenda.ShowModal;
  edtProdutoVenda.Field.AsString := frmConsultaVenda.CapturaID;
  lblShowProduto.Caption := frmConsultaVenda.CapturaNome;
end;

procedure TfrmTelaVenda.btnsairconsultavendasClick(Sender: TObject);
begin
  close;
end;

procedure TfrmTelaVenda.btnsairfinalvendaClick(Sender: TObject);
begin
  if dtmConexao.qryVenda.State in [dsInsert, dsEdit] then

  begin

    case Application.MessageBox('Deseja cancelar sua alteraração de venda?',
      'Cancelar venda', MB_YESNO + MB_ICONQUESTION) of
      IDYES:
        begin
          lblShowCliente.Caption := 'Cliente';
          lblShowVendedor.Caption := 'Vendedor';
          lblShowFormadepgt.Caption := 'Forma de pagamento';
          lblShowProduto.Caption := 'Produto';
          lblTotal.Caption := '0,00';
          lbltotalbruto.Caption := '0,00';
          FTotalVenda := 0;

          lblquantidadeproduto.Visible := False;
          lblPrecoUnit.Visible := False;
          lblemissao.Visible := False;
          lbltotalproduto.Visible := False;
          lblprodutovenda.Visible := False;
          lblShowProduto.Visible := False;

          edtQUANTIDADEVenda.Visible := False;
          edtValorUnit.Visible := False;
          edtEMISSAO.Visible := False;
          edtValorTotal.Visible := False;
          edtProdutoVenda.Visible := False;

          btnCONFIRMARPRODUTO.Visible := False;
          btncancelarproduto.Visible := False;
          btnExcluirproduto.Visible := False;
          btnprodutovenda.Visible := False;
          btnInserir.Visible := False;

          dtmConexao.qryVenda.close;
          dtmConexao.qryVendaItens.close;
          btnInserir.Enabled := False;
          close;

        end;
      IDNO:
        begin
          ShowMessage('Salve ou Cancele a venda antes de sair');
        end;
    end;
  end;


  // else
  //
  // begin
  // lblShowProduto.Caption := 'Produto';
  // lblShowCliente.Caption := 'Cliente';
  // lblShowFormadepgt.Caption := 'Forma de pagamento';
  // lblShowVendedor.Caption := 'Vendedor';
  // lblTotal.Caption := '0,00';
  // lbltotalbruto.Caption := '0,00';
  // dtmConexao.qryVenda.close;
  // dtmConexao.qryVendaItens.close;
  // btnInserir.Enabled := False;
  // close;
  // end;

end;

procedure TfrmTelaVenda.btnValorClick(Sender: TObject);
begin
  // CalculaValorDesconto;
end;

function TfrmTelaVenda.BuscaInformacoes(pCampo: array of string;
  pTabela, pValor: string; Sender: TObject): String;
var
  I: Integer;
  lValorCampos: string;
begin

  if Length(Trim(pValor)) > 0 then
  begin
    dtmConexao.qryConsulta.close;
    dtmConexao.qryConsulta.SQL.Clear;
    for I := 0 to High(pCampo) do
    begin
      if I = 1 then
      begin
        lValorCampos := pCampo[I];
      end
      else if I > 1 then
      begin
        lValorCampos := lValorCampos + ',' + pCampo[I];
      end;
    end;

    dtmConexao.qryConsulta.Open('SELECT ' + lValorCampos + ' FROM ' + pTabela +
      ' WHERE ' + pCampo[0] + ' = ' + pValor);

    if dtmConexao.qryConsulta.IsEmpty then
    begin
      ShowMessage('Código não encontrado. Favor verificar !!');
      if Sender <> nil then
      begin
        if Sender is TCustomEdit then
        begin
          TCustomEdit(Sender).SetFocus;
          TCustomEdit(Sender).Clear;
        end;
      end;

    end
    else
    begin
      Result := dtmConexao.qryConsulta.FieldByName(pCampo[1]).AsString;
    end;

    /// //////////////////////////////////////////////////////////////////

  end;

  // else
  // begin
  // ShowMessage('Informação não encontrada. Favor verificar !!');
  // end;
end;

procedure TfrmTelaVenda.CalculaPercentualDesconto;
var
  ValorDesconto, PorcentoDesconto, ValorTotal: Real;

begin

  if edtdescontoporcento.Field.AsFloat > 100 then
  begin
    ShowMessage('O valor do desconto não pode ser maior que 100%');
    lblTotal.Caption := FormatFloat('#,##0.00', FTotalVenda);
    edtdescontoporcento.SetFocus;
    edtdescontoporcento.Clear;
  end

  else

    if (edtdescontoporcento.Field.AsFloat) > 0 then

  begin

    PorcentoDesconto := edtdescontoporcento.Field.Value;
    ValorDesconto := (FTotalVenda * PorcentoDesconto / 100);
    ValorTotal := FTotalVenda - ValorDesconto;

    edtDESCONTO.Field.AsFloat := ValorDesconto;

    // ShowMessage(FormatFloat('#,##0.00', Valortotal));
    lblTotal.Caption := FormatFloat('#,##0.00', ValorTotal);
  end

  else

    if edtdescontoporcento.Field.AsFloat = 0 then
  begin
    lblTotal.Caption := FormatFloat('#,##0.00', FTotalVenda);
  end

  else

    if edtdescontoporcento.Field.AsFloat < 0 then
  begin
    ShowMessage('Preencha com um desconto positivo');
    lblTotal.Caption := FormatFloat('#,##0.00', FTotalVenda);
    edtdescontoporcento.SetFocus;
    edtdescontoporcento.Clear;

  end;

end;

procedure TfrmTelaVenda.CalculaValorDesconto;
var
  ValorDesconto, PorcentoDesconto, ValorTotal: Real;
begin
  if edtDESCONTO.Field.AsFloat > FTotalVenda then
  begin
    ShowMessage
      ('O valor é maior que a venda, por favor, insira um valor válido para desconto.');
    lblTotal.Caption := FormatFloat('#,##0.00', FTotalVenda);
    edtDESCONTO.SetFocus;
    edtDESCONTO.Clear;

  end

  else

    if edtDESCONTO.Field.AsFloat > 0 then
  begin

    ValorDesconto := edtDESCONTO.Field.Value;
    PorcentoDesconto := (ValorDesconto / FTotalVenda * 100);
    ValorTotal := FTotalVenda - ValorDesconto;

    edtdescontoporcento.Field.AsFloat := PorcentoDesconto;

    // ShowMessage(FormatFloat('#,##0.00', Valortotal));
    lblTotal.Caption := FormatFloat('#,##0.00', ValorTotal);

  end

  else

    if edtDESCONTO.Field.AsFloat = 0 then
  begin
    lblTotal.Caption := FormatFloat('#,##0.00', FTotalVenda);
  end

  else

    if edtDESCONTO.Field.AsFloat < 0 then
  begin
    ShowMessage('Preencha com um desconto positivo');
    lblTotal.Caption := FormatFloat('#,##0.00', FTotalVenda);
    edtDESCONTO.SetFocus;
    edtDESCONTO.Clear;

  end;

end;

procedure TfrmTelaVenda.ChamarTotal;
begin
  FTotalVenda := 0;
  dtmConexao.qryVendaItens.First;
  while not dtmConexao.qryVendaItens.Eof do
  begin
    FTotalVenda := FTotalVenda + dtmConexao.qryVendaItens.FieldByName
      ('VALOR_TOTAL').AsFloat;
    dtmConexao.qryVendaItens.Next;

    CalculaPercentualDesconto;
    CalculaValorDesconto;
    // quero calcular porcentagem aqui, falar com vag

    lblTotal.Caption := FormatFloat('#,##0.00', FTotalVenda);
    lbltotalbruto.Caption := FormatFloat('#,##0.00', FTotalVenda);

  end;
end;

procedure TfrmTelaVenda.DesativarEnabledVendaItens;
begin
  // lblquantidadeproduto.Enabled := False;
  // lblPrecoUnit.Enabled := False;
  // lblemissao.Enabled := False;
  // lbltotalproduto.Enabled := False;
  // lblprodutovenda.Enabled := False;
  // lblShowProduto.Enabled := False;

  edtQUANTIDADEVenda.Enabled := False;
  edtValorUnit.Enabled := False;
  edtEMISSAO.Enabled := False;
  edtValorTotal.Enabled := False;
  edtProdutoVenda.Enabled := False;
  btnCONFIRMARPRODUTO.Enabled := False;

  // btnCONFIRMARPRODUTO.Enabled := False;
  // btncancelarproduto.Enabled := False;
  // btnExcluirproduto.Enabled := False;
  btnprodutovenda.Enabled := False;
  // btnInserir.Enabled := False;
end;

procedure TfrmTelaVenda.DesativaVendaItens;
begin
  // Desativa venda itens//
  edtQUANTIDADEVenda.Visible := False;
  edtValorUnit.Visible := False;
  edtEMISSAO.Visible := False;
  edtValorTotal.Visible := False;
  edtProdutoVenda.Visible := False;
  btnCONFIRMARPRODUTO.Visible := False;
  lblprodutovenda.Visible := False;
  lbltotalproduto.Visible := False;
  lblPrecoUnit.Visible := False;
  lblquantidadeproduto.Visible := False;
  btnCONFIRMARPRODUTO.Visible := False;
  btncancelarproduto.Visible := False;
  btnExcluirproduto.Visible := False;
  btnInserir.Visible := False;
  lblShowProduto.Visible := False;
  edtEMISSAO.Visible := False;
  lblemissao.Visible := False;
  btnprodutovenda.Visible := False;

end;

procedure TfrmTelaVenda.edtBuscarVendasChange(Sender: TObject);
begin
  dtmConexao.qryVenda.close;
  dtmConexao.qryVenda.SQL.Clear;
  dtmConexao.qryVenda.SQL.Add('SELECT');
  dtmConexao.qryVenda.SQL.Add('VENDA.ID,');
  dtmConexao.qryVenda.SQL.Add
    ('VENDA.ID_CLIENTE, VENDA.ID_VENDEDOR, VENDA.ID_FORMA_PAGAMENTO, VENDA.EMISSAO,');
  dtmConexao.qryVenda.SQL.Add
    ('VENDA.OBSERVACAO, VENDA.TOTAL, VENDA.PERCENTUAL_DESCONTO,');
  dtmConexao.qryVenda.SQL.Add('VENDA.VALOR_DESCONTO,');
  dtmConexao.qryVenda.SQL.Add('VENDA.TOTAL_BRUTO,');

  dtmConexao.qryVenda.SQL.Add
    ('CLIENTES.CLI_Nome cliente_nome, FORMA_PAGAMENTO.Descricao forma_Descricao,');
  dtmConexao.qryVenda.SQL.Add('VENDEDORES.Nome vendedor_nome');

  dtmConexao.qryVenda.SQL.Add('FROM VENDA');

  dtmConexao.qryVenda.SQL.Add
    ('INNER JOIN CLIENTES ON(VENDA.ID_CLIENTE = CLIENTES.CLI_ID)');
  dtmConexao.qryVenda.SQL.Add
    ('INNER JOIN FORMA_PAGAMENTO ON(VENDA.ID_FORMA_PAGAMENTO = FORMA_PAGAMENTO.ID)');
  dtmConexao.qryVenda.SQL.Add
    ('INNER JOIN VENDEDORES ON(VENDA.ID_VENDEDOR = VENDEDORES.ID)');

  case rgConsultaVendas.ItemIndex of
    0:

      begin

        dtmConexao.qryVenda.SQL.Add('WHERE upper(CLIENTES.CLI_Nome) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarVendas.Text + '%')));

      end;

    1:

      begin
        dtmConexao.qryVenda.SQL.Add('WHERE upper(Vendedores.nome) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarVendas.Text + '%')));

      end;

    2:

      begin
        dtmConexao.qryVenda.SQL.Add
          ('WHERE upper(Forma_pagamento.descricao) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarVendas.Text + '%')));

      end;

    3:

      begin
        dtmConexao.qryVenda.SQL.Add('WHERE upper(VENDA.ID) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarVendas.Text + '%')));
        // dtmConexao.qryVenda.SQL.ADD('order by id');

        // lblbuscarvendas.Caption := ('Digite o ID da venda');
        // edtBuscarVendas.Clear;

      end;

  end;
  dtmConexao.qryVenda.SQL.Add('order by venda.id');
  dtmConexao.qryVenda.Open;
end;

procedure TfrmTelaVenda.edtclientevendaExit(Sender: TObject);
begin
  lblShowCliente.Caption := EmptyStr;

  lblShowCliente.Caption := BuscaInformacoes(['cli_id', 'cli_nome'], 'clientes',
    edtclientevenda.Text, Sender);
  dtmConexao.qryConsulta.close;

end;

procedure TfrmTelaVenda.edtclientevendaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;

  If not(Key in ['0' .. '9', #08]) then
  begin
    Key := #0;
  end;

end;

procedure TfrmTelaVenda.edtDESCONTOExit(Sender: TObject);
begin
  edtdescontoporcento.Field.Value := 0;
  CalculaValorDesconto;
  btnConfirmafinalvenda.SetFocus;;

end;

procedure TfrmTelaVenda.edtDESCONTOKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;

  If not(Key in ['0' .. '9', #08, ',', '.']) then
  begin
    Key := #0;
  end;

end;

procedure TfrmTelaVenda.edtdescontoporcentoExit(Sender: TObject);
begin
  edtDESCONTO.Field.Value := 0;
  CalculaPercentualDesconto;
  btnConfirmafinalvenda.SetFocus;

end;

procedure TfrmTelaVenda.edtdescontoporcentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;

  If not(Key in ['0' .. '9', #08, ',', '.']) then
  begin
    Key := #0;
  end;

end;

procedure TfrmTelaVenda.edtFormapgtExit(Sender: TObject);
begin
  lblShowFormadepgt.Caption := EmptyStr;

  lblShowFormadepgt.Caption := BuscaInformacoes(['id', 'DESCRICAO'],
    'FORMA_PAGAMENTO', edtFormapgt.Text, Sender);
  dtmConexao.qryConsulta.close;
end;

procedure TfrmTelaVenda.edtFormapgtKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;

  If not(Key in ['0' .. '9', #08]) then
  begin
    Key := #0;
  end;

end;

procedure TfrmTelaVenda.edtOBSvendaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure TfrmTelaVenda.edtProdutoVendaExit(Sender: TObject);
begin
  lblShowProduto.Caption := EmptyStr;

  if (Length(Trim(edtProdutoVenda.Text)) > 0) then
  begin
    lblShowProduto.Caption :=
      BuscaInformacoes(['id', 'descricao', 'preco_vista'], 'produtos',
      edtProdutoVenda.Text, Sender);

    if (dtmConexao.qryConsulta.FieldByName('preco_vista').AsFloat > 0) then
    begin
      edtValorUnit.Field.AsFloat := dtmConexao.qryConsulta.FieldByName
        ('preco_vista').AsFloat;
      edtQUANTIDADEVenda.Field.AsFloat := 1;
      dtmConexao.qryVendaItensPRODUTO_DESCRICAO.AsString :=
        lblShowProduto.Caption;

    end;
    dtmConexao.qryConsulta.close;

  end;
  ValorTotal;
end;

procedure TfrmTelaVenda.edtProdutoVendaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;

  If not(Key in ['0' .. '9', #08]) then
  begin
    Key := #0;
  end;
end;

procedure TfrmTelaVenda.edtQUANTIDADEVendaExit(Sender: TObject);
begin
  ValorTotal;
end;

procedure TfrmTelaVenda.edtQUANTIDADEVendaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;

  If not(Key in ['0' .. '9', #08, ',', '.']) then
  begin
    Key := #0;
  end;

  ValorTotal;
end;

procedure TfrmTelaVenda.edtValorUnitExit(Sender: TObject);
begin
  ValorTotal;
  lblTotal.Caption := FormatFloat('#,##0.00', edtValorTotal.Field.AsFloat);
end;

procedure TfrmTelaVenda.edtValorUnitKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    ValorTotal;
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;

  If not(Key in ['0' .. '9', #08, ',', '.']) then
  begin
    Key := #0;
  end;

end;

procedure TfrmTelaVenda.edtVendedorvendaExit(Sender: TObject);
begin

  lblShowVendedor.Caption := EmptyStr;

  lblShowVendedor.Caption := BuscaInformacoes(['id', 'nome'], 'vendedores',
    edtVendedorvenda.Text, Sender);
  dtmConexao.qryConsulta.close;

end;

procedure TfrmTelaVenda.edtVendedorvendaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;

  If not(Key in ['0' .. '9', #08]) then
  begin
    Key := #0;
  end;
end;

procedure TfrmTelaVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmTelaVenda.tsTelaVenda.TabVisible = True then
  begin
    lblShowProduto.Caption := 'Produto';
    lblShowCliente.Caption := 'Cliente';
    lblShowFormadepgt.Caption := 'Forma de pagamento';
    lblShowVendedor.Caption := 'Vendedor';
    lblTotal.Caption := '0,00';
    lbltotalbruto.Caption := '0,00';
    dtmConexao.qryVenda.close;
    dtmConexao.qryVendaItens.close;
    btnInserir.Enabled := False;
    close;
  end
  else
    dtmConexao.qryVenda.close;
  close;

end;

procedure TfrmTelaVenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if (Key = #13) then
        begin
            Key := #0;
            Perform(WM_NEXTDLGCTL, 0, 0);
        end;
end;

procedure TfrmTelaVenda.FormShow(Sender: TObject);
begin
  dtmConexao.CustomizaTela(self);

  if frmTelaVenda.tsTelaVenda.TabVisible = True then

  begin
    IniciarVenda;
  end

  else

    dtmConexao.MostrarVendas(0);
  rgConsultaVendas.ItemIndex := 0;
  // dtmConexao.MostrarItens(0);

  // ProcuraVenda;

end;

procedure TfrmTelaVenda.grdConsultaVendasDblClick(Sender: TObject);
begin
  btn3.Click;
end;

procedure TfrmTelaVenda.LimparCache(Sender: TObject);
begin
  dtmConexao.qryVenda.CommitUpdates();
  dtmConexao.qryVendaItens.CommitUpdates();
end;

procedure TfrmTelaVenda.MostrarClientelbl;
begin;
end;

procedure TfrmTelaVenda.MostrarFormaPGTlbl;
begin

end;

procedure TfrmTelaVenda.MostrarVendedorlbl;
begin

end;

procedure TfrmTelaVenda.ProcuraVenda;
begin
  dtmConexao.qryVenda.close;
  dtmConexao.qryVenda.SQL.Clear;
  dtmConexao.qryVenda.SQL.Add('SELECT');
  dtmConexao.qryVenda.SQL.Add('VENDA.ID,');
  dtmConexao.qryVenda.SQL.Add
    ('VENDA.ID_CLIENTE, VENDA.ID_VENDEDOR, VENDA.ID_FORMA_PAGAMENTO, VENDA.EMISSAO,');
  dtmConexao.qryVenda.SQL.Add
    ('VENDA.OBSERVACAO, VENDA.TOTAL, VENDA.PERCENTUAL_DESCONTO,');
  dtmConexao.qryVenda.SQL.Add('VENDA.VALOR_DESCONTO,');
  dtmConexao.qryVenda.SQL.Add('VENDA.TOTAL_BRUTO,');

  dtmConexao.qryVenda.SQL.Add
    ('CLIENTES.CLI_Nome cliente_nome, FORMA_PAGAMENTO.Descricao forma_Descricao,');
  dtmConexao.qryVenda.SQL.Add('VENDEDORES.Nome vendedor_nome');

  dtmConexao.qryVenda.SQL.Add('FROM VENDA');

  dtmConexao.qryVenda.SQL.Add
    ('INNER JOIN CLIENTES ON(VENDA.ID_CLIENTE = CLIENTES.CLI_ID)');
  dtmConexao.qryVenda.SQL.Add
    ('INNER JOIN FORMA_PAGAMENTO ON(VENDA.ID_FORMA_PAGAMENTO = FORMA_PAGAMENTO.ID)');
  dtmConexao.qryVenda.SQL.Add
    ('INNER JOIN VENDEDORES ON(VENDA.ID_VENDEDOR = VENDEDORES.ID)');

  case rgConsultaVendas.ItemIndex of
    0:

      begin

        dtmConexao.qryVenda.SQL.Add('WHERE upper(CLIENTES.CLI_Nome) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarVendas.Text + '%')));

        lblbuscarvendas.Caption := 'Digite o Nome do cliente';
        edtBuscarVendas.Clear;

      end;

    1:

      begin
        dtmConexao.qryVenda.SQL.Add('WHERE upper(vendedores.nome) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarVendas.Text + '%')));

        lblbuscarvendas.Caption := 'Digite o Nome do vendedor';
        edtBuscarVendas.Clear;
      end;

    2:

      begin
        dtmConexao.qryVenda.SQL.Add
          ('WHERE upper(Forma_pagamento.descricao) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarVendas.Text + '%')));

        lblbuscarvendas.Caption := 'Digite a forma de pagamento';
        edtBuscarVendas.Clear;

      end;

    3:

      begin
        dtmConexao.qryVenda.SQL.Add('WHERE upper(VENDA.ID) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarVendas.Text + '%')));
        // dtmConexao.qryVenda.SQL.ADD('order by id');

        lblbuscarvendas.Caption := 'Digite o ID da venda';
        edtBuscarVendas.Clear;

      end;

  end;

  dtmConexao.qryVenda.Open;
end;

procedure TfrmTelaVenda.rgConsultaVendasClick(Sender: TObject);
begin
  ProcuraVenda;
end;

procedure TfrmTelaVenda.TotalFinal;

begin

end;

procedure TfrmTelaVenda.tspgctelaconsultavendaShow(Sender: TObject);
begin
  ProcuraVenda;
  dtmConexao.MostrarVendas(0);
  dtmConexao.MostrarItens(0);
  rgConsultaVendas.ItemIndex := 0;

end;

procedure TfrmTelaVenda.tsTelaVendaExit(Sender: TObject);
begin
  dtmConexao.qryVenda.Cancel;
  dtmConexao.qryVendaItens.Cancel;
  dtmConexao.qryVenda.close;
  dtmConexao.qryVendaItens.close;
  close;
  lblTotal.Caption := '0,00';
  lbltotalbruto.Caption := '0,00';

end;

procedure TfrmTelaVenda.tsTelaVendaShow(Sender: TObject);

begin
  if TipoOperacao = 'I' then
  begin
    IniciarVenda;
    btnConfirmafinalvenda.Enabled := False;
  end

  else if TipoOperacao = 'A' then

  begin

    // Para mostrar nos label as info da nota sem precisar clicar enter//
    lblShowCliente.Caption := EmptyStr;

    lblShowCliente.Caption := BuscaInformacoes(['cli_id', 'cli_nome'],
      'clientes', edtclientevenda.Text, Sender);
    dtmConexao.qryConsulta.close;

    lblShowVendedor.Caption := EmptyStr;

    lblShowVendedor.Caption := BuscaInformacoes(['id', 'nome'], 'vendedores',
      edtVendedorvenda.Text, Sender);
    dtmConexao.qryConsulta.close;

    lblShowFormadepgt.Caption := EmptyStr;

    lblShowFormadepgt.Caption := BuscaInformacoes(['id', 'DESCRICAO'],
      'FORMA_PAGAMENTO', edtFormapgt.Text, Sender);
    dtmConexao.qryConsulta.close;

    lblShowProduto.Caption :=
      BuscaInformacoes(['id', 'descricao', 'preco_vista'], 'produtos',
      edtProdutoVenda.Text, Sender);
    dtmConexao.qryConsulta.close;
    AtivarEnabledVendaItens;

    /// //////////// Somar total do grid //////////////
    ChamarTotal;

  end;

end;

procedure TfrmTelaVenda.ValorTotal;
Var
  num1, num2: Real;

begin
  num1 := edtQUANTIDADEVenda.Field.AsFloat;
  num2 := edtValorUnit.Field.AsFloat;
  edtValorTotal.Field.AsFloat := (num1 * num2);

  // formata valor numerico convertendo para string já com a mascara informada//

end;

procedure TfrmTelaVenda.MostrarProdutoslbl;
begin

end;

procedure TfrmTelaVenda.IniciarVenda;
begin
  if TipoOperacao = 'I' then
  begin
    FTotalVenda := 0;
    lblTotal.Caption := '0,00';
    lbltotalbruto.Caption := '0,00';
    dtmConexao.qryVenda.close;
    // dtmConexao.qryVenda.Open;
    dtmConexao.qryVenda.Active := True;
    dtmConexao.qryVenda.Insert;

    dtmConexao.FDSchemaAdapter1.AfterApplyUpdate := LimparCache;
    dtmConexao.qryVendaEMISSAO.Value := Date;
    edtclientevenda.SetFocus;
    AtivarEnabledVendaItens;
    DesativaVendaItens;
  end;

end;

end.
