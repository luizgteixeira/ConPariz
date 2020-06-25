unit Conexao;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Datasnap.Provider, Data.DB,
  Datasnap.DBClient, Data.SqlExpr, Data.FMTBcd;

type
  TdmDados = class(TDataModule)
    ConPariz: TSQLConnection;
    cdsUsuarios: TClientDataSet;
    dspUsuarios: TDataSetProvider;
    dsUsuarios: TSQLDataSet;
    dsUsuariosid: TIntegerField;
    sUsuariosnome: TStringField;
    sUsuarioslogin: TStringField;
    sUsuariossenha: TStringField;
    sUsuariosstatus: TStringField;
    dtfldUsuariosdt_cadastro: TDateField;
    cdsUsuariosid: TIntegerField;
    sUsuariosnome1: TStringField;
    sUsuarioslogin1: TStringField;
    sUsuariossenha1: TStringField;
    sUsuariosstatus1: TStringField;
    dtfldUsuariosdt_cadastro1: TDateField;
    cdsContasPagar: TClientDataSet;
    dspContasPagar: TDataSetProvider;
    dsContasPagar: TSQLDataSet;
    cdsContasPagarid: TIntegerField;
    sContasPagarnumero_doc: TStringField;
    sContasPagardescricao: TStringField;
    cdsContasPagarparcelas: TIntegerField;
    fmtbcdfldContasPagarvlr_parcela: TFMTBCDField;
    fmtbcdfldContasPagarvlr_compra: TFMTBCDField;
    fmtbcdfldContasPagarvlr_abatido: TFMTBCDField;
    dtfldContasPagardt_compra: TDateField;
    dtfldContasPagardt_cadastro: TDateField;
    dtfldContasPagardt_vencto: TDateField;
    dtfldContasPagardt_pagto: TDateField;
    sContasPagarstatus: TStringField;
    cdsContasReceber: TClientDataSet;
    dspContasReceber: TDataSetProvider;
    dsContasReceber: TSQLDataSet;
    cdsContasReceberid: TIntegerField;
    sContasReceberdocumento: TStringField;
    sContasReceberdescricao: TStringField;
    cdsContasReceberparcelas: TIntegerField;
    fmtbcdfldContasRecebervlr_parcela: TFMTBCDField;
    fmtbcdfldContasRecebervlr_compra: TFMTBCDField;
    fmtbcdfldContasRecebervlr_abatido: TFMTBCDField;
    dtfldContasReceberdt_compra: TDateField;
    dtfldContasReceberdt_vencimento: TDateField;
    dtfldContasReceberdt_cadastro: TDateField;
    sContasReceberstatus: TStringField;
    dtfldContasReceberdt_pagto: TDateField;
    cdsCaixa: TClientDataSet;
    dspCaixa: TDataSetProvider;
    dsCaixa: TSQLDataSet;
    cdsCaixaid: TIntegerField;
    cdsCaixanumero_doc: TStringField;
    cdsCaixadescricao: TStringField;
    cdsCaixatipo_pagto: TIntegerField;
    cdsCaixavalor: TFMTBCDField;
    cdsCaixadt_cadastro: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDados: TdmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
