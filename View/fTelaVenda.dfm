object frmTelaVenda: TfrmTelaVenda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Tela de Vendas'
  ClientHeight = 660
  ClientWidth = 1224
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcTelaVenda: TPageControl
    Left = 0
    Top = 0
    Width = 1224
    Height = 660
    ActivePage = tspgctelaconsultavenda
    Align = alClient
    TabOrder = 0
    object tsTelaVenda: TTabSheet
      Caption = 'Venda'
      OnExit = tsTelaVendaExit
      OnShow = tsTelaVendaShow
      object pnlCadastro: TPanel
        Left = 0
        Top = 0
        Width = 1216
        Height = 33
        Align = alTop
        TabOrder = 0
        object lblVenda: TLabel
          Left = 278
          Top = 0
          Width = 157
          Height = 25
          Caption = 'Tela de Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object pnlbtnsvenda: TPanel
        Left = 0
        Top = 567
        Width = 1216
        Height = 65
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Shape1: TShape
          Left = 831
          Top = 9
          Width = 330
          Height = 49
        end
        object Label1: TLabel
          Left = 843
          Top = 16
          Width = 163
          Height = 33
          Caption = 'Total Bruto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbltotalbruto: TLabel
          Left = 1012
          Top = 18
          Width = 53
          Height = 29
          Caption = '0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblDesconto: TLabel
          Left = 374
          Top = 2
          Width = 63
          Height = 16
          Caption = 'Desconto $'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbldescontoporcento: TLabel
          Left = 231
          Top = 2
          Width = 68
          Height = 16
          Caption = 'Desconto %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object shpfundototal: TShape
          Left = 528
          Top = 9
          Width = 285
          Height = 49
        end
        object Total: TLabel
          Left = 543
          Top = 14
          Width = 79
          Height = 33
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTotal: TLabel
          Left = 628
          Top = 17
          Width = 53
          Height = 29
          Caption = '0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnConfirmafinalvenda: TButton
          Left = 19
          Top = 24
          Width = 98
          Height = 31
          Caption = 'Finalizar venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btnConfirmafinalvendaClick
        end
        object btnsairfinalvenda: TButton
          Left = 123
          Top = 24
          Width = 75
          Height = 31
          Caption = 'Sair'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnsairfinalvendaClick
        end
        object edttotalfinal: TDBEdit
          Left = 19
          Top = -9
          Width = 121
          Height = 27
          DataField = 'TOTAL'
          DataSource = dtmConexao.dtsConsultavenda
          Enabled = False
          TabOrder = 2
          Visible = False
        end
        object edtDESCONTO: TDBEdit
          Left = 374
          Top = 27
          Width = 121
          Height = 27
          DataField = 'VALOR_DESCONTO'
          DataSource = dtmConexao.dtsConsultavenda
          TabOrder = 3
          OnExit = edtDESCONTOExit
          OnKeyPress = edtDESCONTOKeyPress
        end
        object edtdescontoporcento: TDBEdit
          Left = 231
          Top = 27
          Width = 121
          Height = 27
          DataField = 'PERCENTUAL_DESCONTO'
          DataSource = dtmConexao.dtsConsultavenda
          MaxLength = 3
          TabOrder = 4
          OnExit = edtdescontoporcentoExit
          OnKeyPress = edtdescontoporcentoKeyPress
        end
      end
      object pnl1: TPanel
        Left = 0
        Top = 217
        Width = 1216
        Height = 151
        Align = alTop
        TabOrder = 2
        object lbltotalproduto: TLabel
          Left = 262
          Top = 26
          Width = 65
          Height = 16
          Caption = 'Quantidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object lblquantidadeproduto: TLabel
          Left = 516
          Top = 26
          Width = 96
          Height = 16
          Caption = 'Total Produto R$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object lblPrecoUnit: TLabel
          Left = 389
          Top = 26
          Width = 80
          Height = 16
          Caption = 'Pre'#231'o Unit'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object lblemissao: TLabel
          Left = 662
          Top = 78
          Width = 95
          Height = 16
          Caption = 'Data de Emiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object lblprodutovenda: TLabel
          Left = 5
          Top = 26
          Width = 114
          Height = 16
          Caption = 'Selecione o produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object btnprodutovenda: TSpeedButton
          Left = 132
          Top = 48
          Width = 23
          Height = 22
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFE1E1E1
            FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFC4C4C4000000747474FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEB444444
            000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6515151000000969696FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FCFCFC616161000000A6A6A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707070000000B3B3B3FF
            FFFFFFFFFFEFEFEFDBDBDBE8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF7F7F7F161616D0D0D07878786363636C6C6C6161616262
            62D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5B544
            44449292927A7A7A5C5C5C8F8F8FAEAEAE414141C6C6C6FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF7272729696963838382A2A2AACACACE2E2E2FFFF
            FFD7D7D74C4C4CFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E16262626E
            6E6E282828F4F4F4FFFFFFFFFFFFFFFFFFFFFFFF727272D9D9D9FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFC0C0C0747474464646C1C1C1FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF9C9C9CC6C6C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCD66666688
            8888F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C8C8CCCCCCCFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF7F7F74E4E4ECECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF515151ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A954
            5454F3F3F3FFFFFFFFFFFFFFFFFFFFFFFF7474747E7E7EFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999994D4D4D939393B4B4B49F9F9F5959
            59777777FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFE8E8E8B6B6B6A4A4A4AFAFAFDCDCDCFFFFFFFFFFFFFFFFFF}
          Visible = False
          OnClick = btnprodutovendaClick
        end
        object lblShowProduto: TLabel
          Left = 5
          Top = 75
          Width = 44
          Height = 16
          Caption = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object edtQUANTIDADEVenda: TDBEdit
          Left = 262
          Top = 48
          Width = 121
          Height = 21
          DataField = 'QUANTIDADE'
          DataSource = dtmConexao.dtsVendaItens
          MaxLength = 15
          TabOrder = 1
          Visible = False
          OnExit = edtQUANTIDADEVendaExit
          OnKeyPress = edtQUANTIDADEVendaKeyPress
        end
        object edtValorTotal: TDBEdit
          Left = 516
          Top = 48
          Width = 121
          Height = 21
          DataField = 'VALOR_TOTAL'
          DataSource = dtmConexao.dtsVendaItens
          Enabled = False
          MaxLength = 15
          TabOrder = 3
          Visible = False
        end
        object edtValorUnit: TDBEdit
          Left = 389
          Top = 48
          Width = 121
          Height = 21
          DataField = 'VALOR_UNITARIO'
          DataSource = dtmConexao.dtsVendaItens
          MaxLength = 15
          TabOrder = 2
          Visible = False
          OnExit = edtValorUnitExit
          OnKeyPress = edtValorUnitKeyPress
        end
        object btnCONFIRMARPRODUTO: TButton
          Left = 236
          Top = 98
          Width = 75
          Height = 25
          Caption = 'Confirmar'
          Enabled = False
          TabOrder = 4
          Visible = False
          OnClick = btnCONFIRMARPRODUTOClick
          OnKeyPress = btnCONFIRMARPRODUTOKeyPress
        end
        object btncancelarproduto: TButton
          Left = 398
          Top = 98
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 5
          Visible = False
          OnClick = btncancelarprodutoClick
        end
        object btnExcluirproduto: TButton
          Left = 479
          Top = 98
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 6
          Visible = False
          OnClick = btnExcluirprodutoClick
        end
        object edtEMISSAO: TDBEdit
          Left = 662
          Top = 100
          Width = 121
          Height = 21
          DataField = 'EMISSAO'
          DataSource = dtmConexao.dtsConsultavenda
          Enabled = False
          TabOrder = 7
          Visible = False
        end
        object edtProdutoVenda: TDBEdit
          Left = 5
          Top = 48
          Width = 121
          Height = 21
          DataField = 'ID_PRODUTO'
          DataSource = dtmConexao.dtsVendaItens
          MaxLength = 99
          TabOrder = 0
          Visible = False
          OnExit = edtProdutoVendaExit
          OnKeyPress = edtProdutoVendaKeyPress
        end
        object btnInserir: TButton
          Left = 317
          Top = 98
          Width = 75
          Height = 25
          Caption = 'Inserir'
          Enabled = False
          TabOrder = 8
          Visible = False
          OnClick = btnInserirClick
          OnKeyPress = btnInserirKeyPress
        end
        object edtTotalBruto: TDBEdit
          Left = 789
          Top = 100
          Width = 121
          Height = 21
          DataField = 'TOTAL_BRUTO'
          DataSource = dtmConexao.dtsConsultavenda
          TabOrder = 9
          Visible = False
        end
      end
      object pnl5: TPanel
        Left = 0
        Top = 33
        Width = 1216
        Height = 184
        Align = alTop
        TabOrder = 3
        object lblClienteVenda: TLabel
          Left = 51
          Top = 12
          Width = 39
          Height = 16
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblFormadepgt: TLabel
          Left = 49
          Top = 76
          Width = 123
          Height = 16
          Caption = 'Forma de pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object btnpesquisaclientevenda: TSpeedButton
          Left = 178
          Top = 34
          Width = 23
          Height = 22
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFE1E1E1
            FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFC4C4C4000000747474FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEB444444
            000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6515151000000969696FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FCFCFC616161000000A6A6A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707070000000B3B3B3FF
            FFFFFFFFFFEFEFEFDBDBDBE8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF7F7F7F161616D0D0D07878786363636C6C6C6161616262
            62D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5B544
            44449292927A7A7A5C5C5C8F8F8FAEAEAE414141C6C6C6FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF7272729696963838382A2A2AACACACE2E2E2FFFF
            FFD7D7D74C4C4CFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E16262626E
            6E6E282828F4F4F4FFFFFFFFFFFFFFFFFFFFFFFF727272D9D9D9FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFC0C0C0747474464646C1C1C1FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF9C9C9CC6C6C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCD66666688
            8888F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C8C8CCCCCCCFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF7F7F74E4E4ECECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF515151ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A954
            5454F3F3F3FFFFFFFFFFFFFFFFFFFFFFFF7474747E7E7EFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999994D4D4D939393B4B4B49F9F9F5959
            59777777FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFE8E8E8B6B6B6A4A4A4AFAFAFDCDCDCFFFFFFFFFFFFFFFFFF}
          OnClick = btnpesquisaclientevendaClick
        end
        object btnpesquisaformadepgt: TSpeedButton
          Left = 178
          Top = 98
          Width = 23
          Height = 22
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFE1E1E1
            FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFC4C4C4000000747474FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEB444444
            000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6515151000000969696FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FCFCFC616161000000A6A6A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707070000000B3B3B3FF
            FFFFFFFFFFEFEFEFDBDBDBE8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF7F7F7F161616D0D0D07878786363636C6C6C6161616262
            62D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5B544
            44449292927A7A7A5C5C5C8F8F8FAEAEAE414141C6C6C6FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF7272729696963838382A2A2AACACACE2E2E2FFFF
            FFD7D7D74C4C4CFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E16262626E
            6E6E282828F4F4F4FFFFFFFFFFFFFFFFFFFFFFFF727272D9D9D9FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFC0C0C0747474464646C1C1C1FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF9C9C9CC6C6C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCD66666688
            8888F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C8C8CCCCCCCFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF7F7F74E4E4ECECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF515151ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A954
            5454F3F3F3FFFFFFFFFFFFFFFFFFFFFFFF7474747E7E7EFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999994D4D4D939393B4B4B49F9F9F5959
            59777777FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFE8E8E8B6B6B6A4A4A4AFAFAFDCDCDCFFFFFFFFFFFFFFFFFF}
          OnClick = btnpesquisaformadepgtClick
        end
        object lblShowCliente: TLabel
          Left = 207
          Top = 34
          Width = 39
          Height = 16
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblShowFormadepgt: TLabel
          Left = 207
          Top = 98
          Width = 123
          Height = 16
          Caption = 'Forma de pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblvendedor: TLabel
          Left = 426
          Top = 12
          Width = 55
          Height = 16
          Caption = 'Vendedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object btnPESQUISARVENDEDOR: TSpeedButton
          Left = 555
          Top = 34
          Width = 23
          Height = 22
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFE1E1E1
            FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFC4C4C4000000747474FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEB444444
            000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6515151000000969696FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FCFCFC616161000000A6A6A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707070000000B3B3B3FF
            FFFFFFFFFFEFEFEFDBDBDBE8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF7F7F7F161616D0D0D07878786363636C6C6C6161616262
            62D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5B544
            44449292927A7A7A5C5C5C8F8F8FAEAEAE414141C6C6C6FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF7272729696963838382A2A2AACACACE2E2E2FFFF
            FFD7D7D74C4C4CFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E16262626E
            6E6E282828F4F4F4FFFFFFFFFFFFFFFFFFFFFFFF727272D9D9D9FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFC0C0C0747474464646C1C1C1FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF9C9C9CC6C6C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCD66666688
            8888F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C8C8CCCCCCCFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF7F7F74E4E4ECECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF515151ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A954
            5454F3F3F3FFFFFFFFFFFFFFFFFFFFFFFF7474747E7E7EFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999994D4D4D939393B4B4B49F9F9F5959
            59777777FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFE8E8E8B6B6B6A4A4A4AFAFAFDCDCDCFFFFFFFFFFFFFFFFFF}
          OnClick = btnPESQUISARVENDEDORClick
        end
        object lbl3: TLabel
          Left = 426
          Top = 76
          Width = 67
          Height = 16
          Caption = 'Observa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblShowVendedor: TLabel
          Left = 600
          Top = 34
          Width = 55
          Height = 16
          Caption = 'Vendedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtclientevenda: TDBEdit
          Left = 51
          Top = 34
          Width = 121
          Height = 21
          DataField = 'ID_CLIENTE'
          DataSource = dtmConexao.dtsConsultavenda
          TabOrder = 0
          OnExit = edtclientevendaExit
          OnKeyPress = edtclientevendaKeyPress
        end
        object edtFormapgt: TDBEdit
          Left = 51
          Top = 98
          Width = 121
          Height = 21
          DataField = 'ID_FORMA_PAGAMENTO'
          DataSource = dtmConexao.dtsConsultavenda
          MaxLength = 49
          TabOrder = 2
          OnExit = edtFormapgtExit
          OnKeyPress = edtFormapgtKeyPress
        end
        object edtVendedorvenda: TDBEdit
          Left = 428
          Top = 34
          Width = 121
          Height = 21
          DataField = 'ID_VENDEDOR'
          DataSource = dtmConexao.dtsConsultavenda
          MaxLength = 49
          TabOrder = 1
          OnExit = edtVendedorvendaExit
          OnKeyPress = edtVendedorvendaKeyPress
        end
        object edtOBSvenda: TDBEdit
          Left = 426
          Top = 98
          Width = 209
          Height = 21
          DataField = 'OBSERVACAO'
          DataSource = dtmConexao.dtsConsultavenda
          MaxLength = 99
          TabOrder = 3
          OnKeyPress = edtOBSvendaKeyPress
        end
        object btn1: TButton
          Left = 280
          Top = 143
          Width = 75
          Height = 25
          Caption = 'Confirmar'
          TabOrder = 4
          OnClick = btn1Click
        end
        object btncancelarvenda: TButton
          Left = 361
          Top = 143
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 5
          OnClick = btncancelarvendaClick
        end
      end
      object grdvenda: TDBGrid
        Left = 0
        Top = 368
        Width = 1216
        Height = 199
        Align = alClient
        DataSource = dtmConexao.dtsVendaItens
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_VENDA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PRODUTO_DESCRICAO'
            Title.Caption = 'Descri'#231#227'o do produto'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Title.Caption = 'Quantidade'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_UNITARIO'
            Title.Caption = 'Valor Unit'#225'rio'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_TOTAL'
            Title.Caption = 'Valor Total'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL_BRUTO'
            Title.Caption = 'Total Bruto'
            Visible = True
          end>
      end
    end
    object tspgctelaconsultavenda: TTabSheet
      Caption = 'Consulta Venda'
      ImageIndex = 1
      OnShow = tspgctelaconsultavendaShow
      object lblconsultavendas: TLabel
        Left = 24
        Top = 112
        Width = 3
        Height = 13
      end
      object pnlConsulta: TPanel
        Left = 0
        Top = 0
        Width = 1216
        Height = 41
        Align = alTop
        TabOrder = 0
        object lblconsultavenda: TLabel
          Left = 398
          Top = 8
          Width = 205
          Height = 25
          Caption = 'Consulta de Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object pnl3: TPanel
        Left = 0
        Top = 41
        Width = 1216
        Height = 219
        Align = alTop
        TabOrder = 1
        object lblbuscarvendas: TLabel
          Left = 172
          Top = 81
          Width = 70
          Height = 13
          Caption = 'Buscar Vendas'
        end
        object edtBuscarVendas: TEdit
          Left = 172
          Top = 100
          Width = 282
          Height = 21
          TabOrder = 0
          OnChange = edtBuscarVendasChange
        end
      end
      object grdConsultaVendas: TDBGrid
        Left = 0
        Top = 260
        Width = 1216
        Height = 372
        Align = alClient
        DataSource = dtmConexao.dtsConsultavenda
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = grdConsultaVendasDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIENTE_NOME'
            Title.Caption = 'Cliente'
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Title.Caption = 'Valor total com desconto'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_DESCONTO'
            Title.Caption = 'Valor de desconto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL_BRUTO'
            Title.Caption = 'Total bruto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENDEDOR_NOME'
            Title.Caption = 'Vendedor'
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FORMA_DESCRICAO'
            Title.Caption = 'Forma de pagamento'
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMISSAO'
            Title.Caption = 'Emiss'#227'o'
            Width = 60
            Visible = True
          end>
      end
      object pnl4: TPanel
        Left = -4
        Top = 47
        Width = 1117
        Height = 34
        TabOrder = 3
        object btn2: TButton
          Left = 380
          Top = 0
          Width = 74
          Height = 25
          Caption = 'Excluir'
          TabOrder = 0
          OnClick = btn2Click
        end
        object btn4: TButton
          Left = 214
          Top = 0
          Width = 74
          Height = 25
          Caption = 'Incluir'
          TabOrder = 1
          OnClick = btn4Click
        end
        object btn5: TButton
          Left = 472
          Top = 0
          Width = 82
          Height = 25
          Caption = 'Visualizar Todas'
          TabOrder = 2
          OnClick = btn5Click
        end
        object btnsairconsultavendas: TButton
          Left = 560
          Top = 0
          Width = 74
          Height = 25
          Caption = 'Sair'
          TabOrder = 3
          OnClick = btnsairconsultavendasClick
        end
      end
      object rgConsultaVendas: TRadioGroup
        Left = 672
        Top = 112
        Width = 281
        Height = 121
        Caption = 'Filtro de vendas'
        ItemIndex = 0
        Items.Strings = (
          'Cliente'
          'Vendedor'
          'Forma de pagamento'
          'ID')
        TabOrder = 4
        OnClick = rgConsultaVendasClick
      end
      object btn3: TButton
        Left = 290
        Top = 47
        Width = 74
        Height = 25
        Caption = 'Alterar'
        TabOrder = 5
        OnClick = btn3Click
      end
    end
  end
end
