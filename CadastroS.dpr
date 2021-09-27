program CadastroS;

uses
  midaslib,
  Vcl.Forms,
  fPrincipal in 'View\fPrincipal.pas' {frmPrincipal},
  dConexao in 'Model\dConexao.pas' {dtmConexao: TDataModule},
  fLogin in 'View\fLogin.pas' {frmLogin},
  fCadastroProdutos in 'View\fCadastroProdutos.pas' {frmCadastroProdutos},
  fCadastroUnidades in 'View\fCadastroUnidades.pas' {frmCadastroUnidades},
  fCadastroUsuario in 'View\fCadastroUsuario.pas' {frmCadastroUsuario},
  fFuncoes in 'Control\fFuncoes.pas',
  fCadastroClientes in 'View\fCadastroClientes.pas' {FrmCadastroClientes},
  fRelatorioProd in 'View\fRelatorioProd.pas' {frmRelatorioProd},
  fRelClientes in 'View\fRelClientes.pas' {frmRelClientes},
  fTelaVenda in 'View\fTelaVenda.pas' {frmTelaVenda},
  fFormas_pagamentos in 'View\fFormas_pagamentos.pas' {frmFormas_pagamentos},
  fCadastroVendedor in 'View\fCadastroVendedor.pas' {frmCadastroVendedor},
  fConsultaVenda in 'View\fConsultaVenda.pas' {frmConsultaVenda},
  uClassTypes in 'Control\uClassTypes.pas',
  fConsultaLog in 'View\fConsultaLog.pas' {frmConsultaLog},
  fControleDeAcesso in 'View\fControleDeAcesso.pas' {frmControleDeAcessos},
  uProdutos in 'Control\uProdutos.pas',
  uClientes in 'Control\uClientes.pas',
  uUnidades in 'Control\uUnidades.pas',
  uUsuario in 'Control\uUsuario.pas',
  uVendedores in 'Control\uVendedores.pas',
  uFormaPagamento in 'Control\uFormaPagamento.pas',
  uLog in 'Control\uLog.pas',
  fCadastroTesteClasses in 'View\fCadastroTesteClasses.pas' {frmTestesClasses};

{$R *.res}

begin
  Application.Initialize;
  // Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCadastroProdutos, frmCadastroProdutos);
  Application.CreateForm(TfrmCadastroUnidades, frmCadastroUnidades);
  Application.CreateForm(TfrmCadastroUsuario, frmCadastroUsuario);
  Application.CreateForm(TdtmConexao, dtmConexao);
  Application.CreateForm(TFrmCadastroClientes, FrmCadastroClientes);
  Application.CreateForm(TfrmRelatorioProd, frmRelatorioProd);
  Application.CreateForm(TfrmRelClientes, frmRelClientes);
  Application.CreateForm(TfrmTelaVenda, frmTelaVenda);
  Application.CreateForm(TfrmFormas_pagamentos, frmFormas_pagamentos);
  Application.CreateForm(TfrmCadastroVendedor, frmCadastroVendedor);
  Application.CreateForm(TfrmConsultaVenda, frmConsultaVenda);
  Application.CreateForm(TfrmConsultaLog, frmConsultaLog);
  Application.CreateForm(TfrmControleDeAcessos, frmControleDeAcessos);
  Application.CreateForm(TfrmTestesClasses, frmTestesClasses);
  Application.Run;

end.
