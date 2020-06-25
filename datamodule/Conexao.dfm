object dmDados: TdmDados
  OldCreateOrder = False
  Height = 294
  Width = 558
  object ConPariz: TSQLConnection
    ConnectionName = 'ConPariz'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver260.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver260.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=24.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'HostName=localhost'
      'Database=ConPariz'
      'User_Name=root'
      'Password=luiz1969'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile=')
    Left = 278
    Top = 9
  end
  object cdsUsuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuarios'
    Left = 232
    Top = 48
    object cdsUsuariosid: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id'
      Required = True
    end
    object sUsuariosnome1: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 40
    end
    object sUsuarioslogin1: TStringField
      DisplayLabel = 'Login'
      FieldName = 'login'
      Size = 10
    end
    object sUsuariossenha1: TStringField
      FieldName = 'senha'
      Size = 10
    end
    object sUsuariosstatus1: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 1
    end
    object dtfldUsuariosdt_cadastro1: TDateField
      DisplayLabel = 'Data de Cadastro'
      FieldName = 'dt_cadastro'
    end
  end
  object dspUsuarios: TDataSetProvider
    DataSet = dsUsuarios
    Left = 136
    Top = 48
  end
  object dsUsuarios: TSQLDataSet
    CommandText = 'SELECT  * FROM usuarios'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConPariz
    Left = 40
    Top = 48
    object dsUsuariosid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sUsuariosnome: TStringField
      FieldName = 'nome'
      Size = 40
    end
    object sUsuarioslogin: TStringField
      FieldName = 'login'
      Size = 10
    end
    object sUsuariossenha: TStringField
      FieldName = 'senha'
      Size = 10
    end
    object sUsuariosstatus: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 1
    end
    object dtfldUsuariosdt_cadastro: TDateField
      FieldName = 'dt_cadastro'
    end
  end
  object cdsContasPagar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContasPagar'
    Left = 232
    Top = 104
    object cdsContasPagarid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sContasPagarnumero_doc: TStringField
      FieldName = 'numero_doc'
      Required = True
    end
    object sContasPagardescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
    object cdsContasPagarparcelas: TIntegerField
      FieldName = 'parcelas'
      Required = True
    end
    object fmtbcdfldContasPagarvlr_parcela: TFMTBCDField
      FieldName = 'vlr_parcela'
      Required = True
      Precision = 20
      Size = 2
    end
    object fmtbcdfldContasPagarvlr_compra: TFMTBCDField
      FieldName = 'vlr_compra'
      Required = True
      Precision = 12
      Size = 2
    end
    object fmtbcdfldContasPagarvlr_abatido: TFMTBCDField
      FieldName = 'vlr_abatido'
      Required = True
      Precision = 20
      Size = 2
    end
    object dtfldContasPagardt_compra: TDateField
      FieldName = 'dt_compra'
      Required = True
    end
    object dtfldContasPagardt_cadastro: TDateField
      FieldName = 'dt_cadastro'
      Required = True
    end
    object dtfldContasPagardt_vencto: TDateField
      FieldName = 'dt_vencto'
      Required = True
    end
    object dtfldContasPagardt_pagto: TDateField
      FieldName = 'dt_pagto'
    end
    object sContasPagarstatus: TStringField
      FieldName = 'status'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dspContasPagar: TDataSetProvider
    DataSet = dsContasPagar
    Left = 136
    Top = 104
  end
  object dsContasPagar: TSQLDataSet
    CommandText = 'SELECT * FROM contas_pagar'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConPariz
    Left = 40
    Top = 104
  end
  object cdsContasReceber: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContasReceber'
    Left = 232
    Top = 160
    object cdsContasReceberid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sContasReceberdocumento: TStringField
      FieldName = 'documento'
      Required = True
    end
    object sContasReceberdescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
    object cdsContasReceberparcelas: TIntegerField
      FieldName = 'parcelas'
      Required = True
    end
    object fmtbcdfldContasRecebervlr_parcela: TFMTBCDField
      FieldName = 'vlr_parcela'
      Required = True
      Precision = 20
      Size = 2
    end
    object fmtbcdfldContasRecebervlr_compra: TFMTBCDField
      FieldName = 'vlr_compra'
      Required = True
      Precision = 20
      Size = 2
    end
    object fmtbcdfldContasRecebervlr_abatido: TFMTBCDField
      FieldName = 'vlr_abatido'
      Required = True
      Precision = 20
      Size = 2
    end
    object dtfldContasReceberdt_compra: TDateField
      FieldName = 'dt_compra'
      Required = True
    end
    object dtfldContasReceberdt_vencimento: TDateField
      FieldName = 'dt_vencimento'
      Required = True
    end
    object dtfldContasReceberdt_cadastro: TDateField
      FieldName = 'dt_cadastro'
      Required = True
    end
    object sContasReceberstatus: TStringField
      FieldName = 'status'
      Required = True
      FixedChar = True
      Size = 10
    end
    object dtfldContasReceberdt_pagto: TDateField
      FieldName = 'dt_pagto'
    end
  end
  object dspContasReceber: TDataSetProvider
    DataSet = dsContasReceber
    Left = 136
    Top = 160
  end
  object dsContasReceber: TSQLDataSet
    CommandText = 'SELECT * FROM contas_receber'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConPariz
    Left = 40
    Top = 160
  end
  object cdsCaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCaixa'
    Left = 232
    Top = 216
    object cdsCaixaid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCaixanumero_doc: TStringField
      FieldName = 'numero_doc'
      Required = True
    end
    object cdsCaixadescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
    object cdsCaixatipo_pagto: TIntegerField
      FieldName = 'tipo_pagto'
      Required = True
    end
    object cdsCaixavalor: TFMTBCDField
      FieldName = 'valor'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdsCaixadt_cadastro: TDateField
      FieldName = 'dt_cadastro'
      Required = True
    end
  end
  object dspCaixa: TDataSetProvider
    DataSet = dsCaixa
    Left = 136
    Top = 216
  end
  object dsCaixa: TSQLDataSet
    CommandText = 'SELECT * FROM caixa'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConPariz
    Left = 40
    Top = 216
  end
end
