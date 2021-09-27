unit uUnidades;

interface

uses
  FireDAC.Comp.Client, dConexao, Vcl.Dialogs;

type
  TUnidades = class
  private
    { private declarations }
    FID: integer;
    FUNIDADE: STRING;
    FDESCRICAO: STRING;

  protected
    { protected declarations }
  public
    destructor Destroy; override;
    { public declarations }

    property ID: integer read FID write FID;
    property UNIDADE: STRING read FUNIDADE write FUNIDADE;
    property DESCRICAO: STRING read FDESCRICAO write FDESCRICAO;
    procedure IncluirUnidade;
    procedure ExcluirUnidade;
    procedure AlterarUnidade;

    Constructor Create;

  published
    { published declarations }
  end;

implementation

procedure TUnidades.AlterarUnidade;
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
        lDataSet.SQL.Add('update unidades             ');
        lDataSet.SQL.Add('set UNIDADE = :UNIDADE      ');
        lDataSet.SQL.Add(' , DESCRICAO  = :DESCRICAO  ');
        lDataSet.SQL.Add(' where id  = :ID            ');
        lDataSet.ParamByName('UNIDADE').AsString := FUNIDADE;
        lDataSet.ParamByName('DESCRICAO').AsString := FDESCRICAO;
        lDataSet.ParamByName('ID').AsInteger := FID;
        lDataSet.ExecSQL;
        lDataSet.Connection.Commit;
      except
        begin
          lDataSet.Connection.Rollback;
          ShowMessage('Problemas ao tentar atualizar a unidade' + sLineBreak);
        end;
      end
    end;
  finally
    lDataSet.Free;
  end;


end;

constructor TUnidades.Create;
begin

end;

destructor TUnidades.Destroy;
begin

  inherited;
end;

procedure TUnidades.ExcluirUnidade;
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
        lDataSet.SQL.Add('delete from unidades    ');
        lDataSet.SQL.Add(' where id  = :id');
        lDataSet.ParamByName('ID').AsInteger := FID;
        lDataSet.ExecSQL;
        lDataSet.Connection.Commit;
      except
        begin
          lDataSet.Connection.Rollback;
          ShowMessage('Problemas ao tentar Deletar a unidade' + sLineBreak);
        end;
      end
    end;
  finally
    lDataSet.Free;
  end;

end;

procedure TUnidades.IncluirUnidade;
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
        lDataSet.SQL.Add('INSERT INTO unidades (  ');
        lDataSet.SQL.Add('   ID                   ');
        lDataSet.SQL.Add(' , UNIDADE              ');
        lDataSet.SQL.Add(' , DESCRICAO            ');
        lDataSet.SQL.Add('   )                    ');
        lDataSet.SQL.Add('values (                ');
        lDataSet.SQL.Add('   :ID                  ');
        lDataSet.SQL.Add(' , :UNIDADE             ');
        lDataSet.SQL.Add(' , :DESCRICAO           ');
        lDataSet.SQL.Add('   )                    ');
        lDataSet.ParamByName('UNIDADE').AsString := FUNIDADE;
        lDataSet.ParamByName('DESCRICAO').AsString := FDESCRICAO;
        lDataSet.ExecSQL;
        lDataSet.Connection.Commit;
      except
        begin
          lDataSet.Connection.Rollback;
          ShowMessage('Problemas ao tentar incluir unidade' + sLineBreak);
        end;
      end
    end;
  finally
    lDataSet.Free;
  end;
end;

end.
