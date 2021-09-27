object frmFormas_pagamentos: TfrmFormas_pagamentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Formas de pagamentos'
  ClientHeight = 513
  ClientWidth = 649
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
  object pgcFormas_pagamento: TPageControl
    Left = 0
    Top = 0
    Width = 649
    Height = 513
    ActivePage = tsConsultaFormapgt
    TabOrder = 0
    object tsConsultaFormapgt: TTabSheet
      Caption = 'Consulta'
      object pnlConsulta: TPanel
        Left = 0
        Top = 0
        Width = 641
        Height = 33
        Align = alTop
        TabOrder = 0
        object lblFromaspgt: TLabel
          Left = 112
          Top = 0
          Width = 346
          Height = 27
          Caption = 'Consulta formas de pagamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -23
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object pnlbtnsformapgt: TPanel
        Left = 0
        Top = 33
        Width = 641
        Height = 41
        Align = alTop
        TabOrder = 1
        object btnIncluirformaspgt: TButton
          Left = 12
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Incluir'
          TabOrder = 0
          OnClick = btnIncluirformaspgtClick
        end
        object btnSairformaspgt: TButton
          Left = 351
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Sair'
          TabOrder = 4
          OnClick = btnSairformaspgtClick
        end
        object btnAlterarformaspgt: TButton
          Left = 93
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Alterar'
          TabOrder = 1
          OnClick = btnAlterarformaspgtClick
        end
        object btnExcluirformaspgt: TButton
          Left = 174
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = btnExcluirformaspgtClick
        end
        object btnMostrarformaspgt: TButton
          Left = 255
          Top = 4
          Width = 90
          Height = 25
          Caption = 'Visualizar todas'
          TabOrder = 3
          OnClick = btnMostrarformaspgtClick
        end
      end
      object pnledtformapgt: TPanel
        Left = 0
        Top = 74
        Width = 641
        Height = 127
        Align = alTop
        TabOrder = 3
        object lblbuscarformaspgt: TLabel
          Left = 40
          Top = 45
          Width = 32
          Height = 13
          Caption = 'Buscar'
        end
        object rgformaspgt: TRadioGroup
          Left = 320
          Top = 0
          Width = 261
          Height = 121
          Caption = 'Filtro formas de pagamento'
          ItemIndex = 0
          Items.Strings = (
            'Descri'#231#227'o'
            'C'#243'digo')
          TabOrder = 1
          OnClick = rgformaspgtClick
        end
        object edtBuscarformaspgt: TEdit
          Left = 40
          Top = 64
          Width = 185
          Height = 21
          TabOrder = 0
          OnChange = edtBuscarformaspgtChange
        end
      end
      object grdFormaspgt: TDBGrid
        Left = 0
        Top = 201
        Width = 641
        Height = 284
        Align = alClient
        DataSource = dtmConexao.dtsConsultaFormaspgt
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = grdFormaspgtDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 250
            Visible = True
          end>
      end
    end
    object tsCadastroFormasPGT: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      object pnlCadastro: TPanel
        Left = 0
        Top = 0
        Width = 641
        Height = 41
        Align = alTop
        TabOrder = 0
        object lblCadastrounidades: TLabel
          Left = 1
          Top = 1
          Width = 639
          Height = 29
          Align = alTop
          Alignment = taCenter
          Caption = 'Cadastro de formas de pagamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 394
        end
      end
      object pnledtformaspgt: TPanel
        Left = 0
        Top = 41
        Width = 641
        Height = 376
        Align = alTop
        TabOrder = 1
        object lblDescricaoformaspgt: TLabel
          Left = 120
          Top = 127
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
        object edtDescricaoformapgt: TDBEdit
          Left = 120
          Top = 152
          Width = 209
          Height = 21
          DataField = 'DESCRICAO'
          DataSource = dtmConexao.dtsConsultaFormaspgt
          MaxLength = 45
          TabOrder = 0
          OnExit = edtDescricaoformapgtExit
          OnKeyPress = edtDescricaoformapgtKeyPress
        end
      end
      object pnl1: TPanel
        Left = 0
        Top = 444
        Width = 641
        Height = 41
        Align = alBottom
        TabOrder = 2
        object btnCancelarformaspgt: TButton
          Left = 424
          Top = 0
          Width = 100
          Height = 33
          Caption = 'Cancelar'
          TabOrder = 0
          OnClick = btnCancelarformaspgtClick
        end
        object btnSairUnidades: TButton
          Left = 240
          Top = 0
          Width = 100
          Height = 33
          Caption = 'Sair'
          TabOrder = 1
          OnClick = btnSairUnidadesClick
        end
        object btnCadastrarformaspgt: TButton
          Left = 51
          Top = 0
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
  end
end
