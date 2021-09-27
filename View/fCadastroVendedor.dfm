object frmCadastroVendedor: TfrmCadastroVendedor
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro de Vendedores'
  ClientHeight = 438
  ClientWidth = 583
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcCadastroVendedor: TPageControl
    Left = 0
    Top = 0
    Width = 591
    Height = 441
    ActivePage = tsconsultavendedor
    TabOrder = 0
    object tsconsultavendedor: TTabSheet
      Caption = 'Consulta'
      object pnlbtnsvendedor: TPanel
        Left = 0
        Top = 33
        Width = 583
        Height = 41
        Align = alTop
        TabOrder = 0
        object btnIncluirvendedor: TButton
          Left = 12
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Incluir'
          TabOrder = 0
          OnClick = btnIncluirvendedorClick
        end
        object btnSairvendedor: TButton
          Left = 351
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Sair'
          TabOrder = 4
          OnClick = btnSairvendedorClick
        end
        object btnAlterarvendedor: TButton
          Left = 93
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Alterar'
          TabOrder = 1
          OnClick = btnAlterarvendedorClick
        end
        object btnExcluirvendedor: TButton
          Left = 174
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = btnExcluirvendedorClick
        end
        object btnMostrarvendedor: TButton
          Left = 255
          Top = 4
          Width = 90
          Height = 25
          Caption = 'Visualizar todas'
          TabOrder = 3
          OnClick = btnMostrarvendedorClick
        end
      end
      object pnledtvendedor: TPanel
        Left = 0
        Top = 74
        Width = 583
        Height = 127
        Align = alTop
        TabOrder = 1
        object lblbuscarvendedor: TLabel
          Left = 40
          Top = 45
          Width = 32
          Height = 13
          Caption = 'Buscar'
        end
        object rgvendedor: TRadioGroup
          Left = 320
          Top = 0
          Width = 261
          Height = 121
          Caption = 'Filtro formas de pagamento'
          ItemIndex = 0
          Items.Strings = (
            'Nome'
            'C'#243'digo')
          TabOrder = 1
          OnClick = rgvendedorClick
        end
        object edtBuscarvendedor: TEdit
          Left = 40
          Top = 64
          Width = 185
          Height = 21
          TabOrder = 0
          OnChange = edtBuscarvendedorChange
        end
      end
      object pnlConsulta: TPanel
        Left = 0
        Top = 0
        Width = 583
        Height = 33
        Align = alTop
        TabOrder = 3
        object lblvendedor: TLabel
          Left = 174
          Top = 0
          Width = 246
          Height = 27
          Caption = 'Consulta de vendedor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -23
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object grdvendedor: TDBGrid
        Left = 0
        Top = 201
        Width = 583
        Height = 212
        Align = alClient
        DataSource = dtmConexao.dtsConsultavendedor
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIMITE_DESC'
            Title.Caption = 'Limite de desconto'
            Visible = True
          end>
      end
    end
    object tscadastrovendedor: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      object pnlCadastro: TPanel
        Left = 0
        Top = 0
        Width = 583
        Height = 41
        Align = alTop
        TabOrder = 0
        object lblCadastrounidades: TLabel
          Left = 1
          Top = 1
          Width = 581
          Height = 29
          Align = alTop
          Alignment = taCenter
          Caption = 'Cadastro de vendedor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 253
        end
      end
      object pnleditvendedor: TPanel
        Left = 0
        Top = 41
        Width = 583
        Height = 298
        Align = alTop
        TabOrder = 1
        object lblDescricaovendedor: TLabel
          Left = 56
          Top = 55
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
        object lblLimitedesc: TLabel
          Left = 56
          Top = 127
          Width = 133
          Height = 19
          Caption = 'Limite de desconto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtDescricaovendedor: TDBEdit
          Left = 56
          Top = 80
          Width = 209
          Height = 21
          DataField = 'NOME'
          DataSource = dtmConexao.dtsConsultavendedor
          MaxLength = 45
          TabOrder = 0
          OnKeyPress = edtDescricaovendedorKeyPress
        end
        object edtlimitedesc: TDBEdit
          Left = 56
          Top = 152
          Width = 209
          Height = 21
          DataField = 'LIMITE_DESC'
          DataSource = dtmConexao.dtsConsultavendedor
          MaxLength = 15
          TabOrder = 1
          OnExit = edtlimitedescExit
          OnKeyPress = edtlimitedescKeyPress
        end
      end
      object pnl1: TPanel
        Left = 0
        Top = 372
        Width = 583
        Height = 41
        Align = alBottom
        TabOrder = 2
      end
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 369
    Width = 583
    Height = 69
    Align = alBottom
    TabOrder = 1
    object btnCancelarformaspgt: TButton
      Left = 392
      Top = 24
      Width = 100
      Height = 33
      Caption = 'Cancelar'
      TabOrder = 0
      OnClick = btnCancelarformaspgtClick
    end
    object btnSairUnidades: TButton
      Left = 224
      Top = 24
      Width = 100
      Height = 33
      Caption = 'Sair'
      TabOrder = 1
      OnClick = btnSairUnidadesClick
    end
    object btnCadastrarformaspgt: TButton
      Left = 43
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
      TabOrder = 2
      OnClick = btnCadastrarformaspgtClick
    end
  end
end
