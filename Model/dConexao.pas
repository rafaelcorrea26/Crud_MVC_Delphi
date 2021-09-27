unit dConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase, Data.FMTBcd, Data.SqlExpr, frxClass,
  frxDBSet, fFuncoes, Dialogs, FireDAC.Comp.UI, IdBaseComponent,
  IdComponent, IdIPWatch, Vcl.Forms;

type
  TdtmConexao = class(TDataModule)
    SistemaSimplesConnection: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    qryConsultaProdutos: TFDQuery;
    qryConsultaUnidades: TFDQuery;
    qryConsultaUsuario: TFDQuery;
    dtsConsultaProdutos: TDataSource;
    dtsConsultaUnidades: TDataSource;
    dtsConsultaUsuario: TDataSource;
    qryConsultaProdutosDESCRICAO: TStringField;
    qryConsultaProdutosID_UNIDADE: TIntegerField;
    qryConsultaProdutosCOD_BARRAS: TStringField;
    qryConsultaProdutosPRECO_VISTA: TBCDField;
    qryConsultaProdutosPRECO_PRAZO: TBCDField;
    qryConsultaProdutosSALDO: TBCDField;
    qryConsultaUnidadesUNIDADE: TStringField;
    qryConsultaUnidadesDESCRICAO: TStringField;
    qryConsultaUsuarioLOGIN: TStringField;
    qryConsultaUsuarioSENHA: TStringField;
    qryConsultaUsuarioNOME: TStringField;
    qryLogin: TFDQuery;
    dtsLogin: TDataSource;
    frxReport1: TfrxReport;
    fdb_RelProd: TfrxDBDataset;
    qryConsultaUnidadesID: TIntegerField;
    qryConsultaProdutosUNIDADE: TStringField;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    qryConsultaClientes: TFDQuery;
    dtsConsultaClientes: TDataSource;
    qryConsultaClientesCLI_UF: TStringField;
    qryConsultaClientesCLI_RG: TStringField;
    qryConsultaClientesCLI_CPF: TStringField;
    qryConsultaClientesCLI_TEL: TStringField;
    qryConsultaClientesCLI_CEL: TStringField;
    qryConsultaClientesCLI_DATA_NASC: TDateField;
    qryConsultaClientesCLI_DATA_CAD: TDateField;
    qryConsultaClientesCLI_SITUACAO: TStringField;
    qryConsultaClientesCLI_EMAIL: TStringField;
    qryConsultaClientesCLI_CEP: TStringField;
    qryConsultaClientesCLI_NOME: TStringField;
    qryConsultaClientesCLI_ENDERECO: TStringField;
    qryConsultaClientesCLI_BAIRRO: TStringField;
    qryConsultaClientesCLI_CIDADE: TStringField;
    qryImpRelProd: TFDQuery;
    qryConsultaProdutosID: TIntegerField;
    qryConsultaProdutosDATA_CAD: TDateField;
    qryImpRelProdID: TIntegerField;
    qryImpRelProdDESCRICAO: TStringField;
    qryImpRelProdID_UNIDADE: TIntegerField;
    qryImpRelProdCOD_BARRAS: TStringField;
    qryImpRelProdPRECO_VISTA: TBCDField;
    qryImpRelProdPRECO_PRAZO: TBCDField;
    qryImpRelProdSALDO: TBCDField;
    qryImpRelProdUNIDADE: TStringField;
    qryImpRelProdDATA_CAD: TDateField;
    frxReport2: TfrxReport;
    qryImpRelClientes: TFDQuery;
    fdb_RelClientes: TfrxDBDataset;
    qryImpRelClientesCLI_ID: TIntegerField;
    qryImpRelClientesCLI_UF: TStringField;
    qryImpRelClientesCLI_RG: TStringField;
    qryImpRelClientesCLI_CPF: TStringField;
    qryImpRelClientesCLI_TEL: TStringField;
    qryImpRelClientesCLI_CEL: TStringField;
    qryImpRelClientesCLI_DATA_NASC: TDateField;
    qryImpRelClientesCLI_DATA_CAD: TDateField;
    qryImpRelClientesCLI_SITUACAO: TStringField;
    qryImpRelClientesCLI_EMAIL: TStringField;
    qryImpRelClientesCLI_CEP: TStringField;
    qryImpRelClientesCLI_NOME: TStringField;
    qryImpRelClientesCLI_ENDERECO: TStringField;
    qryImpRelClientesCLI_BAIRRO: TStringField;
    qryImpRelClientesCLI_CIDADE: TStringField;
    qryConsultaFormaspgt: TFDQuery;
    qryConsultaVendedor: TFDQuery;
    qryVenda: TFDQuery;
    dtsConsultaFormaspgt: TDataSource;
    dtsConsultavendedor: TDataSource;
    dtsConsultavenda: TDataSource;
    qryConsultaFormaspgtID: TIntegerField;
    qryConsultaFormaspgtDESCRICAO: TStringField;
    qryConsultaVendedorID: TIntegerField;
    qryConsultaVendedorNOME: TStringField;
    qryConsultaVendedorLIMITE_DESC: TBCDField;
    qryVendaItens: TFDQuery;
    dtsVendaItens: TDataSource;
    qryVendaID: TIntegerField;
    qryVendaID_CLIENTE: TIntegerField;
    qryVendaID_VENDEDOR: TIntegerField;
    qryVendaID_FORMA_PAGAMENTO: TIntegerField;
    qryVendaEMISSAO: TDateField;
    qryVendaOBSERVACAO: TStringField;
    qryVendaTOTAL: TBCDField;
    qryVendaPERCENTUAL_DESCONTO: TBCDField;
    qryVendaVALOR_DESCONTO: TBCDField;
    qryVendaCLIENTE_NOME: TStringField;
    qryVendaFORMA_DESCRICAO: TStringField;
    qryVendaVENDEDOR_NOME: TStringField;
    qryVendaItensID: TIntegerField;
    qryVendaItensID_PRODUTO: TIntegerField;
    qryVendaItensID_VENDA: TIntegerField;
    qryVendaItensQUANTIDADE: TBCDField;
    qryVendaItensVALOR_UNITARIO: TBCDField;
    qryVendaItensVALOR_TOTAL: TBCDField;
    qryVendaItensPRODUTO_DESCRICAO: TStringField;
    FDSchemaAdapter1: TFDSchemaAdapter;
    qryConsulta: TFDQuery;
    qryPesquisa: TFDQuery;
    dtsPesquisa: TDataSource;
    frxReport3: TfrxReport;
    fdb_Relvenda: TfrxDBDataset;
    qryImpRelVenda: TFDQuery;
    fdb_Relvenda_itens: TfrxDBDataset;
    qryImpRelVenda_Itens: TFDQuery;
    dtsImpRelVenda: TDataSource;
    qryVendaTOTAL_BRUTO: TBCDField;
    qryLOG: TFDQuery;
    dtsLOG: TDataSource;
    qryLOGUSUARIO_LOG: TStringField;
    qryLOGIP_LOG: TIntegerField;
    qryLOGPC_LOG: TStringField;
    qryLOGDATA_LOG: TSQLTimeStampField;
    qryLOGROTINA_LOG: TStringField;
    qryLOGACAO_LOG: TStringField;
    qryBuscaLog: TFDQuery;
    dtsBuscaLog: TDataSource;
    qryBuscaLogUSUARIO_LOG: TStringField;
    qryBuscaLogIP_LOG: TStringField;
    qryBuscaLogPC_LOG: TStringField;
    qryBuscaLogDATA_LOG: TSQLTimeStampField;
    qryBuscaLogROTINA_LOG: TStringField;
    qryBuscaLogACAO_LOG: TStringField;
    frxReport4: TfrxReport;
    fdb_RelLog: TfrxDBDataset;
    qryImpRelLog: TFDQuery;
    qryControleAcesso: TFDQuery;
    dtsControleDeAcesso: TDataSource;
    qryConsultaUsuarioID: TIntegerField;
    qryConsultaUsuarioCADASTRO: TStringField;
    qryConsultaUsuarioCAD_PROD: TStringField;
    qryConsultaUsuarioCAD_UNID: TStringField;
    qryConsultaUsuarioCAD_USU: TStringField;
    qryConsultaUsuarioCAD_CLIENT: TStringField;
    qryConsultaUsuarioCAD_FORMAPGT: TStringField;
    qryConsultaUsuarioCAD_VENDEDOR: TStringField;
    qryConsultaUsuarioRELATORIO: TStringField;
    qryConsultaUsuarioREL_PROD: TStringField;
    qryConsultaUsuarioREL_CLIENT: TStringField;
    qryConsultaUsuarioVENDA: TStringField;
    qryConsultaUsuarioVENDA_VENDA: TStringField;
    qryConsultaUsuarioVENDA_CONSULT: TStringField;
    qryConsultaUsuarioLOG: TStringField;
    qryConsultaUsuarioLOG_CONSULT: TStringField;
    qryConsultaUsuarioCONFIGURACAO: TStringField;
    procedure qryConsultaUnidadesReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
    procedure qryConsultaUnidadesPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryConsultaUnidadesUpdateError(ASender: TDataSet;
      AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
      var AAction: TFDErrorAction);
    procedure DataModuleCreate(Sender: TObject);
    procedure qryConsultaClientesCLI_DATA_NASCSetText(Sender: TField;
      const Text: string);
  private
    { Private declarations }
  public
    { Public declarations }
    tipologin: string;

    procedure CustomizaTela(pFormulario: TForm);
    procedure BotoesFicamComEnableTrue(Form: TForm);
    procedure BotoesFicamComEnableFalse(Form: TForm);

    procedure GravaControleDeAcessos;

  var
    LoginLog: String;
    IPLog: TIdIPWatch;
    IP: String;
    PClog: String;

    function CapturaNomePC: string;

    procedure MostrarProdutos;
    procedure MostrarUnidades;
    procedure MostrarUsuarios;
    procedure MostrarClientes;
    procedure MostrarForma_pagamento;
    procedure MostrarVendedores;
    procedure MostraClientelbl;
    procedure MostrarVendas(pIdVenda: Integer);
    procedure MostrarItens(pIdVenda: Integer);
    Function GravandoLog(pRotina: string; pAcao: string): String;

  end;

var
  dtmConexao: TdtmConexao;

implementation

uses
  fTelaVenda, Winapi.Windows, Winapi.Messages, fLogin, Vcl.Graphics,
  Vcl.ExtCtrls, Vcl.Controls, fCadastroUsuario, Vcl.StdCtrls;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdtmConexao.BotoesFicamComEnableFalse(Form: TForm);
var
  cont: Integer;
begin
  with Form do
    for cont := 0 to ComponentCount - 1 do
      if Components[cont] is TButton then
        (Components[cont] as TButton).Enabled := False;

end;

procedure TdtmConexao.BotoesFicamComEnableTrue(Form: TForm);
var
  cont: Integer;
begin
  with Form do
    for cont := 0 to ComponentCount - 1 do
      if Components[cont] is TButton then
        (Components[cont] as TButton).Enabled := True;

end;

function TdtmConexao.CapturaNomePC: string;
/// // / Para Capturar o usuário Logado no Windows

Var
  NetUserNameLength: DWord;
Begin
  NetUserNameLength := 50;
  SetLength(Result, NetUserNameLength);
  GetUserName(pChar(Result), NetUserNameLength);
  SetLength(Result, StrLen(pChar(Result)));
End;

procedure TdtmConexao.CustomizaTela(pFormulario: TForm);
var
  I, nTamanhoFonte: Integer;

begin
  pFormulario.Color := clWhite;
  for I := 0 to pFormulario.ComponentCount - 1 do
  begin
    if (pFormulario.Components[I] is TPanel) then
    begin
      TPanel(pFormulario.Components[I]).ParentBackground := False;
      TPanel(pFormulario.Components[I]).ParentColor := False;
      TPanel(pFormulario.Components[I]).ParentFont := False;
      TPanel(pFormulario.Components[I]).Color := clWhite;
      // StringToColor(TSistema.CorPainel);
      TPanel(pFormulario.Components[I]).Update;

      if (pFormulario.Components[I].Name = 'pnlCadastro') or
        (pFormulario.Components[I].Name = 'pnlConsulta') then

      begin
        TPanel(pFormulario.Components[I]).BevelInner := bvNone;
        TPanel(pFormulario.Components[I]).BevelKind := bkNone;
        TPanel(pFormulario.Components[I]).BevelOuter := bvNone;
        TPanel(pFormulario.Components[I]).Color := clBlack;
        // StringToColor(TSistema.CorTituloTela); // TSistema.CorTituloTela;
        // TPanel(pFormulario.Components[I]).Font.Size := 18;
        // TPanel(pFormulario.Components[I]).Font.Name := 'Arial';
        // TPanel(pFormulario.Components[I]).Font.Color := clWhite;
        // StringToColor(TSistema.CorFonteTituloTela);
        // TPanel(pFormulario.Components[I]).Font.Style[fsitalic];
        TPanel(pFormulario.Components[I]).Update;

      end;
    end;
  end;
end;

procedure TdtmConexao.DataModuleCreate(Sender: TObject);
begin
  try

    begin
      SistemaSimplesConnection.Params.Clear;
      SistemaSimplesConnection.Params.Values['DriverID'] := 'FB';
      SistemaSimplesConnection.Params.Values['Server'] :=
        TFuncoes.LerIni('FIREBIRD', 'Server');
      // ShowMessage(TFuncoes.LerIni('FIREBIRD','Server'));
      SistemaSimplesConnection.Params.Values['User_name'] :=
        TFuncoes.LerIni('FIREBIRD', 'User');
      // ShowMessage(TFuncoes.LerIni('FIREBIRD','User'));
      SistemaSimplesConnection.Params.Values['Password'] :=
        TFuncoes.LerIni('FIREBIRD', 'Password');
      // ShowMessage(TFuncoes.LerIni('FIREBIRD','Password'));
      SistemaSimplesConnection.Params.Values['Database'] :=
        TFuncoes.LerIni('FIREBIRD', 'Database');
      // ShowMessage(TFuncoes.LerIni('FIREBIRD','Database'));
      SistemaSimplesConnection.Connected := True;

      tipologin := 'inicio';

    end;

  except
    ShowMessage('Ocorreu uma Falha na configuração no Banco Firebird!');
    Application.Terminate;
  end;

end;

procedure TdtmConexao.GravaControleDeAcessos;
begin
  qryControleAcesso.Close;
  qryControleAcesso.SQL.Clear;
  qryControleAcesso.SQL.Add('select * from usuario');
  qryControleAcesso.Open;
  qryControleAcesso.Edit;

  case frmCadastroUsuario.rglog.ItemIndex of
    0:
      begin

        qryControleAcesso.FieldByName('log').asstring := '1'

      end;

    1:
      begin

        qryControleAcesso.FieldByName('log').asstring := '2'

      end;

    2:
      begin
        qryControleAcesso.FieldByName('log').asstring := '3'

      end;

  end;

  /// ////////////////////////////////

  case frmCadastroUsuario.rgCadastrodeProdutos.ItemIndex of
    0:
      begin
        qryControleAcesso.FieldByName('CAD_PROD').asstring := '1'

      end;

    1:
      begin
        qryControleAcesso.FieldByName('CAD_PROD').asstring := '2'

      end;

    2:
      begin
        qryControleAcesso.FieldByName('CAD_PROD').asstring := '3'

      end;

  end;

  /// ////////////////////////////////////

  case frmCadastroUsuario.rgCadastrodeUnidades.ItemIndex of
    0:
      begin
        qryControleAcesso.FieldByName('CAD_unid').asstring := '1'

      end;

    1:
      begin
        qryControleAcesso.FieldByName('CAD_unid').asstring := '2'

      end;

    2:
      begin
        qryControleAcesso.FieldByName('CAD_unid').asstring := '3'

      end;

  end;

  /// /////////////////////////////////////

  case frmCadastroUsuario.rgCadastrodeUsuarios.ItemIndex of
    0:
      begin
        qryControleAcesso.FieldByName('CAD_usu').asstring := '1'

      end;

    1:
      begin
        qryControleAcesso.FieldByName('CAD_usu').asstring := '2'

      end;

    2:
      begin
        qryControleAcesso.FieldByName('CAD_usu').asstring := '3'

      end;

  end;

  /// //////////////////////

  case frmCadastroUsuario.rgCadastrodeClientes.ItemIndex of
    0:
      begin
        qryControleAcesso.FieldByName('CAD_client').asstring := '1'

      end;

    1:
      begin
        qryControleAcesso.FieldByName('CAD_client').asstring := '2'

      end;

    2:
      begin
        qryControleAcesso.FieldByName('CAD_client').asstring := '3'

      end;

  end;

  /// ////////////////////////////////////

  case frmCadastroUsuario.rgCadastrodeFormaPGT.ItemIndex of
    0:
      begin
        qryControleAcesso.FieldByName('CAD_FORMAPGT').asstring := '1'

      end;

    1:
      begin
        qryControleAcesso.FieldByName('CAD_FORMAPGT').asstring := '2'

      end;

    2:
      begin
        qryControleAcesso.FieldByName('CAD_FORMAPGT').asstring := '3'

      end;

  end;

  /// ///////////////////////////////////

  case frmCadastroUsuario.rgCadastrodevendedor.ItemIndex of
    0:
      begin
        qryControleAcesso.FieldByName('CAD_VENDEDOR').asstring := '1'

      end;

    1:
      begin
        qryControleAcesso.FieldByName('CAD_VENDEDOR').asstring := '2'

      end;

    2:
      begin
        qryControleAcesso.FieldByName('CAD_VENDEDOR').asstring := '3'

      end;

  end;

  /// //////////////////////////////////////

  case frmCadastroUsuario.rgRelatoriodeProdutos.ItemIndex of
    0:
      begin
        qryControleAcesso.FieldByName('rel_prod').asstring := '1'

      end;

    1:
      begin
        qryControleAcesso.FieldByName('rel_prod').asstring := '2'

      end;

    2:
      begin
        qryControleAcesso.FieldByName('rel_prod').asstring := '3'

      end;

  end;

  /// /////////////////////////////

  case frmCadastroUsuario.rgRelatoriodeClientes.ItemIndex of
    0:
      begin
        qryControleAcesso.FieldByName('rel_client').asstring := '1'

      end;

    1:
      begin
        qryControleAcesso.FieldByName('rel_client').asstring := '2'

      end;

    2:
      begin
        qryControleAcesso.FieldByName('rel_client').asstring := '3'

      end;

  end;

  /// //////////////////////////////////////

  case frmCadastroUsuario.rgconsultavenda.ItemIndex of
    0:
      begin
        qryControleAcesso.FieldByName('venda_consult').asstring := '1'

      end;

    1:
      begin
        qryControleAcesso.FieldByName('venda_consult').asstring := '2'

      end;

    2:
      begin
        qryControleAcesso.FieldByName('venda_consult').asstring := '3'

      end;

  end;

  /// //////////////////////////////////////

  case frmCadastroUsuario.rgTelaVenda.ItemIndex of
    0:
      begin
        qryControleAcesso.FieldByName('venda_venda').asstring := '1'

      end;

    1:
      begin
        qryControleAcesso.FieldByName('venda_venda').asstring := '2'

      end;

    2:
      begin
        qryControleAcesso.FieldByName('venda_venda').asstring := '3'

      end;

  end;

  /// ////////////////////////////////////////////////////

  /// ///////////////////////////////////////////

  case frmCadastroUsuario.rgCADASTRO.ItemIndex of
    0:
      begin

        qryControleAcesso.FieldByName('CADASTRO').asstring := '1'

      end;

    1:
      begin

        qryControleAcesso.FieldByName('CADASTRO').asstring := '2'

      end;

    2:
      begin
        qryControleAcesso.FieldByName('CADASTRO').asstring := '3'

      end;

  end;

  qryControleAcesso.Post;

end;

function TdtmConexao.GravandoLog(pRotina: string; pAcao: string): String;
begin
  LoginLog := LoginLog;
  //
  IPLog := TIdIPWatch.Create(nil);
  IP := IPLog.LocalIP;
  //

  dtmConexao.qryLOG.Close;
  dtmConexao.qryLOG.SQL.Clear;
  dtmConexao.qryLOG.SQL.Add
    ('insert into log_sistema(usuario_log, data_log, ip_Log, pc_log, rotina_log, acao_log) values(:Login, :Data, :IP, :PC, :Rotina, :acao)');

  dtmConexao.qryLOG.parambyname('data').AsDatetime := now;
  dtmConexao.qryLOG.parambyname('Login').asstring := LoginLog;
  dtmConexao.qryLOG.parambyname('ip').asstring := IP;
  dtmConexao.qryLOG.parambyname('pc').asstring := CapturaNomePC;

  dtmConexao.qryLOG.parambyname('rotina').asstring := pRotina;
  dtmConexao.qryLOG.parambyname('acao').asstring := pAcao;

  dtmConexao.qryLOG.ExecSQL;

  IPLog.Free;
end;

procedure TdtmConexao.MostraClientelbl;
begin

end;

procedure TdtmConexao.MostrarClientes;
begin
  qryConsultaClientes.Close;
  qryConsultaClientes.SQL.Clear;
  qryConsultaClientes.SQL.Add('SELECT * FROM CLIENTES order by CLI_NOME');
  qryConsultaClientes.Open;

end;

procedure TdtmConexao.MostrarForma_pagamento;
begin
  qryConsultaFormaspgt.Close;
  qryConsultaFormaspgt.SQL.Clear;
  qryConsultaFormaspgt.SQL.Add
    ('SELECT * FROM FORMA_PAGAMENTO order by DESCRICAO');
  qryConsultaFormaspgt.Open;
end;

procedure TdtmConexao.MostrarItens(pIdVenda: Integer);
begin
  qryVendaItens.Close;
  qryVendaItens.SQL.Clear;
  qryVendaItens.SQL.Add('SELECT');
  qryVendaItens.SQL.Add('VENDA_ITENS.ID,');
  qryVendaItens.SQL.Add('VENDA_ITENS.ID_PRODUTO,');
  qryVendaItens.SQL.Add('VENDA_ITENS.ID_VENDA,');
  qryVendaItens.SQL.Add('VENDA_ITENS.QUANTIDADE,');
  qryVendaItens.SQL.Add('VENDA_ITENS.VALOR_UNITARIO,');
  qryVendaItens.SQL.Add('VENDA_ITENS.VALOR_TOTAL,');
  qryVendaItens.SQL.Add('PRODUTOS.Descricao Produto_Descricao');

  qryVendaItens.SQL.Add('FROM VENDA_ITENS');

  qryVendaItens.SQL.Add
    ('INNER JOIN PRODUTOS ON (VENDA_ITENS.ID_PRODUTO = PRODUTOS.ID)');
  qryVendaItens.SQL.Add('where VENDA_ITENS.ID_VENDA = :ID_VENDA');

  if (pIdVenda > 0) then
  begin
    qryVendaItens.parambyname('ID_VENDA').AsInteger := pIdVenda;
  end;

  frmTelaVenda.AtivarVendaItens;

  qryVendaItens.Open;
end;

procedure TdtmConexao.MostrarProdutos;
begin
  qryConsultaProdutos.Close;
  qryConsultaProdutos.SQL.Clear;
  qryConsultaProdutos.SQL.Add('SELECT                 ');
  qryConsultaProdutos.SQL.Add('PRODUTOS.ID,    ');
  qryConsultaProdutos.SQL.Add('PRODUTOS.descricao,    ');
  qryConsultaProdutos.SQL.Add('PRODUTOS.id_unidade,    ');
  qryConsultaProdutos.SQL.Add('unidades.unidade,      ');
  qryConsultaProdutos.SQL.Add('PRODUTOS.COD_BARRAS,   ');
  qryConsultaProdutos.SQL.Add('PRODUTOS.PRECO_VISTA,  ');
  qryConsultaProdutos.SQL.Add('PRODUTOS.PRECO_PRAZO,  ');
  qryConsultaProdutos.SQL.Add('PRODUTOS.SALDO    ,     ');
  qryConsultaProdutos.SQL.Add('PRODUTOS.DATA_CAD         ');
  qryConsultaProdutos.SQL.Add('FROM PRODUTOS          ');
  qryConsultaProdutos.SQL.Add('INNER JOIN UNIDADES                   ');
  qryConsultaProdutos.SQL.Add('ON (PRODUTOS.ID_UNIDADE = UNIDADES.ID) ');
  qryConsultaProdutos.Open;

end;

procedure TdtmConexao.MostrarUnidades;
begin
  qryConsultaUnidades.Close;
  qryConsultaUnidades.SQL.Clear;
  qryConsultaUnidades.SQL.Add('SELECT * FROM UNIDADES order by DESCRICAO');
  qryConsultaUnidades.Open;

end;

procedure TdtmConexao.MostrarUsuarios;
begin
  qryConsultaUsuario.Close;
  qryConsultaUsuario.SQL.Clear;
  qryConsultaUsuario.SQL.Add('SELECT * FROM USUARIO');
  qryConsultaUsuario.Open;

end;

procedure TdtmConexao.MostrarVendas(pIdVenda: Integer);
begin
  qryVenda.Close;
  qryVenda.SQL.Clear;
  qryVenda.SQL.Add('SELECT');
  qryVenda.SQL.Add('VENDA.ID,');
  qryVenda.SQL.Add
    ('VENDA.ID_CLIENTE, VENDA.ID_VENDEDOR, VENDA.ID_FORMA_PAGAMENTO, VENDA.EMISSAO,');
  qryVenda.SQL.Add('VENDA.OBSERVACAO, VENDA.TOTAL, VENDA.PERCENTUAL_DESCONTO,');
  qryVenda.SQL.Add('VENDA.VALOR_DESCONTO,');
  qryVenda.SQL.Add('VENDA.TOTAL_BRUTO,');

  qryVenda.SQL.Add
    ('CLIENTES.CLI_Nome cliente_nome, FORMA_PAGAMENTO.Descricao forma_Descricao,');
  qryVenda.SQL.Add('VENDEDORES.Nome vendedor_nome');

  qryVenda.SQL.Add('FROM VENDA');

  qryVenda.SQL.Add
    ('INNER JOIN CLIENTES ON(VENDA.ID_CLIENTE = CLIENTES.CLI_ID)');
  qryVenda.SQL.Add
    ('INNER JOIN FORMA_PAGAMENTO ON(VENDA.ID_FORMA_PAGAMENTO = FORMA_PAGAMENTO.ID)');
  qryVenda.SQL.Add
    ('INNER JOIN VENDEDORES ON(VENDA.ID_VENDEDOR = VENDEDORES.ID)');

  if (pIdVenda > 0) then
  begin
    qryVenda.SQL.Add('WHERE VENDA.ID = ' + IntToStr(pIdVenda));
  end;

  qryVenda.Open;

end;

procedure TdtmConexao.MostrarVendedores;
begin
  qryConsultaVendedor.Close;
  qryConsultaVendedor.SQL.Clear;
  qryConsultaVendedor.SQL.Add('SELECT * FROM VENDEDORES order by NOME');
  qryConsultaVendedor.Open;
end;

procedure TdtmConexao.qryConsultaClientesCLI_DATA_NASCSetText(Sender: TField;
  const Text: string);
var
  Data: TDateTime;
begin
  try
    if Text = '  /  /    ' then
      Sender.Clear
    else
    begin
      Data := strtodate(Text);
      Sender.asstring := Text;
    end;
  except
    on E: econverterror do
    begin
      ShowMessage('A dada digitada : ' + Text +
        ' não corresponde a uma data válida, favor digitar uma data válida.');
      abort;
    end;
  end;
end;

procedure TdtmConexao.qryConsultaUnidadesPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  ShowMessage
    ('Atenção, a unidade não pode ser apagada pois faz parte de algum cadastro de produto, delete o produto e tente novamente'
    + sLineBreak + E.Message);
end;

procedure TdtmConexao.qryConsultaUnidadesReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
  ShowMessage
    ('Atenção, a unidade não pode ser apagada pois faz parte de algum cadastro de produto, delete o produto e tente novamente'
    + sLineBreak + E.Message);
end;

procedure TdtmConexao.qryConsultaUnidadesUpdateError(ASender: TDataSet;
  AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
  var AAction: TFDErrorAction);
begin
  ShowMessage
    ('Atenção, a unidade não pode ser apagada pois faz parte de algum cadastro de produto, delete o produto e tente novamente');
end;

end.
