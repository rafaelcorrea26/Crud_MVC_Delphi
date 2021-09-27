object frmConsultaVenda: TfrmConsultaVenda
  Left = 0
  Top = 0
  Caption = 'Consulta Venda'
  ClientHeight = 636
  ClientWidth = 648
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcConsultaVenda: TPageControl
    Left = 0
    Top = -1
    Width = 649
    Height = 641
    ActivePage = ts1
    TabOrder = 0
    object ts1: TTabSheet
      Caption = 'Consulta'
      object grdConsultaitens: TDBGrid
        Left = 0
        Top = 125
        Width = 641
        Height = 488
        Align = alClient
        DataSource = dtmConexao.dtsPesquisa
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object pnl1: TPanel
        Left = 0
        Top = 35
        Width = 641
        Height = 90
        Align = alTop
        TabOrder = 1
        object btnpesquisaconsultavenda: TButton
          Left = 392
          Top = 33
          Width = 75
          Height = 25
          Caption = 'Selecionar'
          TabOrder = 0
          OnClick = btnpesquisaconsultavendaClick
        end
        object edtConsultaVenda: TEdit
          Left = 43
          Top = 35
          Width = 326
          Height = 21
          TabOrder = 1
          OnChange = edtConsultaVendaChange
        end
      end
      object pnlConsulta: TPanel
        Left = 0
        Top = 0
        Width = 641
        Height = 35
        Align = alTop
        TabOrder = 2
        object Label1: TLabel
          Left = 1
          Top = 1
          Width = 639
          Height = 33
          Align = alClient
          Alignment = taCenter
          Caption = 'Consulta Venda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 181
          ExplicitHeight = 29
        end
      end
    end
  end
end
