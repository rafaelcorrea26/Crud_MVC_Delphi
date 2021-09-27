object frmCadastroUsuario: TfrmCadastroUsuario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro de Usu'#225'rio'
  ClientHeight = 750
  ClientWidth = 1034
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcConsultaUsuario: TPageControl
    Left = 0
    Top = 0
    Width = 1034
    Height = 750
    ActivePage = tsCadastroUsuario
    Align = alClient
    TabOrder = 0
    object tsConsultaUsuario: TTabSheet
      Caption = 'Consulta'
      object pnlConsulta: TPanel
        Left = 0
        Top = 0
        Width = 1026
        Height = 33
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 1
          Top = 1
          Width = 1024
          Height = 31
          Align = alClient
          Alignment = taCenter
          Caption = 'Consulta de Usu'#225'rios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 203
          ExplicitHeight = 24
        end
      end
      object pnlMenu: TPanel
        Left = 0
        Top = 33
        Width = 1026
        Height = 40
        Align = alTop
        TabOrder = 1
        object btnAlterar: TButton
          Left = 89
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Alterar'
          TabOrder = 0
          OnClick = btnAlterarClick
        end
        object btnExcluir: TButton
          Left = 170
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 1
          OnClick = btnExcluirClick
        end
        object btnIncluir: TButton
          Left = 8
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Incluir'
          TabOrder = 2
          OnClick = btnIncluirClick
        end
        object btnMostrarUsuarios: TButton
          Left = 251
          Top = 6
          Width = 100
          Height = 25
          Caption = 'Visualizar Usu'#225'rios'
          TabOrder = 3
          OnClick = btnMostrarUsuariosClick
        end
        object btnSair: TButton
          Left = 357
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Sair'
          TabOrder = 4
          OnClick = btnSairClick
        end
      end
      object pnledtconsultus: TPanel
        Left = 0
        Top = 73
        Width = 1026
        Height = 140
        Align = alTop
        TabOrder = 2
        object lblBuscarUsuario: TLabel
          Left = 27
          Top = 52
          Width = 71
          Height = 13
          Caption = 'Buscar Usu'#225'rio'
        end
        object rgUsuario: TRadioGroup
          Left = 336
          Top = 0
          Width = 241
          Height = 105
          Caption = 'Filtro de Usu'#225'rios'
          ItemIndex = 0
          Items.Strings = (
            'Nome'
            'Login')
          TabOrder = 0
          OnClick = rgUsuarioClick
        end
        object edtBuscarUsuario: TEdit
          Left = 27
          Top = 71
          Width = 242
          Height = 21
          TabOrder = 1
          OnChange = edtBuscarUsuarioChange
        end
      end
      object dbgUsuario: TDBGrid
        Left = 0
        Top = 213
        Width = 1026
        Height = 509
        Align = alClient
        DataSource = dtmConexao.dtsConsultaUsuario
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = dbgUsuarioDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 145
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGIN'
            Title.Caption = 'Login'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SENHA'
            Title.Caption = 'Senha'
            Width = 84
            Visible = True
          end>
      end
    end
    object tsCadastroUsuario: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      object pnlBotoes: TPanel
        Left = 0
        Top = 624
        Width = 1026
        Height = 98
        Align = alBottom
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object btnCadastrarUsu: TButton
          Left = 129
          Top = 49
          Width = 100
          Height = 33
          Align = alCustom
          Caption = 'Cadastrar'
          TabOrder = 0
          OnClick = btnCadastrarUsuClick
        end
        object btnSairUsu: TButton
          Left = 267
          Top = 49
          Width = 100
          Height = 33
          Margins.Left = 10
          Margins.Top = 5
          Margins.Right = 10
          Margins.Bottom = 5
          Align = alCustom
          Caption = 'Sair'
          TabOrder = 1
          OnClick = btnSairUsuClick
        end
        object btnCancelarCadUsu: TButton
          Left = 406
          Top = 49
          Width = 100
          Height = 33
          Caption = 'Cancelar'
          TabOrder = 2
          OnClick = btnCancelarCadUsuClick
        end
      end
      object pnlEdtsUnid: TPanel
        Left = 0
        Top = 41
        Width = 1026
        Height = 583
        Align = alClient
        TabOrder = 2
        object lblSenha: TLabel
          Left = 68
          Top = 152
          Width = 82
          Height = 19
          Caption = 'Nova senha'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblLogin: TLabel
          Left = 68
          Top = 76
          Width = 77
          Height = 19
          Caption = 'Novo login'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblNomeUsuario: TLabel
          Left = 66
          Top = 6
          Width = 122
          Height = 19
          Caption = 'Nome do usu'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 484
          Top = 26
          Width = 271
          Height = 23
          Caption = 'Configura'#231#227'o controle de acesso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtSenha: TDBEdit
          Left = 68
          Top = 177
          Width = 121
          Height = 21
          DataField = 'SENHA'
          DataSource = dtmConexao.dtsConsultaUsuario
          TabOrder = 2
          OnExit = edtSenhaExit
          OnKeyPress = edtSenhaKeyPress
        end
        object edtLogin: TDBEdit
          Left = 68
          Top = 101
          Width = 121
          Height = 21
          DataField = 'LOGIN'
          DataSource = dtmConexao.dtsConsultaUsuario
          TabOrder = 0
          OnKeyPress = edtLoginKeyPress
        end
        object edtNomeUsuario: TDBEdit
          Left = 66
          Top = 31
          Width = 123
          Height = 21
          DataField = 'NOME'
          DataSource = dtmConexao.dtsConsultaUsuario
          TabOrder = 1
          OnKeyPress = edtNomeUsuarioKeyPress
        end
        object rgConsultaVenda: TRadioGroup
          Left = 532
          Top = 476
          Width = 213
          Height = 78
          Caption = 'Consulta de venda'
          ItemIndex = 0
          Items.Strings = (
            '1 = Acesso liberado.'
            '2 = Sem acesso.')
          TabOrder = 3
        end
        object rgRelatoriodeClientes: TRadioGroup
          Left = 532
          Top = 374
          Width = 213
          Height = 78
          Caption = 'Relatorio de clientes'
          ItemIndex = 0
          Items.Strings = (
            '1 = Acesso liberado.'
            '2 = Sem acesso.')
          TabOrder = 4
        end
        object rgRelatoriodeProdutos: TRadioGroup
          Left = 532
          Top = 273
          Width = 213
          Height = 78
          Caption = 'Relatorio de produtos'
          ItemIndex = 0
          Items.Strings = (
            '1 = Acesso liberado.'
            '2 = Sem acesso.')
          TabOrder = 5
        end
        object rgCadastrodeVendedor: TRadioGroup
          Left = 532
          Top = 171
          Width = 213
          Height = 78
          Caption = 'Cadastro de vendedor'
          ItemIndex = 0
          Items.Strings = (
            '1 = Acesso liberado.'
            '2 = Sem acesso.'
            '3 = Acesso limitado, apenas visualizar.')
          TabOrder = 6
        end
        object rgCadastrodeFormaPGT: TRadioGroup
          Left = 532
          Top = 70
          Width = 213
          Height = 78
          Caption = 'Cadastro de forma de pagamento'
          ItemIndex = 0
          Items.Strings = (
            '1 = Acesso liberado.'
            '2 = Sem acesso.'
            '3 = Acesso limitado, apenas visualizar.')
          TabOrder = 7
        end
        object rgCadastrodeProdutos: TRadioGroup
          Left = 290
          Top = 171
          Width = 216
          Height = 78
          Caption = 'Cadastro de produtos'
          ItemIndex = 0
          Items.Strings = (
            '1 = Acesso liberado.'
            '2 = Sem acesso.'
            '3 = Acesso limitado, apenas visualizar.')
          TabOrder = 8
        end
        object rgCadastrodeClientes: TRadioGroup
          Left = 290
          Top = 476
          Width = 216
          Height = 78
          Caption = 'Cadastro de clientes'
          ItemIndex = 0
          Items.Strings = (
            '1 = Acesso liberado.'
            '2 = Sem acesso.'
            '3 = Acesso limitado, apenas visualizar.')
          TabOrder = 9
        end
        object rgCadastrodeUsuarios: TRadioGroup
          Left = 290
          Top = 374
          Width = 216
          Height = 78
          Caption = 'Cadastro de Usu'#225'rios'
          ItemIndex = 0
          Items.Strings = (
            '1 = Acesso liberado.'
            '2 = Sem acesso.'
            '3 = Acesso limitado, apenas visualizar.')
          TabOrder = 10
        end
        object rgCadastrodeUnidades: TRadioGroup
          Left = 290
          Top = 273
          Width = 216
          Height = 78
          Caption = 'Cadastro de unidades'
          ItemIndex = 0
          Items.Strings = (
            '1 = Acesso liberado.'
            '2 = Sem acesso.'
            '3 = Acesso limitado, apenas visualizar.')
          TabOrder = 11
        end
        object rgTelaVenda: TRadioGroup
          Left = 771
          Top = 70
          Width = 214
          Height = 78
          Caption = 'Tela de venda'
          ItemIndex = 0
          Items.Strings = (
            '1 = Acesso liberado.'
            '2 = Sem acesso.')
          TabOrder = 12
        end
        object rgLog: TRadioGroup
          Left = 290
          Top = 70
          Width = 214
          Height = 78
          Caption = 'Consulta de log'
          ItemIndex = 0
          Items.Strings = (
            '1 = Acesso liberado.'
            '2 = Sem acesso.'
            '3 = Acesso limitado, apenas visualizar.')
          TabOrder = 13
        end
        object rgCadastro: TRadioGroup
          Left = 771
          Top = 177
          Width = 214
          Height = 78
          Caption = 'Cadastros'
          ItemIndex = 0
          Items.Strings = (
            '1 = Acesso liberado.'
            '2 = Sem acesso.'
            '3 = Acesso limitado, apenas visualizar.')
          TabOrder = 14
        end
        object rgConfig: TRadioGroup
          Left = 771
          Top = 278
          Width = 214
          Height = 78
          Caption = 'Configura'#231#227'o'
          ItemIndex = 0
          Items.Strings = (
            '1 = Acesso liberado.'
            '2 = Sem acesso.'
            '3 = Acesso limitado, apenas visualizar.')
          TabOrder = 15
        end
      end
      object pnlCadastro: TPanel
        Left = 0
        Top = 0
        Width = 1026
        Height = 41
        Align = alTop
        TabOrder = 1
        object lblCadastroUsuario: TLabel
          Left = 1
          Top = 1
          Width = 1024
          Height = 29
          Align = alTop
          Alignment = taCenter
          Caption = 'Cadastro de Usu'#225'rios e Controle de Acessos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 511
        end
      end
    end
  end
end
