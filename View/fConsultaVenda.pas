unit fConsultaVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, uClassTypes, Vcl.ExtCtrls, IdBaseComponent,
  IdComponent,
  IdIPWatch;

type
  TfrmConsultaVenda = class(TForm)
    pgcConsultaVenda: TPageControl;
    ts1: TTabSheet;
    grdConsultaitens: TDBGrid;
    pnl1: TPanel;
    btnpesquisaconsultavenda: TButton;
    edtConsultaVenda: TEdit;
    pnlConsulta: TPanel;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnpesquisaconsultavendaClick(Sender: TObject);
    procedure edtConsultaVendaChange(Sender: TObject);
  private
    FTipoPesquisa: TTipoPesquisa;
    procedure Pesquisar;
    { Private declarations }
  public
    { Public declarations }

    property TipoPesquisa: TTipoPesquisa read FTipoPesquisa write FTipoPesquisa;
    /// /////////////////////////////////////////////////////////////////////////

  var
    CapturaID: string;
    CapturaNome: string;

  end;

var
  frmConsultaVenda: TfrmConsultaVenda;

implementation

uses
  dConexao, fTelaVenda;

{$R *.dfm}
{ TfrmConsultaVenda }

procedure TfrmConsultaVenda.btnpesquisaconsultavendaClick(Sender: TObject);
begin
  CapturaID := '';
  CapturaID := grdConsultaitens.columns.items[0].field.text;

  CapturaNome := '';
  CapturaNome := grdConsultaitens.columns.items[1].field.text;

  Close;
  // frmTelaVenda.edtclientevenda.SetFocus;
end;

procedure TfrmConsultaVenda.edtConsultaVendaChange(Sender: TObject);
begin
  Pesquisar;
end;

procedure TfrmConsultaVenda.FormShow(Sender: TObject);
begin
  dtmConexao.CustomizaTela(self);
  Pesquisar;
end;

procedure TfrmConsultaVenda.Pesquisar;
begin
  dtmConexao.qryPesquisa.Close;
  dtmConexao.qryPesquisa.SQL.Clear;
  case FTipoPesquisa of
    tpProduto:
      begin

        dtmConexao.qryPesquisa.SQL.Add('SELECT ID,DESCRICAO FROM PRODUTOS');
        if Trim(edtConsultaVenda.text) <> '' then
        begin
          dtmConexao.qryPesquisa.SQL.Add('WHERE upper(descricao) LIKE ' +
            QuotedStr('%' + AnsiUpperCase(edtConsultaVenda.text + '%')));
        end;

        dtmConexao.qryPesquisa.SQL.Add('order by ID');

      end;

    tpCliente:
      begin

        dtmConexao.qryPesquisa.SQL.Add('SELECT CLI_ID,CLI_NOME FROM CLIENTES');
        if Trim(edtConsultaVenda.text) <> '' then
        begin
          dtmConexao.qryPesquisa.SQL.Add('WHERE upper(cli_nome) LIKE ' +
            QuotedStr('%' + AnsiUpperCase(edtConsultaVenda.text + '%')));
        end;
        dtmConexao.qryPesquisa.SQL.Add('order by CLI_id');

      end;

    tpFormaPagamento:
      begin

        dtmConexao.qryPesquisa.SQL.Add
          ('SELECT ID,DESCRICAO FROM FORMA_PAGAMENTO');

        if Trim(edtConsultaVenda.text) <> '' then
        begin
          dtmConexao.qryPesquisa.SQL.Add('WHERE upper(descricao) LIKE ' +
            QuotedStr('%' + AnsiUpperCase(edtConsultaVenda.text + '%')));
        end;
        dtmConexao.qryPesquisa.SQL.Add('order by ID');

      end;

    tpVendedor:
      begin

        dtmConexao.qryPesquisa.SQL.Add('SELECT ID,NOME FROM VENDEDORES');

        if Trim(edtConsultaVenda.text) <> '' then
        begin
          dtmConexao.qryPesquisa.SQL.Add('WHERE upper(nome) LIKE ' +
            QuotedStr('%' + AnsiUpperCase(edtConsultaVenda.text + '%')));
        end;
        // dtmConexao.qryPesquisa.SQL.Add('order by id');
      end;

  end;

  dtmConexao.qryPesquisa.Open;
  /// ///////////////////////////////////////////////////

  case FTipoPesquisa of
    tpProduto:
      begin
        dtmConexao.qryPesquisa.Fields[0].DisplayLabel := 'ID';
        dtmConexao.qryPesquisa.Fields[1].DisplayLabel := 'Descrição';

      end;

    tpCliente:
      begin
        dtmConexao.qryPesquisa.Fields[0].DisplayLabel := 'ID';
        dtmConexao.qryPesquisa.Fields[1].DisplayLabel := 'Nome';
      end;

    tpFormaPagamento:
      begin
        dtmConexao.qryPesquisa.Fields[0].DisplayLabel := 'ID';
        dtmConexao.qryPesquisa.Fields[1].DisplayLabel := 'Descrição';

      end;

    tpVendedor:
      begin
        dtmConexao.qryPesquisa.Fields[0].DisplayLabel := 'ID';
        dtmConexao.qryPesquisa.Fields[1].DisplayLabel := 'Nome';

      end;

  end;
end;

end.
