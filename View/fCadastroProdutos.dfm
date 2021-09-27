object frmCadastroProdutos: TfrmCadastroProdutos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro Produtos'
  ClientHeight = 522
  ClientWidth = 886
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 886
    Height = 522
    ActivePage = tsConsultaProdutos
    Align = alClient
    TabOrder = 0
    object tsConsultaProdutos: TTabSheet
      Caption = 'Consulta'
      object dbgProdutos: TDBGrid
        Left = 0
        Top = 194
        Width = 878
        Height = 300
        Align = alClient
        DataSource = dtmConexao.dtsConsultaProdutos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = dbgProdutosDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 141
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNIDADE'
            Title.Caption = 'Unidade'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_BARRAS'
            Title.Caption = 'C'#243'digo de barras'
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO_VISTA'
            Title.Caption = 'Pre'#231'o a Vista'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO_PRAZO'
            Title.Caption = 'Pre'#231'o a Prazo'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SALDO'
            Title.Caption = 'Saldo'
            Width = 238
            Visible = True
          end>
      end
      object pnlbotoesconsultprod: TPanel
        Left = 0
        Top = 33
        Width = 878
        Height = 32
        Align = alTop
        TabOrder = 1
        object btnIncluir: TButton
          Left = 4
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Incluir'
          TabOrder = 0
          OnClick = btnIncluirClick
        end
        object btnAlterar: TButton
          Left = 85
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Alterar'
          TabOrder = 1
          OnClick = btnAlterarClick
        end
        object btnExcluir: TButton
          Left = 166
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = btnExcluirClick
        end
        object btnMostrarProdutos: TButton
          Left = 247
          Top = 0
          Width = 100
          Height = 25
          Caption = 'Visualizar Produtos'
          TabOrder = 3
          OnClick = btnMostrarProdutosClick
        end
        object btnSair: TButton
          Left = 353
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Sair'
          TabOrder = 4
          OnClick = btnSairClick
        end
      end
      object pnledtconsultprod: TPanel
        Left = 0
        Top = 65
        Width = 878
        Height = 129
        Align = alTop
        TabOrder = 2
        object lblBuscarProd: TLabel
          Left = 19
          Top = 47
          Width = 32
          Height = 13
          Caption = 'Buscar'
        end
        object edtBuscarProdutos: TEdit
          Left = 19
          Top = 66
          Width = 182
          Height = 21
          TabOrder = 0
          OnChange = edtBuscarProdutosChange
          OnKeyPress = edtBuscarProdutosKeyPress
        end
        object rgProdutos: TRadioGroup
          Left = 349
          Top = 0
          Width = 235
          Height = 103
          Caption = 'Filtro de Busca'
          ItemIndex = 0
          Items.Strings = (
            'Descri'#231#227'o'
            'C'#243'digo Barras'
            'Data de cadastro')
          TabOrder = 1
          OnClick = rgProdutosClick
        end
        object edtbuscardataprod: TDateTimePicker
          Left = 19
          Top = 66
          Width = 182
          Height = 21
          Date = 43430.000000000000000000
          Time = 0.359998969906882800
          TabOrder = 2
          Visible = False
        end
        object btnPesquisarProd: TButton
          Left = 207
          Top = 66
          Width = 75
          Height = 23
          Caption = 'Pesquisar'
          TabOrder = 3
          OnClick = btnPesquisarProdClick
        end
      end
      object pnlCadastro: TPanel
        Left = 0
        Top = 0
        Width = 878
        Height = 33
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object lblConsultadeprodutos: TLabel
          Left = 1
          Top = 1
          Width = 876
          Height = 31
          Align = alClient
          Alignment = taCenter
          Caption = 'Consulta de Produtos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 220
          ExplicitHeight = 24
        end
      end
    end
    object tsCadastroProdutos: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      object pnl13: TPanel
        Left = 0
        Top = 41
        Width = 878
        Height = 353
        Align = alTop
        TabOrder = 0
        object lblsaldo: TLabel
          Left = 63
          Top = 259
          Width = 39
          Height = 19
          Caption = 'Saldo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblPrecovista: TLabel
          Left = 63
          Top = 207
          Width = 89
          Height = 19
          Caption = 'Pre'#231'o a vista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblidunid: TLabel
          Left = 63
          Top = 155
          Width = 80
          Height = 19
          Caption = 'ID Unidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblDescricao: TLabel
          Left = 63
          Top = 95
          Width = 67
          Height = 19
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblcodbarra: TLabel
          Left = 314
          Top = 148
          Width = 114
          Height = 19
          Caption = 'C'#243'digo de barra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblprecoprazo: TLabel
          Left = 314
          Top = 207
          Width = 96
          Height = 19
          Caption = 'Pre'#231'o a prazo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblData_Cad: TLabel
          Left = 314
          Top = 263
          Width = 118
          Height = 19
          Caption = 'Data de cadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtSaldo: TDBEdit
          Left = 63
          Top = 284
          Width = 121
          Height = 21
          DataField = 'SALDO'
          DataSource = dtmConexao.dtsConsultaProdutos
          MaxLength = 14
          TabOrder = 5
          OnExit = edtSaldoExit
          OnKeyPress = edtSaldoKeyPress
        end
        object edtPrecoVista: TDBEdit
          Left = 63
          Top = 232
          Width = 121
          Height = 21
          DataField = 'PRECO_VISTA'
          DataSource = dtmConexao.dtsConsultaProdutos
          MaxLength = 14
          TabOrder = 3
          OnKeyPress = edtPrecoVistaKeyPress
        end
        object cbxIDUnidade: TDBLookupComboBox
          Left = 63
          Top = 180
          Width = 113
          Height = 21
          DataField = 'ID_UNIDADE'
          DataSource = dtmConexao.dtsConsultaProdutos
          KeyField = 'ID'
          ListField = 'UNIDADE'
          ListSource = dtmConexao.dtsConsultaUnidades
          TabOrder = 1
          OnKeyPress = cbxIDUnidadeKeyPress
        end
        object edtDescProd: TDBEdit
          Left = 63
          Top = 120
          Width = 385
          Height = 21
          DataField = 'DESCRICAO'
          DataSource = dtmConexao.dtsConsultaProdutos
          MaxLength = 80
          TabOrder = 0
          OnKeyPress = edtDescProdKeyPress
        end
        object edtCodBarra: TDBEdit
          Left = 314
          Top = 173
          Width = 134
          Height = 21
          DataField = 'COD_BARRAS'
          DataSource = dtmConexao.dtsConsultaProdutos
          TabOrder = 2
          OnKeyPress = edtCodBarraKeyPress
        end
        object edtPrecoPrazo: TDBEdit
          Left = 314
          Top = 232
          Width = 134
          Height = 21
          DataField = 'PRECO_PRAZO'
          DataSource = dtmConexao.dtsConsultaProdutos
          MaxLength = 14
          TabOrder = 4
          OnKeyPress = edtPrecoPrazoKeyPress
        end
        object edtDataCad: TDBEdit
          Left = 314
          Top = 288
          Width = 134
          Height = 21
          DataField = 'DATA_CAD'
          DataSource = dtmConexao.dtsConsultaProdutos
          Enabled = False
          TabOrder = 6
        end
      end
      object pnlConsulta: TPanel
        Left = 0
        Top = 0
        Width = 878
        Height = 41
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 870
          Height = 33
          Align = alClient
          Alignment = taCenter
          Caption = 'Consulta de Produtos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 220
          ExplicitHeight = 24
        end
      end
      object pnl1: TPanel
        Left = 0
        Top = 394
        Width = 878
        Height = 121
        Align = alTop
        Caption = 'pnl1'
        TabOrder = 2
        object btnCadastrarProd: TButton
          Left = 48
          Top = 39
          Width = 100
          Height = 33
          Caption = 'Cadastrar'
          TabOrder = 0
          OnClick = btnCadastrarProdClick
        end
        object btnSairProd: TButton
          Left = 226
          Top = 39
          Width = 100
          Height = 33
          Caption = 'Sair'
          TabOrder = 1
          OnClick = btnSairProdClick
        end
        object btnCancelcadprod: TButton
          Left = 400
          Top = 39
          Width = 100
          Height = 33
          Caption = 'Cancelar'
          TabOrder = 2
          OnClick = btnCancelcadprodClick
        end
      end
    end
  end
end
