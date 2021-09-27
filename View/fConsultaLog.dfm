object frmConsultaLog: TfrmConsultaLog
  Left = 0
  Top = 0
  Caption = 'Consulta de log'
  ClientHeight = 549
  ClientWidth = 819
  Color = clBtnFace
  DefaultMonitor = dmDesktop
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
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 813
    Height = 543
    ActivePage = tgConsultaLog
    Align = alClient
    TabOrder = 0
    object tgConsultaLog: TTabSheet
      Caption = 'Consulta Log'
      object panel1: TPanel
        Left = 0
        Top = 41
        Width = 805
        Height = 474
        Align = alClient
        Caption = 'panel1'
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 1
          Top = 113
          Width = 803
          Height = 360
          Align = alClient
          DataSource = dtmConexao.dtsBuscaLog
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'USUARIO_LOG'
              Title.Caption = 'Usu'#225'rio'
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ROTINA_LOG'
              Title.Caption = 'Rotina do sistema'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ACAO_LOG'
              Title.Caption = 'A'#231#227'o'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IP_LOG'
              Title.Caption = 'IP'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PC_LOG'
              Title.Caption = 'PC'
              Width = 160
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_LOG'
              Title.Caption = 'Data / Hora'
              Width = 160
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 803
          Height = 112
          Align = alTop
          TabOrder = 1
          object Buscar: TLabel
            Left = 19
            Top = 29
            Width = 32
            Height = 13
            Caption = 'Buscar'
          end
          object edtBuscaLog: TEdit
            Left = 19
            Top = 48
            Width = 281
            Height = 21
            TabOrder = 0
            OnChange = edtBuscaLogChange
          end
          object rgFiltroLogs: TRadioGroup
            Left = 360
            Top = 8
            Width = 321
            Height = 82
            Caption = 'Filtro de Logs'
            ItemIndex = 0
            Items.Strings = (
              'Usu'#225'rio'
              'Rotina')
            TabOrder = 1
          end
          object btnImprimirLog: TButton
            Left = 713
            Top = 44
            Width = 75
            Height = 25
            Caption = 'Imprimir'
            TabOrder = 2
            OnClick = btnImprimirLogClick
          end
        end
      end
      object pnlConsulta: TPanel
        Left = 0
        Top = 0
        Width = 805
        Height = 41
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 1
          Top = 1
          Width = 803
          Height = 39
          Align = alClient
          Alignment = taCenter
          Caption = 'Consulta de log'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 182
          ExplicitHeight = 29
        end
      end
    end
  end
end
