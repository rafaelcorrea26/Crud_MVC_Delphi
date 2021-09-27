object FrmCadastroClientes: TFrmCadastroClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro Clientes'
  ClientHeight = 615
  ClientWidth = 1229
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
  object pgcConsultaClientes: TPageControl
    Left = 0
    Top = 0
    Width = 1229
    Height = 615
    ActivePage = tsConsultaclientes
    Align = alClient
    TabOrder = 0
    object tsConsultaclientes: TTabSheet
      Caption = 'Consulta'
      object pnlConsulta: TPanel
        Left = 0
        Top = 0
        Width = 1221
        Height = 33
        Align = alTop
        TabOrder = 0
        object lblconsultaclientes: TLabel
          Left = 1
          Top = 1
          Width = 1219
          Height = 31
          Align = alClient
          Alignment = taCenter
          Caption = 'Consulta de Clientes'
          FocusControl = pgcConsultaClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 238
          ExplicitHeight = 29
        end
      end
      object pnlbtncadclient: TPanel
        Left = 0
        Top = 33
        Width = 1221
        Height = 41
        Align = alTop
        TabOrder = 1
        object btnIncluirclientes: TButton
          Left = 4
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Incluir'
          TabOrder = 0
          OnClick = btnIncluirclientesClick
        end
        object btnAlterarclientes: TButton
          Left = 85
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Alterar'
          TabOrder = 1
          OnClick = btnAlterarclientesClick
        end
        object btnExcluirclientes: TButton
          Left = 166
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = btnExcluirclientesClick
        end
        object btnSairclientes1: TButton
          Left = 353
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Sair'
          TabOrder = 3
          OnClick = btnSairclientes1Click
        end
        object btnMostrarclientes: TButton
          Left = 247
          Top = 4
          Width = 100
          Height = 25
          Caption = 'Visualizar Clientes'
          TabOrder = 4
          OnClick = btnMostrarclientesClick
        end
      end
      object grdconsultaclient: TDBGrid
        Left = 0
        Top = 273
        Width = 1221
        Height = 314
        Align = alClient
        DataSource = dtmConexao.dtsConsultaClientes
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = grdconsultaclientDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CLI_NOME'
            Title.Caption = 'NOME'
            Width = 144
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_CIDADE'
            Title.Caption = 'CIDADE'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_BAIRRO'
            Title.Caption = 'BAIRRO'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_UF'
            Title.Caption = 'UF'
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_RG'
            Title.Caption = 'RG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_CPF'
            Title.Caption = 'CPF'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_SITUACAO'
            Title.Caption = 'SITUACAO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_TEL'
            Title.Caption = 'TEL'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_CEL'
            Title.Caption = 'CEL'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_DATA_NASC'
            Title.Caption = 'DATA NASC'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_DATA_CAD'
            Title.Caption = 'DATA CAD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_EMAIL'
            Title.Caption = 'EMAIL'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_CEP'
            Title.Caption = 'CEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDERECO'
            Visible = True
          end>
      end
      object TPanel
        Left = 0
        Top = 74
        Width = 1221
        Height = 199
        Align = alTop
        TabOrder = 3
        object lblbuscaclient: TLabel
          Left = 195
          Top = 59
          Width = 32
          Height = 13
          Caption = 'Buscar'
        end
        object edtbuscardata: TDateTimePicker
          Left = 195
          Top = 78
          Width = 186
          Height = 21
          Date = 43427.000000000000000000
          Time = 0.444980277767172100
          TabOrder = 0
          Visible = False
        end
        object btnPesquisar: TButton
          Left = 403
          Top = 78
          Width = 75
          Height = 25
          Caption = 'Pesquisar'
          TabOrder = 1
          OnClick = btnPesquisarClick
        end
        object rgclientes: TRadioGroup
          Left = 735
          Top = 6
          Width = 436
          Height = 111
          Caption = 'Filtro de Busca'
          ItemIndex = 0
          Items.Strings = (
            'Nome'
            'Data de nascimento'
            'RG'
            'CPF')
          TabOrder = 2
          OnClick = rgclientesClick
        end
        object rgSituacaoClientes: TRadioGroup
          Left = 735
          Top = 124
          Width = 404
          Height = 67
          Caption = 'Situa'#231#227'o Cliente'
          ItemIndex = 0
          Items.Strings = (
            'Todos'
            'Ativo'
            'Inativo')
          TabOrder = 3
          OnClick = rgSituacaoClientesClick
        end
        object edtBuscarclientes: TEdit
          Left = 195
          Top = 78
          Width = 169
          Height = 21
          TabOrder = 4
          OnChange = edtBuscarclientesChange
        end
      end
    end
    object tsCadClientes: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      object pnlCadastro: TPanel
        Left = 0
        Top = 0
        Width = 1221
        Height = 33
        Align = alTop
        TabOrder = 0
        object lblCadclientes: TLabel
          Left = 1
          Top = 1
          Width = 1219
          Height = 31
          Align = alClient
          Alignment = taCenter
          Caption = 'Cadastro de Clientes'
          FocusControl = pgcConsultaClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 238
          ExplicitHeight = 29
        end
      end
      object pnlcadclientedts: TPanel
        Left = 0
        Top = 33
        Width = 1221
        Height = 424
        Align = alTop
        TabOrder = 1
        object lblNome: TLabel
          Left = 40
          Top = 24
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object lblendereco: TLabel
          Left = 344
          Top = 24
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object lblUF: TLabel
          Left = 623
          Top = 24
          Width = 13
          Height = 13
          Caption = 'UF'
        end
        object lblBairro: TLabel
          Left = 40
          Top = 96
          Width = 28
          Height = 13
          Caption = 'Bairro'
        end
        object lblCidade: TLabel
          Left = 328
          Top = 96
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object lblCep: TLabel
          Left = 542
          Top = 96
          Width = 19
          Height = 13
          Caption = 'Cep'
        end
        object lblRG: TLabel
          Left = 40
          Top = 166
          Width = 14
          Height = 13
          Caption = 'RG'
        end
        object lblcPF: TLabel
          Left = 182
          Top = 166
          Width = 19
          Height = 13
          Caption = 'CPF'
        end
        object lbltelefone: TLabel
          Left = 344
          Top = 166
          Width = 42
          Height = 13
          Caption = 'Telefone'
        end
        object lblcelular: TLabel
          Left = 520
          Top = 166
          Width = 33
          Height = 13
          Caption = 'Celular'
        end
        object lblemail: TLabel
          Left = 40
          Top = 240
          Width = 24
          Height = 13
          Caption = 'Email'
        end
        object lblDatanasc: TLabel
          Left = 256
          Top = 240
          Width = 95
          Height = 13
          Caption = 'Data de nascimento'
        end
        object lbldatacad: TLabel
          Left = 473
          Top = 240
          Width = 83
          Height = 13
          Caption = 'Data de cadastro'
        end
        object lblsituacao: TLabel
          Left = 623
          Top = 240
          Width = 41
          Height = 13
          Caption = 'Situa'#231#227'o'
        end
        object edt_nome: TDBEdit
          Left = 40
          Top = 43
          Width = 281
          Height = 21
          DataField = 'CLI_NOME'
          DataSource = dtmConexao.dtsConsultaClientes
          MaxLength = 99
          TabOrder = 0
          OnKeyPress = edt_nomeKeyPress
        end
        object edt_endereco: TDBEdit
          Left = 343
          Top = 43
          Width = 249
          Height = 21
          DataField = 'CLI_ENDERECO'
          DataSource = dtmConexao.dtsConsultaClientes
          MaxLength = 49
          TabOrder = 1
          OnKeyPress = edt_enderecoKeyPress
        end
        object edt_bairro: TDBEdit
          Left = 40
          Top = 115
          Width = 261
          Height = 21
          DataField = 'CLI_BAIRRO'
          DataSource = dtmConexao.dtsConsultaClientes
          MaxLength = 99
          TabOrder = 3
          OnKeyPress = edt_bairroKeyPress
        end
        object edt_cidade: TDBEdit
          Left = 328
          Top = 115
          Width = 170
          Height = 21
          DataField = 'CLI_CIDADE'
          DataSource = dtmConexao.dtsConsultaClientes
          TabOrder = 4
          OnKeyPress = edt_cidadeKeyPress
        end
        object CbxUF: TDBComboBox
          Left = 623
          Top = 43
          Width = 65
          Height = 21
          DataField = 'CLI_UF'
          DataSource = dtmConexao.dtsConsultaClientes
          Items.Strings = (
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RJ'
            'RN'
            'RS'
            'RO'
            'RR'
            'SC'
            'SP'
            'SE'
            'TO')
          TabOrder = 2
          OnKeyPress = CbxUFKeyPress
        end
        object edt_cep: TDBEdit
          Left = 542
          Top = 115
          Width = 110
          Height = 21
          DataField = 'CLI_CEP'
          DataSource = dtmConexao.dtsConsultaClientes
          TabOrder = 5
          OnKeyPress = edt_cepKeyPress
        end
        object edt_RG: TDBEdit
          Left = 40
          Top = 185
          Width = 110
          Height = 21
          DataField = 'CLI_RG'
          DataSource = dtmConexao.dtsConsultaClientes
          TabOrder = 6
          OnKeyPress = edt_RGKeyPress
        end
        object edt_cpf: TDBEdit
          Left = 182
          Top = 185
          Width = 119
          Height = 21
          DataField = 'CLI_CPF'
          DataSource = dtmConexao.dtsConsultaClientes
          TabOrder = 7
          OnKeyPress = edt_cpfKeyPress
        end
        object edt_Telefone: TDBEdit
          Left = 343
          Top = 185
          Width = 141
          Height = 21
          DataField = 'CLI_TEL'
          DataSource = dtmConexao.dtsConsultaClientes
          TabOrder = 8
          OnKeyPress = edt_TelefoneKeyPress
        end
        object edt_celular: TDBEdit
          Left = 520
          Top = 185
          Width = 149
          Height = 21
          DataField = 'CLI_CEL'
          DataSource = dtmConexao.dtsConsultaClientes
          TabOrder = 9
          OnKeyPress = edt_celularKeyPress
        end
        object edt_email: TDBEdit
          Left = 40
          Top = 259
          Width = 185
          Height = 21
          DataField = 'CLI_EMAIL'
          DataSource = dtmConexao.dtsConsultaClientes
          MaxLength = 99
          TabOrder = 10
          OnKeyPress = edt_emailKeyPress
        end
        object edt_datanasc: TDBEdit
          Left = 256
          Top = 259
          Width = 183
          Height = 21
          DataField = 'CLI_DATA_NASC'
          DataSource = dtmConexao.dtsConsultaClientes
          MaxLength = 10
          TabOrder = 11
          OnKeyPress = edt_datanascKeyPress
        end
        object edt_datacad: TDBEdit
          Left = 473
          Top = 259
          Width = 119
          Height = 21
          DataField = 'CLI_DATA_CAD'
          DataSource = dtmConexao.dtsConsultaClientes
          Enabled = False
          TabOrder = 12
          OnKeyPress = edt_datacadKeyPress
        end
        object CxSituacao: TDBComboBox
          Left = 623
          Top = 259
          Width = 98
          Height = 21
          DataField = 'CLI_SITUACAO'
          DataSource = dtmConexao.dtsConsultaClientes
          Items.Strings = (
            'Ativo'
            'Inativo')
          TabOrder = 13
          OnExit = CxSituacaoExit
          OnKeyPress = CxSituacaoKeyPress
        end
      end
      object pnl2: TPanel
        Left = 0
        Top = 463
        Width = 1221
        Height = 124
        Align = alBottom
        TabOrder = 2
        object btnCadastrarclientes: TButton
          Left = 125
          Top = 43
          Width = 100
          Height = 33
          Caption = 'Cadastrar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnCadastrarclientesClick
        end
        object btnSairclientes: TButton
          Left = 317
          Top = 43
          Width = 100
          Height = 33
          Caption = 'Sair'
          TabOrder = 1
          OnClick = btnSairclientesClick
        end
        object btnCancelarclientes: TButton
          Left = 508
          Top = 43
          Width = 100
          Height = 33
          Caption = 'Cancelar'
          TabOrder = 2
          OnClick = btnCancelarclientesClick
        end
      end
    end
  end
end
