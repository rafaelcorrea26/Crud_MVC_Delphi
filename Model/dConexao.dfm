object dtmConexao: TdtmConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 480
  Width = 735
  object SistemaSimplesConnection: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Database=C:\backup RAFAEL 2019\MC_Bancos_Desenvolvimento'
      'Password=masterkey'
      'Server=localhost'
      'DriverID=FB')
    LoginPrompt = False
    Left = 55
    Top = 3
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files (x86)\Firebird\Firebird_2_5\bin\fbclient.dll'
    Left = 175
    Top = 3
  end
  object qryConsultaProdutos: TFDQuery
    Connection = SistemaSimplesConnection
    SQL.Strings = (
      'SELECT'
      'PRODUTOS.ID,'
      'PRODUTOS.descricao,'
      'PRODUTOS.id_unidade,         '
      'PRODUTOS.COD_BARRAS,   '
      'PRODUTOS.PRECO_VISTA,  '
      'PRODUTOS.PRECO_PRAZO,  '
      'PRODUTOS.SALDO,'
      'UNIDADES.unidade,'
      'PRODUTOS.DATA_CAD'
      ''
      '         '
      'FROM PRODUTOS      '
      '    '
      'INNER JOIN UNIDADES                  '
      'ON (PRODUTOS.ID_UNIDADE = UNIDADES.ID)')
    Left = 55
    Top = 51
    object qryConsultaProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryConsultaProdutosID_UNIDADE: TIntegerField
      FieldName = 'ID_UNIDADE'
      Origin = 'ID_UNIDADE'
    end
    object qryConsultaProdutosCOD_BARRAS: TStringField
      FieldName = 'COD_BARRAS'
      Origin = 'COD_BARRAS'
    end
    object qryConsultaProdutosPRECO_VISTA: TBCDField
      FieldName = 'PRECO_VISTA'
      Origin = 'PRECO_VISTA'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object qryConsultaProdutosPRECO_PRAZO: TBCDField
      FieldName = 'PRECO_PRAZO'
      Origin = 'PRECO_PRAZO'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object qryConsultaProdutosSALDO: TBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object qryConsultaProdutosUNIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 6
    end
    object qryConsultaProdutosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryConsultaProdutosDATA_CAD: TDateField
      FieldName = 'DATA_CAD'
      Origin = 'DATA_CAD'
      EditMask = '!99/99/0000;1;_'
    end
  end
  object qryConsultaUnidades: TFDQuery
    OnPostError = qryConsultaUnidadesPostError
    OnUpdateError = qryConsultaUnidadesUpdateError
    OnReconcileError = qryConsultaUnidadesReconcileError
    Connection = SistemaSimplesConnection
    SQL.Strings = (
      'SELECT * FROM UNIDADES')
    Left = 55
    Top = 107
    object qryConsultaUnidadesUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      FixedChar = True
      Size = 6
    end
    object qryConsultaUnidadesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object qryConsultaUnidadesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object qryConsultaUsuario: TFDQuery
    Connection = SistemaSimplesConnection
    SQL.Strings = (
      'SELECT * FROM USUARIO')
    Left = 55
    Top = 155
    object qryConsultaUsuarioLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Size = 15
    end
    object qryConsultaUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 15
    end
    object qryConsultaUsuarioNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object qryConsultaUsuarioID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryConsultaUsuarioCADASTRO: TStringField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Visible = False
      Size = 10
    end
    object qryConsultaUsuarioCAD_PROD: TStringField
      FieldName = 'CAD_PROD'
      Origin = 'CAD_PROD'
      Visible = False
      Size = 10
    end
    object qryConsultaUsuarioCAD_UNID: TStringField
      FieldName = 'CAD_UNID'
      Origin = 'CAD_UNID'
      Visible = False
      Size = 10
    end
    object qryConsultaUsuarioCAD_USU: TStringField
      FieldName = 'CAD_USU'
      Origin = 'CAD_USU'
      Visible = False
      Size = 10
    end
    object qryConsultaUsuarioCAD_CLIENT: TStringField
      FieldName = 'CAD_CLIENT'
      Origin = 'CAD_CLIENT'
      Visible = False
      Size = 10
    end
    object qryConsultaUsuarioCAD_FORMAPGT: TStringField
      FieldName = 'CAD_FORMAPGT'
      Origin = 'CAD_FORMAPGT'
      Visible = False
      Size = 10
    end
    object qryConsultaUsuarioCAD_VENDEDOR: TStringField
      FieldName = 'CAD_VENDEDOR'
      Origin = 'CAD_VENDEDOR'
      Visible = False
      Size = 10
    end
    object qryConsultaUsuarioRELATORIO: TStringField
      FieldName = 'RELATORIO'
      Origin = 'RELATORIO'
      Visible = False
      Size = 10
    end
    object qryConsultaUsuarioREL_PROD: TStringField
      FieldName = 'REL_PROD'
      Origin = 'REL_PROD'
      Visible = False
      Size = 10
    end
    object qryConsultaUsuarioREL_CLIENT: TStringField
      FieldName = 'REL_CLIENT'
      Origin = 'REL_CLIENT'
      Visible = False
      Size = 10
    end
    object qryConsultaUsuarioVENDA: TStringField
      FieldName = 'VENDA'
      Origin = 'VENDA'
      Visible = False
      Size = 10
    end
    object qryConsultaUsuarioVENDA_VENDA: TStringField
      FieldName = 'VENDA_VENDA'
      Origin = 'VENDA_VENDA'
      Visible = False
      Size = 10
    end
    object qryConsultaUsuarioVENDA_CONSULT: TStringField
      FieldName = 'VENDA_CONSULT'
      Origin = 'VENDA_CONSULT'
      Visible = False
      Size = 10
    end
    object qryConsultaUsuarioLOG: TStringField
      FieldName = 'LOG'
      Origin = '"LOG"'
      Visible = False
      Size = 10
    end
    object qryConsultaUsuarioLOG_CONSULT: TStringField
      FieldName = 'LOG_CONSULT'
      Origin = 'LOG_CONSULT'
      Visible = False
      Size = 10
    end
    object qryConsultaUsuarioCONFIGURACAO: TStringField
      FieldName = 'CONFIGURACAO'
      Origin = 'CONFIGURACAO'
      Visible = False
      Size = 10
    end
  end
  object dtsConsultaProdutos: TDataSource
    DataSet = qryConsultaProdutos
    Left = 175
    Top = 51
  end
  object dtsConsultaUnidades: TDataSource
    DataSet = qryConsultaUnidades
    Left = 175
    Top = 107
  end
  object dtsConsultaUsuario: TDataSource
    DataSet = qryConsultaUsuario
    Left = 175
    Top = 155
  end
  object qryLogin: TFDQuery
    Connection = SistemaSimplesConnection
    SQL.Strings = (
      'SELECT * FROM USUARIO')
    Left = 55
    Top = 347
  end
  object dtsLogin: TDataSource
    DataSet = qryLogin
    Left = 175
    Top = 347
  end
  object frxReport1: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43425.361938449100000000
    ReportOptions.LastChange = 43878.672672974540000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 504
    Top = 8
    Datasets = <
      item
        DataSet = fdb_RelProd
        DataSetName = 'fdb_RelProd'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 204.094620000000000000
          Top = 15.118120000000000000
          Width = 283.464750000000000000
          Height = 56.692950000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Produtos')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'hh:mm am/pm'
          DisplayFormat.Kind = fkDateTime
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 139.842610000000000000
        Width = 740.409927000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 222.992270000000000000
        Width = 740.409927000000000000
        DataSet = fdb_RelProd
        DataSetName = 'fdb_RelProd'
        RowCount = 0
        object fdb_RelProdDESCRICAO: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 30.236240000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          DataField = 'DESCRICAO'
          DataSet = fdb_RelProd
          DataSetName = 'fdb_RelProd'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdb_RelProd."DESCRICAO"]')
        end
        object fdb_RelProdPRECO_VISTA: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 30.236240000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'PRECO_VISTA'
          DataSet = fdb_RelProd
          DataSetName = 'fdb_RelProd'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdb_RelProd."PRECO_VISTA"]')
        end
        object fdb_RelProdID: TfrxMemoView
          AllowVectorExport = True
          Top = 30.236240000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = fdb_RelProd
          DataSetName = 'fdb_RelProd'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdb_RelProd."ID"]')
        end
        object fdb_RelProdUNIDADE: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 30.236240000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'UNIDADE'
          DataSet = fdb_RelProd
          DataSetName = 'fdb_RelProd'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdb_RelProd."UNIDADE"]')
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779529999999990000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15000804
          Frame.Color = clNone
          Frame.Typ = []
        end
        object ID: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779529999999990000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ID')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 3.779529999999990000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15000804
          Frame.Color = clNone
          Frame.Typ = []
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 3.779529999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15000804
          Frame.Color = clNone
          Frame.Typ = []
        end
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 3.779529999999990000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15000804
          Frame.Color = clNone
          Frame.Typ = []
        end
        object Descricao: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 3.779529999999990000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object preco: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 3.779529999999990000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Pre'#231'o')
          ParentFont = False
        end
        object Un: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 3.779529999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Un')
          ParentFont = False
        end
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 3.779529999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15000804
          Frame.Color = clNone
          Frame.Typ = []
        end
        object fdb_RelProdSALDO: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 30.236240000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'SALDO'
          DataSet = fdb_RelProd
          DataSetName = 'fdb_RelProd'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdb_RelProd."SALDO"]')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 3.779529999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Saldo')
        end
        object Shape6: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 733.228820000000000000
          Height = 49.133890000000000000
          Frame.Typ = []
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 355.275820000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        object totalprodutos: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 11.338590000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total dos produtos:')
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 680.315400000000000000
          Top = 11.338590000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<fdb_RelProd."SALDO">,MasterData1)]')
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 11.338590000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 612.283860000000000000
          Top = 11.338590000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Saldo total:')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<fdb_RelProd."PRECO_VISTA">,MasterData1)]')
        end
        object Shape7: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 729.449290000000000000
          Height = 37.795300000000000000
          Frame.Typ = []
        end
      end
    end
  end
  object fdb_RelProd: TfrxDBDataset
    UserName = 'fdb_RelProd'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DESCRICAO=DESCRICAO'
      'ID_UNIDADE=ID_UNIDADE'
      'COD_BARRAS=COD_BARRAS'
      'PRECO_VISTA=PRECO_VISTA'
      'PRECO_PRAZO=PRECO_PRAZO'
      'SALDO=SALDO'
      'UNIDADE=UNIDADE'
      'DATA_CAD=DATA_CAD')
    DataSet = qryImpRelProd
    BCDToCurrency = False
    Left = 584
    Top = 8
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 279
    Top = 3
  end
  object qryConsultaClientes: TFDQuery
    Connection = SistemaSimplesConnection
    SQL.Strings = (
      'SELECT * FROM CLIENTES')
    Left = 55
    Top = 203
    object qryConsultaClientesCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Origin = 'CLI_UF'
      Size = 30
    end
    object qryConsultaClientesCLI_RG: TStringField
      FieldName = 'CLI_RG'
      Origin = 'CLI_RG'
      Size = 15
    end
    object qryConsultaClientesCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      Origin = 'CLI_CPF'
      Size = 15
    end
    object qryConsultaClientesCLI_TEL: TStringField
      FieldName = 'CLI_TEL'
      Origin = 'CLI_TEL'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object qryConsultaClientesCLI_CEL: TStringField
      FieldName = 'CLI_CEL'
      Origin = 'CLI_CEL'
      EditMask = '00\-000000000;1;_'
    end
    object qryConsultaClientesCLI_DATA_NASC: TDateField
      FieldName = 'CLI_DATA_NASC'
      Origin = 'CLI_DATA_NASC'
      OnSetText = qryConsultaClientesCLI_DATA_NASCSetText
      EditMask = '!99/99/0000;1;_'
    end
    object qryConsultaClientesCLI_DATA_CAD: TDateField
      FieldName = 'CLI_DATA_CAD'
      Origin = 'CLI_DATA_CAD'
      EditMask = '!99/99/0000;1;_'
    end
    object qryConsultaClientesCLI_SITUACAO: TStringField
      FieldName = 'CLI_SITUACAO'
      Origin = 'CLI_SITUACAO'
    end
    object qryConsultaClientesCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Origin = 'CLI_EMAIL'
      Size = 100
    end
    object qryConsultaClientesCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Origin = 'CLI_CEP'
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object qryConsultaClientesCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      Size = 100
    end
    object qryConsultaClientesCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Origin = 'CLI_ENDERECO'
      Size = 50
    end
    object qryConsultaClientesCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Origin = 'CLI_BAIRRO'
      Size = 100
    end
    object qryConsultaClientesCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Origin = 'CLI_CIDADE'
      Size = 100
    end
  end
  object dtsConsultaClientes: TDataSource
    DataSet = qryConsultaClientes
    Left = 175
    Top = 203
  end
  object qryImpRelProd: TFDQuery
    Connection = SistemaSimplesConnection
    SQL.Strings = (
      'SELECT'
      'PRODUTOS.ID,'
      'PRODUTOS.descricao,'
      'PRODUTOS.id_unidade,         '
      'PRODUTOS.COD_BARRAS,   '
      'PRODUTOS.PRECO_VISTA,  '
      'PRODUTOS.PRECO_PRAZO,  '
      'PRODUTOS.SALDO,'
      'UNIDADES.unidade,'
      'PRODUTOS.DATA_CAD'
      ''
      '         '
      'FROM PRODUTOS      '
      '    '
      'INNER JOIN UNIDADES                  '
      'ON (PRODUTOS.ID_UNIDADE = UNIDADES.ID)')
    Left = 673
    Top = 8
    object qryImpRelProdID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryImpRelProdDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryImpRelProdID_UNIDADE: TIntegerField
      FieldName = 'ID_UNIDADE'
      Origin = 'ID_UNIDADE'
    end
    object qryImpRelProdCOD_BARRAS: TStringField
      FieldName = 'COD_BARRAS'
      Origin = 'COD_BARRAS'
    end
    object qryImpRelProdPRECO_VISTA: TBCDField
      FieldName = 'PRECO_VISTA'
      Origin = 'PRECO_VISTA'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object qryImpRelProdPRECO_PRAZO: TBCDField
      FieldName = 'PRECO_PRAZO'
      Origin = 'PRECO_PRAZO'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object qryImpRelProdSALDO: TBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object qryImpRelProdUNIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 6
    end
    object qryImpRelProdDATA_CAD: TDateField
      FieldName = 'DATA_CAD'
      Origin = 'DATA_CAD'
    end
  end
  object frxReport2: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43430.690499768500000000
    ReportOptions.LastChange = 43878.672937546300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 504
    Top = 56
    Datasets = <
      item
        DataSet = fdb_RelClientes
        DataSetName = 'fdb_RelClientes'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 151.181200000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 56.692950000000000000
          Width = 453.543600000000000000
          Height = 56.692950000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -43
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            'Relat'#243'rio de clientes')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'mmmm dd, yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[date]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'hh:mm am/pm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[time]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 79.370130000000000000
        Top = 230.551330000000000000
        Width = 740.409927000000000000
        DataSet = fdb_RelClientes
        DataSetName = 'fdb_RelClientes'
        RowCount = 0
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15000804
          Frame.Color = clNone
          Frame.Typ = []
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 7.559060000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15000804
          Frame.Color = clNone
          Frame.Typ = []
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 7.559060000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15000804
          Frame.Color = clNone
          Frame.Typ = []
        end
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 7.559060000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15000804
          Frame.Color = clNone
          Frame.Typ = []
        end
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15000804
          Frame.Color = clNone
          Frame.Typ = []
        end
        object Shape6: TfrxShapeView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15000804
          Frame.Color = clNone
          Frame.Typ = []
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            'ID')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 7.559060000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 7.559060000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 7.559060000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            'Data de cadastro')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            'RG')
          ParentFont = False
        end
        object fdb_RelClientesCLI_ID: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'CLI_ID'
          DataSet = fdb_RelClientes
          DataSetName = 'fdb_RelClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[fdb_RelClientes."CLI_ID"]')
          ParentFont = False
        end
        object fdb_RelClientesCLI_NOME: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 37.795300000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          DataField = 'CLI_NOME'
          DataSet = fdb_RelClientes
          DataSetName = 'fdb_RelClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[fdb_RelClientes."CLI_NOME"]')
          ParentFont = False
        end
        object fdb_RelClientesCLI_TEL: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 37.795300000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'CLI_TEL'
          DataSet = fdb_RelClientes
          DataSetName = 'fdb_RelClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[fdb_RelClientes."CLI_TEL"]')
          ParentFont = False
        end
        object fdb_RelClientesCLI_DATA_CAD: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 37.795300000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'CLI_DATA_CAD'
          DataSet = fdb_RelClientes
          DataSetName = 'fdb_RelClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[fdb_RelClientes."CLI_DATA_CAD"]')
          ParentFont = False
        end
        object fdb_RelClientesCLI_CPF: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CLI_CPF'
          DataSet = fdb_RelClientes
          DataSetName = 'fdb_RelClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[fdb_RelClientes."CLI_CPF"]')
          ParentFont = False
        end
        object fdb_RelClientesCLI_RG: TfrxMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'CLI_RG'
          DataSet = fdb_RelClientes
          DataSetName = 'fdb_RelClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[fdb_RelClientes."CLI_RG"]')
          ParentFont = False
        end
        object Shape8: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 725.669760000000000000
          Height = 60.472480000000000000
          Frame.Typ = []
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 370.393940000000000000
        Width = 740.409927000000000000
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 11.338590000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            'Total de clientes:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 11.338590000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          ParentFont = False
        end
        object Shape7: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 725.669760000000000000
          Height = 30.236240000000000000
          Frame.Typ = []
        end
      end
    end
  end
  object qryImpRelClientes: TFDQuery
    Connection = SistemaSimplesConnection
    SQL.Strings = (
      'SELECT * FROM CLIENTES')
    Left = 673
    Top = 56
    object qryImpRelClientesCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Origin = 'CLI_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryImpRelClientesCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Origin = 'CLI_UF'
      Size = 30
    end
    object qryImpRelClientesCLI_RG: TStringField
      FieldName = 'CLI_RG'
      Origin = 'CLI_RG'
      Size = 15
    end
    object qryImpRelClientesCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      Origin = 'CLI_CPF'
      Size = 15
    end
    object qryImpRelClientesCLI_TEL: TStringField
      FieldName = 'CLI_TEL'
      Origin = 'CLI_TEL'
    end
    object qryImpRelClientesCLI_CEL: TStringField
      FieldName = 'CLI_CEL'
      Origin = 'CLI_CEL'
    end
    object qryImpRelClientesCLI_DATA_NASC: TDateField
      FieldName = 'CLI_DATA_NASC'
      Origin = 'CLI_DATA_NASC'
    end
    object qryImpRelClientesCLI_DATA_CAD: TDateField
      FieldName = 'CLI_DATA_CAD'
      Origin = 'CLI_DATA_CAD'
    end
    object qryImpRelClientesCLI_SITUACAO: TStringField
      FieldName = 'CLI_SITUACAO'
      Origin = 'CLI_SITUACAO'
    end
    object qryImpRelClientesCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Origin = 'CLI_EMAIL'
      Size = 100
    end
    object qryImpRelClientesCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Origin = 'CLI_CEP'
      Size = 10
    end
    object qryImpRelClientesCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      Size = 100
    end
    object qryImpRelClientesCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Origin = 'CLI_ENDERECO'
      Size = 50
    end
    object qryImpRelClientesCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Origin = 'CLI_BAIRRO'
      Size = 100
    end
    object qryImpRelClientesCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Origin = 'CLI_CIDADE'
      Size = 100
    end
  end
  object fdb_RelClientes: TfrxDBDataset
    UserName = 'fdb_RelClientes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CLI_ID=CLI_ID'
      'CLI_UF=CLI_UF'
      'CLI_RG=CLI_RG'
      'CLI_CPF=CLI_CPF'
      'CLI_TEL=CLI_TEL'
      'CLI_CEL=CLI_CEL'
      'CLI_DATA_NASC=CLI_DATA_NASC'
      'CLI_DATA_CAD=CLI_DATA_CAD'
      'CLI_SITUACAO=CLI_SITUACAO'
      'CLI_EMAIL=CLI_EMAIL'
      'CLI_CEP=CLI_CEP'
      'CLI_NOME=CLI_NOME'
      'CLI_ENDERECO=CLI_ENDERECO'
      'CLI_BAIRRO=CLI_BAIRRO'
      'CLI_CIDADE=CLI_CIDADE')
    DataSet = qryImpRelClientes
    BCDToCurrency = False
    Left = 584
    Top = 56
  end
  object qryConsultaFormaspgt: TFDQuery
    Connection = SistemaSimplesConnection
    SQL.Strings = (
      'SELECT * FROM FORMA_PAGAMENTO')
    Left = 55
    Top = 251
    object qryConsultaFormaspgtID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryConsultaFormaspgtDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
  end
  object qryConsultaVendedor: TFDQuery
    Connection = SistemaSimplesConnection
    SQL.Strings = (
      'select * from vendedores')
    Left = 55
    Top = 299
    object qryConsultaVendedorID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryConsultaVendedorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object qryConsultaVendedorLIMITE_DESC: TBCDField
      FieldName = 'LIMITE_DESC'
      Origin = 'LIMITE_DESC'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
  end
  object qryVenda: TFDQuery
    CachedUpdates = True
    Connection = SistemaSimplesConnection
    SchemaAdapter = FDSchemaAdapter1
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_VENDA_ID'
    UpdateOptions.KeyFields = 'ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT'
      'VENDA.ID,'
      'VENDA.ID_CLIENTE,'
      'VENDA.ID_VENDEDOR,         '
      'VENDA.ID_FORMA_PAGAMENTO,   '
      'VENDA.EMISSAO,  '
      'VENDA.OBSERVACAO,'
      'VENDA.TOTAL,'
      'VENDA.PERCENTUAL_DESCONTO,'
      'VENDA.VALOR_DESCONTO,'
      'VENDA.TOTAL_BRUTO,'
      ''
      'CLIENTES.CLI_Nome cliente_nome,'
      'FORMA_PAGAMENTO.Descricao forma_Descricao,'
      'VENDEDORES.Nome vendedor_nome'
      ''
      'FROM VENDA'
      '  '
      'INNER JOIN CLIENTES ON(VENDA.ID_CLIENTE = CLIENTES.CLI_ID)'
      
        'INNER JOIN FORMA_PAGAMENTO ON(VENDA.ID_FORMA_PAGAMENTO = FORMA_P' +
        'AGAMENTO.ID)'
      'INNER JOIN VENDEDORES ON(VENDA.ID_VENDEDOR = VENDEDORES.ID)')
    Left = 582
    Top = 282
    object qryVendaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryVendaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qryVendaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
    end
    object qryVendaID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
      Origin = 'ID_FORMA_PAGAMENTO'
    end
    object qryVendaEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object qryVendaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object qryVendaTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object qryVendaPERCENTUAL_DESCONTO: TBCDField
      FieldName = 'PERCENTUAL_DESCONTO'
      Origin = 'PERCENTUAL_DESCONTO'
      Precision = 18
    end
    object qryVendaVALOR_DESCONTO: TBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object qryVendaCLIENTE_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryVendaFORMA_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORMA_DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qryVendaVENDEDOR_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDEDOR_NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qryVendaTOTAL_BRUTO: TBCDField
      FieldName = 'TOTAL_BRUTO'
      Origin = 'TOTAL_BRUTO'
      Precision = 18
    end
  end
  object dtsConsultaFormaspgt: TDataSource
    DataSet = qryConsultaFormaspgt
    Left = 175
    Top = 251
  end
  object dtsConsultavendedor: TDataSource
    DataSet = qryConsultaVendedor
    Left = 175
    Top = 299
  end
  object dtsConsultavenda: TDataSource
    DataSet = qryVenda
    Left = 670
    Top = 282
  end
  object qryVendaItens: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'ID_VENDA'
    MasterSource = dtsConsultavenda
    MasterFields = 'ID'
    DetailFields = 'ID_VENDA'
    Connection = SistemaSimplesConnection
    SchemaAdapter = FDSchemaAdapter1
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_VENDA_ITENS_ID'
    UpdateOptions.KeyFields = 'ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT'
      'VENDA_ITENS.ID,'
      'VENDA_ITENS.ID_PRODUTO,'
      'VENDA_ITENS.ID_VENDA,         '
      'VENDA_ITENS.QUANTIDADE,   '
      'VENDA_ITENS.VALOR_UNITARIO,  '
      'VENDA_ITENS.VALOR_TOTAL,'
      ''
      '  '
      ''
      'PRODUTOS.Descricao Produto_Descricao'
      ''
      '         '
      'FROM VENDA_ITENS      '
      '    '
      
        'INNER JOIN PRODUTOS ON (VENDA_ITENS.ID_PRODUTO = PRODUTOS.ID)   ' +
        '              '
      'where VENDA_ITENS.ID_VENDA = :ID_VENDA')
    Left = 582
    Top = 330
    ParamData = <
      item
        Name = 'ID_VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryVendaItensID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryVendaItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object qryVendaItensID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
    end
    object qryVendaItensQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
    end
    object qryVendaItensVALOR_UNITARIO: TBCDField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object qryVendaItensVALOR_TOTAL: TBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object qryVendaItensPRODUTO_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
  end
  object dtsVendaItens: TDataSource
    DataSet = qryVendaItens
    Left = 670
    Top = 330
  end
  object FDSchemaAdapter1: TFDSchemaAdapter
    Left = 575
    Top = 206
  end
  object qryConsulta: TFDQuery
    Connection = SistemaSimplesConnection
    Left = 279
    Top = 52
  end
  object qryPesquisa: TFDQuery
    Connection = SistemaSimplesConnection
    Left = 279
    Top = 108
  end
  object dtsPesquisa: TDataSource
    DataSet = qryPesquisa
    Left = 343
    Top = 52
  end
  object frxReport3: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43441.684407511600000000
    ReportOptions.LastChange = 43878.673235787040000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 504
    Top = 102
    Datasets = <
      item
        DataSet = fdb_Relvenda_itens
        DataSetName = 'itens'
      end
      item
        DataSet = fdb_Relvenda
        DataSetName = 'venda'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 109.606370000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 41.574830000000000000
          Width = 370.393940000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -37
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de venda')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'mmmm dd, yyyy'
          DisplayFormat.Kind = fkDateTime
          Frame.Typ = []
          Memo.UTF8W = (
            '[date]')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 238.110390000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'hh:mm am/pm'
          DisplayFormat.Kind = fkDateTime
          Frame.Typ = []
          Memo.UTF8W = (
            '[time]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 166.299320000000000000
        Top = 188.976500000000000000
        Width = 740.409927000000000000
        DataSet = fdb_Relvenda
        DataSetName = 'venda'
        RowCount = 0
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Width = 740.787880000000000000
          Height = 166.299320000000000000
          Frame.Typ = []
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 56.692950000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15000804
          Frame.Color = clNone
          Frame.Typ = []
        end
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 56.692950000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15000804
          Frame.Color = clNone
          Frame.Typ = []
        end
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 109.606370000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15000804
          Frame.Color = clNone
          Frame.Typ = []
        end
        object frxDBDataset1ID_CLIENTE: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 79.370130000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          DataField = 'CLIENTE_NOME'
          DataSet = fdb_Relvenda
          DataSetName = 'venda'
          Frame.Typ = []
          Memo.UTF8W = (
            '[venda."CLIENTE_NOME"]')
        end
        object frxDBDataset1ID_VENDEDOR: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 83.149660000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          DataField = 'VENDEDOR_NOME'
          DataSet = fdb_Relvenda
          DataSetName = 'venda'
          Frame.Typ = []
          Memo.UTF8W = (
            '[venda."VENDEDOR_NOME"]')
        end
        object frxDBDataset1ID_FORMA_PAGAMENTO: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 139.842610000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DataField = 'FORMA_DESCRICAO'
          DataSet = fdb_Relvenda
          DataSetName = 'venda'
          Frame.Typ = []
          Memo.UTF8W = (
            '[venda."FORMA_DESCRICAO"]')
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 109.606370000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15000804
          Frame.Color = clNone
          Frame.Typ = []
        end
        object frxDBDataset1OBSERVACAO: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 136.063080000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'OBSERVACAO'
          DataSet = fdb_Relvenda
          DataSetName = 'venda'
          Frame.Typ = []
          Memo.UTF8W = (
            '[venda."OBSERVACAO"]')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 56.692950000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 56.692950000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 109.606370000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Forma de pagamento')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 109.606370000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Observa'#231#227'o')
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = fdb_Relvenda
          DataSetName = 'venda'
          Frame.Typ = []
          Memo.UTF8W = (
            '[venda."ID"]')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#250'mero da Venda')
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 377.953000000000000000
        Width = 740.409927000000000000
        DataSet = fdb_Relvenda_itens
        DataSetName = 'itens'
        RowCount = 0
        object Shape6: TfrxShapeView
          AllowVectorExport = True
          Width = 740.787880000000000000
          Height = 52.913420000000000000
          Frame.Typ = []
        end
        object Shape7: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15000804
          Frame.Color = clNone
          Frame.Typ = []
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o do produto')
        end
        object Shape8: TfrxShapeView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15000804
          Frame.Color = clNone
          Frame.Typ = []
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade')
        end
        object Shape9: TfrxShapeView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15000804
          Frame.Color = clNone
          Frame.Typ = []
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'R$/Unit')
        end
        object Shape10: TfrxShapeView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15000804
          Frame.Color = clNone
          Frame.Typ = []
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total')
        end
        object frxDBDataset1PRODUTO_DESCRICAO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          DataField = 'PRODUTO_DESCRICAO'
          DataSet = fdb_Relvenda_itens
          DataSetName = 'itens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[itens."PRODUTO_DESCRICAO"]')
        end
        object frxDBDataset1QUANTIDADE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 26.456710000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = fdb_Relvenda_itens
          DataSetName = 'itens'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[itens."QUANTIDADE"]')
        end
        object frxDBDataset1VALOR_UNITARIO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 26.456710000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_UNITARIO'
          DataSet = fdb_Relvenda_itens
          DataSetName = 'itens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[itens."VALOR_UNITARIO"]')
        end
        object frxDBDataset1VALOR_TOTAL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_TOTAL'
          DataSet = fdb_Relvenda_itens
          DataSetName = 'itens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[itens."VALOR_TOTAL"]')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 453.543600000000000000
        Width = 740.409927000000000000
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 308.134200000000000000
          Top = 7.000000000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total da nota com desconto:')
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 572.606680000000000000
          Top = 7.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Bruto:')
        end
        object vendaTOTAL_BRUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 647.874460000000000000
          Top = 7.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = fdb_Relvenda
          DataSetName = 'venda'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[venda."TOTAL_BRUTO"]')
        end
        object vendaTOTAL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 7.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = fdb_Relvenda
          DataSetName = 'venda'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[venda."TOTAL"]')
        end
      end
    end
  end
  object fdb_Relvenda: TfrxDBDataset
    UserName = 'venda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_CLIENTE=ID_CLIENTE'
      'ID_VENDEDOR=ID_VENDEDOR'
      'ID_FORMA_PAGAMENTO=ID_FORMA_PAGAMENTO'
      'EMISSAO=EMISSAO'
      'OBSERVACAO=OBSERVACAO'
      'TOTAL=TOTAL'
      'PERCENTUAL_DESCONTO=PERCENTUAL_DESCONTO'
      'VALOR_DESCONTO=VALOR_DESCONTO'
      'TOTAL_BRUTO=TOTAL_BRUTO'
      'CLIENTE_NOME=CLIENTE_NOME'
      'FORMA_DESCRICAO=FORMA_DESCRICAO'
      'VENDEDOR_NOME=VENDEDOR_NOME')
    DataSet = qryImpRelVenda
    BCDToCurrency = False
    Left = 584
    Top = 101
  end
  object qryImpRelVenda: TFDQuery
    Connection = SistemaSimplesConnection
    SQL.Strings = (
      'SELECT'
      'VENDA.ID,'
      'VENDA.ID_CLIENTE,'
      'VENDA.ID_VENDEDOR,         '
      'VENDA.ID_FORMA_PAGAMENTO,   '
      'VENDA.EMISSAO,  '
      'VENDA.OBSERVACAO,'
      'VENDA.TOTAL,'
      'VENDA.PERCENTUAL_DESCONTO,'
      'VENDA.VALOR_DESCONTO,'
      'VENDA.TOTAL_BRUTO,'
      ''
      'CLIENTES.CLI_Nome cliente_nome,'
      'FORMA_PAGAMENTO.Descricao forma_Descricao,'
      'VENDEDORES.Nome vendedor_nome'
      ''
      'FROM VENDA'
      '  '
      'INNER JOIN CLIENTES ON(VENDA.ID_CLIENTE = CLIENTES.CLI_ID)'
      
        'INNER JOIN FORMA_PAGAMENTO ON(VENDA.ID_FORMA_PAGAMENTO = FORMA_P' +
        'AGAMENTO.ID)'
      'INNER JOIN VENDEDORES ON(VENDA.ID_VENDEDOR = VENDEDORES.ID)')
    Left = 676
    Top = 100
  end
  object fdb_Relvenda_itens: TfrxDBDataset
    UserName = 'itens'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_PRODUTO=ID_PRODUTO'
      'ID_VENDA=ID_VENDA'
      'QUANTIDADE=QUANTIDADE'
      'VALOR_UNITARIO=VALOR_UNITARIO'
      'VALOR_TOTAL=VALOR_TOTAL'
      'PRODUTO_DESCRICAO=PRODUTO_DESCRICAO')
    DataSet = qryImpRelVenda_Itens
    BCDToCurrency = False
    Left = 583
    Top = 157
  end
  object qryImpRelVenda_Itens: TFDQuery
    MasterSource = dtsImpRelVenda
    MasterFields = 'ID'
    DetailFields = 'ID_VENDA'
    Connection = SistemaSimplesConnection
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT'
      'VENDA_ITENS.ID,'
      'VENDA_ITENS.ID_PRODUTO,'
      'VENDA_ITENS.ID_VENDA,         '
      'VENDA_ITENS.QUANTIDADE,   '
      'VENDA_ITENS.VALOR_UNITARIO,  '
      'VENDA_ITENS.VALOR_TOTAL,'
      '  '
      ''
      'PRODUTOS.Descricao Produto_Descricao'
      ''
      '         '
      'FROM VENDA_ITENS      '
      '    '
      
        'INNER JOIN PRODUTOS ON (VENDA_ITENS.ID_PRODUTO = PRODUTOS.ID)   ' +
        '              '
      'where VENDA_ITENS.ID_VENDA = :ID')
    Left = 677
    Top = 156
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 99
      end>
  end
  object dtsImpRelVenda: TDataSource
    DataSet = qryImpRelVenda
    Left = 672
    Top = 207
  end
  object qryLOG: TFDQuery
    Connection = SistemaSimplesConnection
    SQL.Strings = (
      'select * from log_Sistema')
    Left = 278
    Top = 158
    object qryLOGUSUARIO_LOG: TStringField
      FieldName = 'USUARIO_LOG'
      Origin = 'USUARIO_LOG'
      Size = 50
    end
    object qryLOGIP_LOG: TIntegerField
      FieldName = 'IP_LOG'
      Origin = 'IP_LOG'
    end
    object qryLOGPC_LOG: TStringField
      FieldName = 'PC_LOG'
      Origin = 'PC_LOG'
      Size = 50
    end
    object qryLOGDATA_LOG: TSQLTimeStampField
      FieldName = 'DATA_LOG'
      Origin = 'DATA_LOG'
    end
    object qryLOGROTINA_LOG: TStringField
      FieldName = 'ROTINA_LOG'
      Origin = 'ROTINA_LOG'
      Size = 50
    end
    object qryLOGACAO_LOG: TStringField
      FieldName = 'ACAO_LOG'
      Origin = 'ACAO_LOG'
      Size = 50
    end
  end
  object dtsLOG: TDataSource
    DataSet = qryLOG
    Left = 336
    Top = 159
  end
  object qryBuscaLog: TFDQuery
    Connection = SistemaSimplesConnection
    SQL.Strings = (
      'select * from log_sistema')
    Left = 277
    Top = 209
    object qryBuscaLogUSUARIO_LOG: TStringField
      FieldName = 'USUARIO_LOG'
      Origin = 'USUARIO_LOG'
      Size = 50
    end
    object qryBuscaLogIP_LOG: TStringField
      FieldName = 'IP_LOG'
      Origin = 'IP_LOG'
      Size = 50
    end
    object qryBuscaLogPC_LOG: TStringField
      FieldName = 'PC_LOG'
      Origin = 'PC_LOG'
      Size = 50
    end
    object qryBuscaLogDATA_LOG: TSQLTimeStampField
      FieldName = 'DATA_LOG'
      Origin = 'DATA_LOG'
    end
    object qryBuscaLogROTINA_LOG: TStringField
      FieldName = 'ROTINA_LOG'
      Origin = 'ROTINA_LOG'
      Size = 50
    end
    object qryBuscaLogACAO_LOG: TStringField
      FieldName = 'ACAO_LOG'
      Origin = 'ACAO_LOG'
      Size = 50
    end
  end
  object dtsBuscaLog: TDataSource
    DataSet = qryBuscaLog
    Left = 350
    Top = 209
  end
  object frxReport4: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43486.730069328700000000
    ReportOptions.LastChange = 43878.673446701390000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 480
    Top = 368
    Datasets = <
      item
        DataSet = fdb_RelLog
        DataSetName = 'fdb_RelLog'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Color = clWhite
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 22.338590000000000000
          Width = 642.520100000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -40
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Log do sistema')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 147.401670000000000000
          Top = -15.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = -2.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[date]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[time]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 39.574830000000000000
        Top = 207.874150000000000000
        Width = 740.409927000000000000
        DataSet = fdb_RelLog
        DataSetName = 'fdb_RelLog'
        RowCount = 0
        object fdb_RelLogUSUARIO_LOG: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = 0.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'USUARIO_LOG'
          DataSet = fdb_RelLog
          DataSetName = 'fdb_RelLog'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdb_RelLog."USUARIO_LOG"]')
        end
        object fdb_RelLogIP_LOG: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 223.653680000000000000
          Top = 0.118120000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'IP_LOG'
          DataSet = fdb_RelLog
          DataSetName = 'fdb_RelLog'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdb_RelLog."IP_LOG"]')
        end
        object fdb_RelLogPC_LOG: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 317.598640000000000000
          Top = 0.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'PC_LOG'
          DataSet = fdb_RelLog
          DataSetName = 'fdb_RelLog'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdb_RelLog."PC_LOG"]')
        end
        object fdb_RelLogROTINA_LOG: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 101.874150000000000000
          Top = 0.338590000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'ROTINA_LOG'
          DataSet = fdb_RelLog
          DataSetName = 'fdb_RelLog'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdb_RelLog."ROTINA_LOG"]')
        end
        object fdb_RelLogACAO_LOG: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 414.504330000000000000
          Top = 0.338590000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'ACAO_LOG'
          DataSet = fdb_RelLog
          DataSetName = 'fdb_RelLog'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdb_RelLog."ACAO_LOG"]')
        end
        object fdb_RelLogDATA_LOG: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 538.165740000000000000
          Top = 0.574830000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'DATA_LOG'
          DataSet = fdb_RelLog
          DataSetName = 'fdb_RelLog'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdb_RelLog."DATA_LOG"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 20.677180000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 19.692950000000000000
        Top = 166.299320000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 0.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Usu'#225'rio')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 98.771800000000000000
          Top = 0.795300000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Rotina')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 221.614410000000000000
          Top = 0.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'IP')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 315.559370000000000000
          Top = 0.795300000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PC')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 413.724800000000000000
          Top = 0.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'A'#231#227'o')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 538.165740000000000000
          Top = 1.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data / Hora')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 0.047310000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 740.409927000000000000
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 525.354670000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de registros:')
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 646.134200000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 526.189240000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
      end
    end
  end
  object fdb_RelLog: TfrxDBDataset
    UserName = 'fdb_RelLog'
    CloseDataSource = False
    DataSet = qryImpRelLog
    BCDToCurrency = False
    Left = 568
    Top = 397
  end
  object qryImpRelLog: TFDQuery
    Connection = SistemaSimplesConnection
    SQL.Strings = (
      'select * from log_sistema')
    Left = 664
    Top = 396
  end
  object qryControleAcesso: TFDQuery
    Connection = SistemaSimplesConnection
    SQL.Strings = (
      'select * from usuario')
    Left = 296
    Top = 296
  end
  object dtsControleDeAcesso: TDataSource
    DataSet = qryControleAcesso
    Left = 400
    Top = 296
  end
end
