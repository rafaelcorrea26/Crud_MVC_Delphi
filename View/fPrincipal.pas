unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Imaging.GIFImg, fCadastroTesteClasses;

type
  TfrmPrincipal = class(TForm)
    mnuPrincipal: TMainMenu;
    mnuCadastro: TMenuItem;
    mnuProdutos: TMenuItem;
    mnuUnidades: TMenuItem;
    mnuUsuario: TMenuItem;
    mnuClientes: TMenuItem;
    mnuRelatorios: TMenuItem;
    mnuRelProd: TMenuItem;
    stsmenu: TStatusBar;
    tmrmenu: TTimer;
    mnuRelClientes: TMenuItem;
    mnuVenda: TMenuItem;
    mnuVendaprodutos: TMenuItem;
    mnuFormaPagamento: TMenuItem;
    mnuVendedor: TMenuItem;
    mnuConsultaVendas: TMenuItem;
    pnl2: TPanel;
    pnl1: TPanel;
    img2: TImage;
    mnuLog: TMenuItem;
    mnuConsultaLog: TMenuItem;
    mnuConfiguracao: TMenuItem;
    mnuControleDeAcesso: TMenuItem;
    testecliente1: TMenuItem;
    img1: TImage;
    procedure mnuProdutosClick(Sender: TObject);
    procedure mnuUnidadesClick(Sender: TObject);
    procedure mnuUsuarioClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btniniClick(Sender: TObject);
    procedure mnuClientesClick(Sender: TObject);
    procedure mnuRelProdClick(Sender: TObject);
    procedure tmrmenuTimer(Sender: TObject);
    procedure mnuRelClientesClick(Sender: TObject);
    procedure mnuVendaprodutosClick(Sender: TObject);
    procedure mnuFormaPagamentoClick(Sender: TObject);
    procedure mnuVendedorClick(Sender: TObject);
    procedure mnuConsultaVendasClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mnuConsultaLogClick(Sender: TObject);
    procedure mnuControleDeAcessoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure testecliente1Click(Sender: TObject);

  private
    { Private declarations }

  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  fCadastroProdutos, fCadastroUnidades, fCadastroUsuario, fCadastroClientes,
  dConexao, fLogin, IniFiles, fRelatorioProd, fRelClientes, fTelaVenda,
  fFormas_pagamentos, fCadastroVendedor, fConsultaLog;

{$R *.dfm}

procedure TfrmPrincipal.btniniClick(Sender: TObject);
var
  ArquivoINI: TIniFile;
begin
  ArquivoINI := TIniFile.Create('c:\TesteCD.INI');
  ArquivoINI.WriteString('BANCO', 'LOCALIZAÇÃO', 'ZETA:D:\DADOS\');
  ArquivoINI.Free;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Caso o Formulário for fechado pelo X finaliza a aplicação inteira

  Application.Terminate;

end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  // (Image1.Picture.Graphic as TGIFImage).Animate := True;
end;

procedure TfrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

begin
  if Key = VK_F11 then
    frmLogin.Visible := False;
  frmLogin.ShowModal;
end;

procedure TfrmPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if (Key = #13) then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
  end;

procedure TfrmPrincipal.mnuClientesClick(Sender: TObject);
begin

  dtmConexao.qryControleAcesso.open;

  if dtmConexao.qryControleAcesso.Locate('cad_client', '1') then

  begin
    FrmCadastroClientes.tsCadClientes.TabVisible := False;
    FrmCadastroClientes.ShowModal;
    FrmCadastroClientes.tsConsultaclientes.TabVisible := True;
    dtmConexao.BotoesFicamComEnableTrue(frmCadastroUnidades);

  end

  else if dtmConexao.qryControleAcesso.Locate('cad_client', '2') then

  begin
    Showmessage('Usuário sem permissão');

  end

  else if dtmConexao.qryControleAcesso.Locate('cad_client', '3') then

  begin
    FrmCadastroClientes.tsCadClientes.TabVisible := False;
    dtmConexao.BotoesFicamComEnableFalse(FrmCadastroClientes);
    FrmCadastroClientes.ShowModal;
    FrmCadastroClientes.tsConsultaclientes.TabVisible := True;

  end

end;

procedure TfrmPrincipal.mnuConsultaLogClick(Sender: TObject);
begin

  dtmConexao.qryControleAcesso.open;

  if dtmConexao.qryControleAcesso.Locate('log', '1') then

  begin

    frmConsultaLog.ShowModal;

  end

  else if dtmConexao.qryControleAcesso.Locate('log', '2') then

  begin
    Showmessage('Usuário sem permissão');

  end

end;

procedure TfrmPrincipal.mnuConsultaVendasClick(Sender: TObject);
begin

  dtmConexao.qryControleAcesso.open;

  if dtmConexao.qryControleAcesso.Locate('Venda_venda', '1') then

  begin

    frmtelavenda.tspgctelaconsultavenda.TabVisible := True;
    frmtelavenda.tsTelaVenda.TabVisible := False;

    frmtelavenda.ShowModal;

  end

  else if dtmConexao.qryControleAcesso.Locate('Venda_venda', '2') then

  begin
    Showmessage('Usuário sem permissão');

  end

end;

procedure TfrmPrincipal.mnuControleDeAcessoClick(Sender: TObject);
begin
  dtmConexao.tipologin := 'config';
  frmLogin.Visible := False;
  frmLogin.ShowModal;
end;

procedure TfrmPrincipal.mnuFormaPagamentoClick(Sender: TObject);
begin

  dtmConexao.qryControleAcesso.open;

  if dtmConexao.qryControleAcesso.Locate('cad_formapgt', '1') then

  begin
    frmFormas_pagamentos.tsCadastroFormasPGT.TabVisible := False;
    frmFormas_pagamentos.ShowModal;
    frmFormas_pagamentos.tsConsultaFormapgt.TabVisible := True;
    dtmConexao.BotoesFicamComEnableTrue(frmCadastroUsuario);

  end

  else if dtmConexao.qryControleAcesso.Locate('cad_formapgt', '2') then

  begin
    Showmessage('Usuário sem permissão');

  end

  else if dtmConexao.qryControleAcesso.Locate('cad_formapgt', '3') then

  begin
    frmFormas_pagamentos.tsCadastroFormasPGT.TabVisible := False;
    dtmConexao.BotoesFicamComEnableFalse(frmFormas_pagamentos);
    frmFormas_pagamentos.ShowModal;
    frmFormas_pagamentos.tsConsultaFormapgt.TabVisible := True;

  end

end;

procedure TfrmPrincipal.mnuProdutosClick(Sender: TObject);
begin
  dtmConexao.qryControleAcesso.open;

  if dtmConexao.qryControleAcesso.Locate('cad_prod', '1') then

  begin
    frmCadastroProdutos.tsCadastroProdutos.TabVisible := False;
    frmCadastroProdutos.ShowModal;
    frmCadastroProdutos.tsConsultaProdutos.TabVisible := True;
    dtmConexao.BotoesFicamComEnableTrue(frmCadastroProdutos);

  end

  else if dtmConexao.qryControleAcesso.Locate('cad_prod', '2') then

  begin
    Showmessage('Usuário sem permissão');

  end

  else if dtmConexao.qryControleAcesso.Locate('cad_prod', '3') then

  begin
    frmCadastroProdutos.tsCadastroProdutos.TabVisible := False;
    dtmConexao.BotoesFicamComEnableFalse(frmCadastroProdutos);
    frmCadastroProdutos.ShowModal;
    frmCadastroProdutos.tsConsultaProdutos.TabVisible := True;

  end

end;

procedure TfrmPrincipal.mnuRelClientesClick(Sender: TObject);
begin

  dtmConexao.qryControleAcesso.open;

  if dtmConexao.qryControleAcesso.Locate('rel_client', '1') then

  begin

    frmRelClientes.ShowModal;
    dtmConexao.BotoesFicamComEnableTrue(frmRelClientes);

  end

  else if dtmConexao.qryControleAcesso.Locate('rel_client', '2') then

  begin
    Showmessage('Usuário sem permissão');

  end


end;

procedure TfrmPrincipal.mnuRelProdClick(Sender: TObject);
begin

  dtmConexao.qryControleAcesso.open;

  if dtmConexao.qryControleAcesso.Locate('rel_prod', '1') then

  begin

    frmRelatorioProd.ShowModal;

    dtmConexao.BotoesFicamComEnableTrue(frmRelatorioProd);

  end

  else if dtmConexao.qryControleAcesso.Locate('rel_prod', '2') then

  begin
    Showmessage('Usuário sem permissão');

  end

end;

procedure TfrmPrincipal.mnuUnidadesClick(Sender: TObject);
begin
  dtmConexao.qryControleAcesso.open;

  if dtmConexao.qryControleAcesso.Locate('cad_unid', '1') then

  begin
    frmCadastroUnidades.tsCadastroUnid.TabVisible := False;
    frmCadastroUnidades.ShowModal;
    frmCadastroUnidades.tsConsultaUnid.TabVisible := True;
    dtmConexao.BotoesFicamComEnableTrue(frmCadastroUnidades);

  end

  else if dtmConexao.qryControleAcesso.Locate('cad_unid', '2') then

  begin
    Showmessage('Usuário sem permissão');

  end

  else if dtmConexao.qryControleAcesso.Locate('cad_unid', '3') then

  begin
    frmCadastroUnidades.tsCadastroUnid.TabVisible := False;
    dtmConexao.BotoesFicamComEnableFalse(frmCadastroUnidades);
    frmCadastroUnidades.ShowModal;
    frmCadastroUnidades.tsConsultaUnid.TabVisible := True;

  end

end;

procedure TfrmPrincipal.mnuUsuarioClick(Sender: TObject);
begin

  dtmConexao.qryControleAcesso.open;

  if dtmConexao.qryControleAcesso.Locate('cad_usu', '1') then

  begin
    frmCadastroUsuario.tsCadastroUsuario.TabVisible := False;
    frmCadastroUsuario.ShowModal;
    frmCadastroUsuario.tsConsultaUsuario.TabVisible := True;
    dtmConexao.BotoesFicamComEnableTrue(frmCadastroUsuario);

  end

  else if dtmConexao.qryControleAcesso.Locate('cad_usu', '2') then

  begin
    Showmessage('Usuário sem permissão');

  end

  else if dtmConexao.qryControleAcesso.Locate('cad_usu', '3') then

  begin
    frmCadastroUsuario.tsCadastroUsuario.TabVisible := False;
    dtmConexao.BotoesFicamComEnableFalse(frmCadastroUnidades);
    frmCadastroUsuario.ShowModal;
    frmCadastroUsuario.tsConsultaUsuario.TabVisible := True;

  end

end;

procedure TfrmPrincipal.mnuVendaprodutosClick(Sender: TObject);
begin
  dtmConexao.qryControleAcesso.open;

  if dtmConexao.qryControleAcesso.Locate('Venda_venda', '1') then

  begin

    frmtelavenda.tsTelaVenda.TabVisible := True;
    frmtelavenda.tspgctelaconsultavenda.TabVisible := False;
    frmtelavenda.TipoOperacao := 'I';
    frmtelavenda.ShowModal;

  end

  else if dtmConexao.qryControleAcesso.Locate('Venda_venda', '2') then

  begin
    Showmessage('Usuário sem permissão');

  end

end;

procedure TfrmPrincipal.mnuVendedorClick(Sender: TObject);
begin

  dtmConexao.qryControleAcesso.open;

  if dtmConexao.qryControleAcesso.Locate('cad_vendedor', '1') then

  begin
    frmCadastroVendedor.tscadastrovendedor.TabVisible := False;
    frmCadastroVendedor.ShowModal;
    frmCadastroVendedor.tsconsultavendedor.TabVisible := True;
    dtmConexao.BotoesFicamComEnableTrue(frmCadastroUsuario);

  end

  else if dtmConexao.qryControleAcesso.Locate('cad_vendedor', '2') then

  begin
    Showmessage('Usuário sem permissão');

  end

  else if dtmConexao.qryControleAcesso.Locate('cad_vendedor', '3') then

  begin
    frmCadastroVendedor.tscadastrovendedor.TabVisible := False;
    dtmConexao.BotoesFicamComEnableFalse(frmFormas_pagamentos);
    frmCadastroVendedor.ShowModal;
    frmCadastroVendedor.tsconsultavendedor.TabVisible := True;

  end

end;

procedure TfrmPrincipal.testecliente1Click(Sender: TObject);
var
lformulario : TfrmTestesClasses;
begin
lformulario := TfrmTestesClasses.Create(self);
try
   lformulario.ShowModal;

finally
  lformulario.Free;
end;
end;

procedure TfrmPrincipal.tmrmenuTimer(Sender: TObject);
begin
  stsmenu.Panels[2].Text := 'Data: ' +
    FormatDateTime('dddd, dd " de " mmmm.', Now);
  stsmenu.Panels[3].Text := FormatDateTime('hh:mm:ss', Now);
end;

end.
