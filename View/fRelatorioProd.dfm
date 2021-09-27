object frmRelatorioProd: TfrmRelatorioProd
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Relat'#243'rio de produtos'
  ClientHeight = 563
  ClientWidth = 722
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCadastro: TPanel
    Left = 0
    Top = 0
    Width = 722
    Height = 57
    Align = alTop
    TabOrder = 0
    object lblrelprod: TLabel
      Left = 184
      Top = 23
      Width = 204
      Height = 29
      Caption = 'Relat'#243'rio de produtos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnledts: TPanel
    Left = 0
    Top = 57
    Width = 722
    Height = 431
    Align = alClient
    TabOrder = 1
    object lbldataini: TLabel
      Left = 40
      Top = 61
      Width = 51
      Height = 13
      Caption = 'Data inicial'
    end
    object lbldatefin: TLabel
      Left = 40
      Top = 129
      Width = 48
      Height = 13
      Caption = 'Data Final'
    end
    object lblOrdem: TLabel
      Left = 360
      Top = 51
      Width = 57
      Height = 23
      Caption = 'Ordem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object rgrelprod: TRadioGroup
      Left = 360
      Top = 80
      Width = 185
      Height = 105
      Items.Strings = (
        'ID'
        'Descri'#231#227'o')
      TabOrder = 0
    end
    object chkDescrescente: TCheckBox
      Left = 360
      Top = 208
      Width = 97
      Height = 17
      Caption = 'Descrescente'
      TabOrder = 1
    end
    object dtDataInicial: TDateTimePicker
      Left = 40
      Top = 80
      Width = 186
      Height = 21
      Date = 43430.000000000000000000
      Time = 0.661092777780140800
      TabOrder = 2
      OnKeyPress = dtDataInicialKeyPress
    end
    object dtDataFinal: TDateTimePicker
      Left = 40
      Top = 148
      Width = 186
      Height = 21
      Date = 43430.000000000000000000
      Time = 0.661313240736490100
      TabOrder = 3
      OnExit = dtDataFinalExit
      OnKeyPress = dtDataFinalKeyPress
    end
  end
  object pnlbtsrel: TPanel
    Left = 0
    Top = 488
    Width = 722
    Height = 75
    Align = alBottom
    TabOrder = 2
    object btnVisualizarRel: TButton
      Left = 24
      Top = 8
      Width = 75
      Height = 33
      Caption = 'Visualizar'
      TabOrder = 0
      OnClick = btnVisualizarRelClick
    end
    object btnSairRel: TButton
      Left = 129
      Top = 8
      Width = 75
      Height = 33
      Caption = 'Sair'
      TabOrder = 1
      OnClick = btnSairRelClick
    end
  end
  object pgcRelProd: TPageControl
    Left = 0
    Top = 0
    Width = 674
    Height = 25
    ActivePage = tsRelProd
    TabOrder = 3
    object tsRelProd: TTabSheet
      Caption = 'Relat'#243'rio de Produtos'
    end
  end
end
