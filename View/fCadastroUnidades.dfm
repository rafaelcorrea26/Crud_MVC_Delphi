object frmCadastroUnidades: TfrmCadastroUnidades
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro Unidades'
  ClientHeight = 578
  ClientWidth = 631
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
  object pgcTabelaUnidades: TPageControl
    Left = 0
    Top = 0
    Width = 631
    Height = 578
    ActivePage = tsConsultaUnid
    Align = alClient
    TabOrder = 0
    object tsConsultaUnid: TTabSheet
      Caption = 'Consulta'
      object dbgUnidades: TDBGrid
        Left = 0
        Top = 214
        Width = 623
        Height = 336
        Align = alClient
        DataSource = dtmConexao.dtsConsultaUnidades
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = dbgUnidadesDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 156
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNIDADE'
            Title.Caption = 'Unidade'
            Width = 165
            Visible = True
          end>
      end
      object pnlConsulta: TPanel
        Left = 0
        Top = 0
        Width = 623
        Height = 31
        Align = alTop
        TabOrder = 1
        object lblConsultaUnidade: TLabel
          Left = 176
          Top = 1
          Width = 222
          Height = 24
          Alignment = taCenter
          Caption = 'Consulta de Unidades'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
      end
      object pnledconsultunid: TPanel
        Left = 0
        Top = 73
        Width = 623
        Height = 141
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object lblBuscarunid: TLabel
          Left = 19
          Top = 30
          Width = 35
          Height = 14
          Caption = 'Buscar'
        end
        object edtBuscarUnidades: TEdit
          Left = 19
          Top = 50
          Width = 234
          Height = 22
          TabOrder = 0
          OnChange = edtBuscarUnidadesChange
        end
        object rgUnidades: TRadioGroup
          Left = 368
          Top = 0
          Width = 198
          Height = 105
          Caption = 'Filtro de Unidades'
          ItemIndex = 0
          Items.Strings = (
            'Descri'#231#227'o'
            'Unid')
          TabOrder = 1
          OnClick = rgUnidadesClick
        end
      end
      object pnlbotoesconsultunid: TPanel
        Left = 0
        Top = 31
        Width = 623
        Height = 42
        Align = alTop
        TabOrder = 3
        object btnIncluir: TButton
          Left = 23
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Incluir'
          TabOrder = 0
          OnClick = btnIncluirClick
        end
        object btnAlterar: TButton
          Left = 104
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Alterar'
          TabOrder = 1
          OnClick = btnAlterarClick
        end
        object btnExcluir: TButton
          Left = 185
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = btnExcluirClick
        end
        object btnMostrarUnidades: TButton
          Left = 266
          Top = 6
          Width = 100
          Height = 25
          Caption = 'Visualizar unidades'
          TabOrder = 3
          OnClick = btnMostrarUnidadesClick
        end
        object btnSair: TButton
          Left = 372
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Sair'
          TabOrder = 4
          OnClick = btnSairClick
        end
      end
    end
    object tsCadastroUnid: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      object pnlCadastro: TPanel
        Left = 0
        Top = 0
        Width = 623
        Height = 41
        Align = alTop
        TabOrder = 0
        object lblCadastrounidades: TLabel
          Left = 1
          Top = 1
          Width = 621
          Height = 29
          Align = alTop
          Alignment = taCenter
          Caption = 'Cadastro Unidades'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 218
        end
      end
      object pnlbotoescadunid: TPanel
        Left = 0
        Top = 421
        Width = 623
        Height = 129
        Align = alBottom
        TabOrder = 2
        object btnSairUnidades: TButton
          Left = 224
          Top = 24
          Width = 100
          Height = 33
          Caption = 'Sair'
          TabOrder = 1
          OnClick = btnSairUnidadesClick
        end
        object btnCadastrarUnidades: TButton
          Left = 33
          Top = 24
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
          OnClick = btnCadastrarUnidadesClick
        end
        object btnCancelarcaduni: TButton
          Left = 416
          Top = 24
          Width = 100
          Height = 33
          Caption = 'Cancelar'
          TabOrder = 2
          OnClick = btnCancelarcaduniClick
        end
      end
      object pnledtscadunid: TPanel
        Left = 0
        Top = 41
        Width = 623
        Height = 381
        Align = alTop
        TabOrder = 1
        object lbUnidades: TLabel
          Left = 66
          Top = 148
          Width = 65
          Height = 19
          Caption = 'Unidades'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblDescricaounid: TLabel
          Left = 64
          Top = 63
          Width = 67
          Height = 19
          Caption = 'Descri'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtUnidades: TDBEdit
          Left = 64
          Top = 173
          Width = 209
          Height = 21
          DataField = 'UNIDADE'
          DataSource = dtmConexao.dtsConsultaUnidades
          TabOrder = 1
          OnExit = edtUnidadesExit
          OnKeyPress = edtUnidadesKeyPress
        end
        object edtDescUnid: TDBEdit
          Left = 64
          Top = 88
          Width = 209
          Height = 21
          DataField = 'DESCRICAO'
          DataSource = dtmConexao.dtsConsultaUnidades
          MaxLength = 45
          TabOrder = 0
          OnKeyPress = edtDescUnidKeyPress
        end
      end
    end
  end
end
