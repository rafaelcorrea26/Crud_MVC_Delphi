unit uClientes;

interface

uses
  dConexao, FireDAC.Comp.Client, Vcl.Dialogs;

type
  TClientes = class
  private
    { private declarations }
    FCLI_ID: integer;
    FCLI_UF: string;
    FCLI_RG: string;
    FCLI_CPF: STRING;
    FCLI_TEL: STRING;
    FCLI_CEL: STRING;
    FCLI_DATA_NASC: TDATE;
    FCLI_DATA_CAD: TDATE;
    FCLI_SITUACAO: STRING;
    FCLI_EMAIL: STRING;
    FCLI_CEP: STRING;
    FCLI_NOME: STRING;
    FCLI_ENDERECO: String;
    FCLI_BAIRRO: string;
    FCLI_CIDADE: string;

  protected
    { protected declarations }
  public
    destructor Destroy; override;

    { public declarations }

    property CLI_ID: integer read FCLI_ID write FCLI_ID;
    property CLI_UF: string read FCLI_UF write FCLI_UF;
    property CLI_RG: string read FCLI_RG write FCLI_RG;
    property CLI_CPF: STRING read FCLI_CPF write FCLI_CPF;
    property CLI_TEL: STRING read FCLI_TEL write FCLI_TEL;
    property CLI_CEL: STRING read FCLI_CEL write FCLI_CEL;
    property CLI_DATA_NASC: TDATE read FCLI_DATA_NASC write FCLI_DATA_NASC;
    property CLI_DATA_CAD: TDATE read FCLI_DATA_CAD write FCLI_DATA_CAD;
    property CLI_SITUACAO: STRING read FCLI_SITUACAO write FCLI_SITUACAO;
    property CLI_EMAIL: STRING read FCLI_EMAIL write FCLI_EMAIL;
    property CLI_CEP: STRING read FCLI_CEP write FCLI_CEP;
    property CLI_NOME: STRING read FCLI_NOME write FCLI_NOME;
    property CLI_ENDERECO: String read FCLI_ENDERECO write FCLI_ENDERECO;
    property CLI_BAIRRO: string read FCLI_BAIRRO write FCLI_BAIRRO;
    property CLI_CIDADE: string read FCLI_CIDADE write FCLI_CIDADE;

    procedure ExcluirCliente;
    procedure AlterarCliente;
    procedure InserirCliente;
    procedure Limpar;
    procedure Carrega;
    Constructor Create;

  published
    { published declarations }
  end;

implementation

{ TClientes }

procedure TClientes.AlterarCliente;
var
  lDataSet: TFDQuery;
begin
  lDataSet := TFDQuery.Create(nil);
  try

    lDataSet.Connection := dtmconexao.SistemaSimplesConnection;
    begin
      try
        lDataSet.Close;
        lDataSet.SQL.Clear;
        lDataSet.SQL.Add('update CLIENTES ');
        lDataSet.SQL.Add('set CLI_UF = :CLI_UF, ');
        lDataSet.SQL.Add('CLI_RG = :CLI_RG, ');
        lDataSet.SQL.Add('CLI_CPF = :CLI_CPF,');
        lDataSet.SQL.Add('CLI_TEL = :CLI_TEL, ');
        lDataSet.SQL.Add('CLI_CEL = :CLI_CEL,');
        lDataSet.SQL.Add('CLI_DATA_NASC = :CLI_DATA_NASC, ');
        lDataSet.SQL.Add('CLI_DATA_CAD = :CLI_DATA_CAD, ');
        lDataSet.SQL.Add('CLI_SITUACAO = :CLI_SITUACAO,   ');
        lDataSet.SQL.Add('CLI_EMAIL = :CLI_EMAIL,       ');
        lDataSet.SQL.Add('CLI_CEP = :CLI_CEP,        ');
        lDataSet.SQL.Add('CLI_NOME = :CLI_NOME,     ');
        lDataSet.SQL.Add('CLI_ENDERECO = :CLI_ENDERECO, ');
        lDataSet.SQL.Add('CLI_BAIRRO = :CLI_BAIRRO,  ');
        lDataSet.SQL.Add('CLI_CIDADE = :CLI_CIDADE   ');
        lDataSet.SQL.Add(' where CLI_ID  = :CLI_ID');

        lDataSet.ParamByName('CLI_ID').AsInteger := FCLI_ID;
        lDataSet.ParamByName('CLI_UF').AsString := FCLI_UF;
        lDataSet.ParamByName('CLI_RG').AsString := FCLI_RG;
        lDataSet.ParamByName('CLI_CPF').AsString := FCLI_CPF;
        lDataSet.ParamByName('CLI_TEL').AsString := FCLI_TEL;
        lDataSet.ParamByName('CLI_CEL').AsString := FCLI_CEL;
        lDataSet.ParamByName('CLI_DATA_NASC').asdate := FCLI_DATA_NASC;
        lDataSet.ParamByName('CLI_DATA_CAD').asdate := FCLI_DATA_CAD;
        lDataSet.ParamByName('CLI_SITUACAO').AsString := FCLI_SITUACAO;
        lDataSet.ParamByName('CLI_EMAIL').AsString := FCLI_EMAIL;
        lDataSet.ParamByName('CLI_CEP').AsString := FCLI_CEP;
        lDataSet.ParamByName('CLI_NOME').AsString := FCLI_NOME;
        lDataSet.ParamByName('CLI_ENDERECO').AsString := FCLI_ENDERECO;
        lDataSet.ParamByName('CLI_BAIRRO').AsString := FCLI_BAIRRO;
        lDataSet.ParamByName('CLI_CIDADE').AsString := FCLI_CIDADE;
        lDataSet.ExecSQL;
        lDataSet.Connection.Commit;
      except
        begin
          lDataSet.Connection.Rollback;
          ShowMessage('Problemas ao tentar atualizar o CLIENTE' + sLineBreak);
        end;
      end
    end;
  finally
    lDataSet.Free;
  end;

end;

procedure TClientes.Carrega;
var
  lDataSet: TFDQuery;
begin
  lDataSet := TFDQuery.Create(nil);
  try

    lDataSet.Connection := dtmconexao.SistemaSimplesConnection;
    begin
      lDataSet.Close;
      lDataSet.SQL.Clear;
      lDataSet.SQL.Add('select * from clientes  ');
      lDataSet.SQL.Add('where CLI_ID = :CLI_ID');
      lDataSet.parambyname('CLI_ID').AsInteger := FCLI_ID;

      lDataSet.open;
      lDataSet.FetchAll;

      if lDataSet.RecordCount > 0 then
      begin
        FCLI_UF := lDataSet.FieldByName('CLI_UF').AsString;
        FCLI_RG := lDataSet.FieldByName('CLI_RG').AsString;
        FCLI_CPF := lDataSet.FieldByName('CLI_CPF').AsString;
        FCLI_TEL := lDataSet.FieldByName('CLI_TEL').AsString;
        FCLI_CEL := lDataSet.FieldByName('CLI_CEL').AsString;
        FCLI_DATA_NASC := lDataSet.FieldByName('CLI_DATA_NASC').AsDateTime;
        FCLI_DATA_CAD := lDataSet.FieldByName('CLI_DATA_CAD').AsDateTime;
        FCLI_SITUACAO := lDataSet.FieldByName('CLI_SITUACAO').AsString;
        FCLI_EMAIL := lDataSet.FieldByName('CLI_EMAIL').AsString;
        FCLI_CEP := lDataSet.FieldByName('CLI_CEP').AsString;
        FCLI_NOME := lDataSet.FieldByName('CLI_NOME').AsString;
        FCLI_ENDERECO := lDataSet.FieldByName('CLI_ENDERECO').AsString;
        FCLI_BAIRRO := lDataSet.FieldByName('CLI_BAIRRO').AsString;
        FCLI_CIDADE := lDataSet.FieldByName('CLI_CIDADE').AsString;
      end;
    end;
  finally
    lDataSet.Free;
  end;

end;

constructor TClientes.Create;
begin

end;

destructor TClientes.Destroy;
begin

  inherited;
end;

procedure TClientes.ExcluirCliente;
var
  lDataSet: TFDQuery;
begin
  lDataSet := TFDQuery.Create(nil);
  try

    lDataSet.Connection := dtmconexao.SistemaSimplesConnection;
    begin
      try
        lDataSet.Close;
        lDataSet.SQL.Clear;
        lDataSet.SQL.Add('delete from clientes    ');
        lDataSet.SQL.Add(' where CLI_ID  = :FCLI_ID');
        lDataSet.parambyname('CLI_ID').AsInteger := FCLI_ID;
        lDataSet.ExecSQL;
        lDataSet.Connection.Commit;
      except
        begin
          lDataSet.Connection.Rollback;
          ShowMessage('Problemas ao tentar Deletar o CLIENTE' + sLineBreak);
        end;
      end
    end;
  finally
    lDataSet.Free;
  end;

end;

procedure TClientes.InserirCliente;
var
  lDataSet: TFDQuery;
begin
  lDataSet := TFDQuery.Create(nil);
  try

    lDataSet.Connection := dtmconexao.SistemaSimplesConnection;
    begin
      try
        lDataSet.Close;
        lDataSet.SQL.Clear;
        lDataSet.SQL.Add('INSERT INTO clientes (  ');
        lDataSet.SQL.Add('   CLI_ID               ');
        lDataSet.SQL.Add(' , CLI_UF               ');
        lDataSet.SQL.Add(' , CLI_RG               ');
        lDataSet.SQL.Add(' , CLI_CPF              ');
        lDataSet.SQL.Add(' , CLI_TEL              ');
        lDataSet.SQL.Add(' , CLI_CEL              ');
        lDataSet.SQL.Add(' , CLI_DATA_NASC        ');
        lDataSet.SQL.Add(' , CLI_DATA_CAD         ');
        lDataSet.SQL.Add(' , CLI_SITUACAO         ');
        lDataSet.SQL.Add(' , CLI_EMAIL            ');
        lDataSet.SQL.Add(' , CLI_CEP              ');
        lDataSet.SQL.Add(' , CLI_NOME             ');
        lDataSet.SQL.Add(' , CLI_ENDERECO         ');
        lDataSet.SQL.Add(' , CLI_BAIRRO           ');
        lDataSet.SQL.Add(' , CLI_CIDADE           ');
        lDataSet.SQL.Add('   )                    ');
        lDataSet.SQL.Add('values (                ');
        lDataSet.SQL.Add('   :CLI_ID              ');
        lDataSet.SQL.Add(' , :CLI_UF              ');
        lDataSet.SQL.Add(' , :CLI_RG              ');
        lDataSet.SQL.Add(' , :CLI_CPF             ');
        lDataSet.SQL.Add(' , :CLI_TEL             ');
        lDataSet.SQL.Add(' , :CLI_CEL             ');
        lDataSet.SQL.Add(' , :CLI_DATA_NASC       ');
        lDataSet.SQL.Add(' , :CLI_DATA_CAD        ');
        lDataSet.SQL.Add(' , :CLI_SITUACAO        ');
        lDataSet.SQL.Add(' , :CLI_EMAIL           ');
        lDataSet.SQL.Add(' , :CLI_CEP             ');
        lDataSet.SQL.Add(' , :CLI_NOME            ');
        lDataSet.SQL.Add(' , :CLI_ENDERECO        ');
        lDataSet.SQL.Add(' , :CLI_BAIRRO          ');
        lDataSet.SQL.Add(' , :CLI_CIDADE          ');
        lDataSet.SQL.Add('   )                    ');
        lDataSet.ParamByName('CLI_ID').AsInteger := FCLI_ID;
        lDataSet.ParamByName('CLI_UF').AsString := FCLI_UF;
        lDataSet.ParamByName('CLI_RG').AsString := FCLI_RG;
        lDataSet.ParamByName('CLI_CPF').AsString := FCLI_CPF;
        lDataSet.ParamByName('CLI_TEL').AsString := FCLI_TEL;
        lDataSet.ParamByName('CLI_CEL').AsString := FCLI_CEL;
        lDataSet.ParamByName('CLI_DATA_NASC').asdate := FCLI_DATA_NASC;
        lDataSet.ParamByName('CLI_DATA_CAD').asdate := FCLI_DATA_CAD;
        lDataSet.ParamByName('CLI_SITUACAO').AsString := FCLI_SITUACAO;
        lDataSet.ParamByName('CLI_EMAIL').AsString := FCLI_EMAIL;
        lDataSet.ParamByName('CLI_CEP').AsString := FCLI_CEP;
        lDataSet.ParamByName('CLI_NOME').AsString := FCLI_NOME;
        lDataSet.ParamByName('CLI_ENDERECO').AsString := FCLI_ENDERECO;
        lDataSet.ParamByName('CLI_BAIRRO').AsString := FCLI_BAIRRO;
        lDataSet.ParamByName('CLI_CIDADE').AsString := FCLI_CIDADE;
        lDataSet.ExecSQL;
        lDataSet.Connection.Commit;
      except
        begin
          lDataSet.Connection.Rollback;
          ShowMessage('Problemas ao tentar incluir CLIENTE' + sLineBreak);
        end;
      end
    end;
  finally
    lDataSet.Free;
  end;
end;

procedure TClientes.Limpar;
begin
  FCLI_UF := '';
  FCLI_RG := '';
  FCLI_CPF := '';
  FCLI_TEL := '';
  FCLI_CEL := '';
  FCLI_SITUACAO := '';
  FCLI_EMAIL := '';
  FCLI_CEP := '';
  FCLI_NOME := '';
  FCLI_ENDERECO := '';
  FCLI_BAIRRO := '';
  FCLI_CIDADE := '';
  FCLI_DATA_NASC := 0;
  FCLI_DATA_CAD := 0;
end;

end.
