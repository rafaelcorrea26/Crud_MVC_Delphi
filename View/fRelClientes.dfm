object frmRelClientes: TfrmRelClientes
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de clientes'
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
  object pnlCadastro: TPanel
    Left = 0
    Top = 0
    Width = 583
    Height = 38
    Align = alTop
    TabOrder = 0
    object lblrelprod: TLabel
      Left = 144
      Top = 3
      Width = 191
      Height = 29
      Caption = 'Relat'#243'rio de clientes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnlrelclientesbtns: TPanel
    Left = 0
    Top = 38
    Width = 583
    Height = 311
    Align = alClient
    TabOrder = 1
    object lblDataNascIni: TLabel
      Left = 54
      Top = 69
      Width = 111
      Height = 13
      Caption = 'Data de cadastro inicial'
    end
    object lblDataNascFin: TLabel
      Left = 54
      Top = 133
      Width = 106
      Height = 13
      Caption = 'Data de cadastro final'
    end
    object lblRelOrdemClientes: TLabel
      Left = 368
      Top = 39
      Width = 64
      Height = 23
      Caption = 'Ordem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dtpDataNascIni: TDateTimePicker
      Left = 54
      Top = 88
      Width = 186
      Height = 21
      Date = 43430.000000000000000000
      Time = 0.670759004628052900
      TabOrder = 0
      OnKeyPress = dtpDataNascIniKeyPress
    end
    object dtpDataNascFin: TDateTimePicker
      Left = 54
      Top = 152
      Width = 186
      Height = 21
      Date = 43430.000000000000000000
      Time = 0.671049571763433100
      TabOrder = 1
      OnExit = dtpDataNascFinExit
      OnKeyPress = dtpDataNascFinKeyPress
    end
    object rgRelClientes: TRadioGroup
      Left = 368
      Top = 68
      Width = 185
      Height = 105
      ItemIndex = 0
      Items.Strings = (
        'ID'
        'Descri'#231#227'o')
      TabOrder = 2
    end
    object chkDescrescenteClientes: TCheckBox
      Left = 368
      Top = 200
      Width = 97
      Height = 17
      Caption = 'Descrescente'
      TabOrder = 3
    end
  end
  object pnlrelclientesvisualizar: TPanel
    Left = 0
    Top = 349
    Width = 583
    Height = 89
    Align = alBottom
    TabOrder = 2
    object btnVisualizarRelClientes: TButton
      Left = 54
      Top = 32
      Width = 83
      Height = 33
      Caption = 'Visualizar'
      TabOrder = 0
      OnClick = btnVisualizarRelClientesClick
    end
    object btnSairRelClientes: TButton
      Left = 160
      Top = 32
      Width = 80
      Height = 33
      Caption = 'Sair'
      TabOrder = 1
      OnClick = btnSairRelClientesClick
    end
  end
end
