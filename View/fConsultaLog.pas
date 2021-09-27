unit fConsultaLog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmConsultaLog = class(TForm)
    PageControl1: TPageControl;
    tgConsultaLog: TTabSheet;
    DBGrid1: TDBGrid;
    panel1: TPanel;
    Panel2: TPanel;
    Buscar: TLabel;
    edtBuscaLog: TEdit;
    rgFiltroLogs: TRadioGroup;
    btnImprimirLog: TButton;
    pnlConsulta: TPanel;
    Label1: TLabel;
    procedure edtBuscaLogChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirLogClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }

    procedure ConsultaLog;

  public
    { Public declarations }
  end;

var
  frmConsultaLog: TfrmConsultaLog;

implementation

{$R *.dfm}

uses dConexao;
{ TfrmConsultaLog }

procedure TfrmConsultaLog.btnImprimirLogClick(Sender: TObject);
begin
  dtmConexao.qryImpRelLog.Close;
  dtmConexao.qryImpRelLog.SQL.clear;
  dtmConexao.qryImpRelLog.SQL.Add('select * from log_sistema');
  dtmConexao.qryImpRelLog.Open;
  dtmConexao.frxReport4.LoadFromFile(GetCurrentDir + '\Rel\Relatorio_log.fr3');
  dtmConexao.frxReport4.ShowReport();
end;

procedure TfrmConsultaLog.ConsultaLog;
begin
  dtmConexao.qryBuscaLog.Close;
  dtmConexao.qryBuscaLog.SQL.clear;
  dtmConexao.qryBuscaLog.SQL.Add('SELECT * FROM log_sistema ');

  case rgFiltroLogs.ItemIndex of
    0:

      begin
        dtmConexao.qryBuscaLog.SQL.Add('WHERE upper(usuario_log) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscaLog.Text + '%')));

      end;

    1:

      begin
        dtmConexao.qryBuscaLog.SQL.Add('WHERE upper(rotina_log) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscaLog.Text + '%')));

      end;

  end;
  dtmConexao.qryBuscaLog.SQL.Add('order by usuario_log');
  dtmConexao.qryBuscaLog.Open;

end;

procedure TfrmConsultaLog.edtBuscaLogChange(Sender: TObject);
begin
  ConsultaLog;
end;

procedure TfrmConsultaLog.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if (Key = #13) then
        begin
            Key := #0;
            Perform(WM_NEXTDLGCTL, 0, 0);
        end;
end;

procedure TfrmConsultaLog.FormShow(Sender: TObject);
begin
  dtmConexao.CustomizaTela(self);
  ConsultaLog;
end;

end.
