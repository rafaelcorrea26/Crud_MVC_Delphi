unit fCadastroVendedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  IdBaseComponent, IdComponent,
  IdIPWatch;

type
  TfrmCadastroVendedor = class(TForm)
    pgcCadastroVendedor: TPageControl;
    pnlConsulta: TPanel;
    lblvendedor: TLabel;
    pnlbtnsvendedor: TPanel;
    btnIncluirvendedor: TButton;
    btnSairvendedor: TButton;
    btnAlterarvendedor: TButton;
    btnExcluirvendedor: TButton;
    btnMostrarvendedor: TButton;
    pnledtvendedor: TPanel;
    lblbuscarvendedor: TLabel;
    rgvendedor: TRadioGroup;
    tsconsultavendedor: TTabSheet;
    tscadastrovendedor: TTabSheet;
    grdvendedor: TDBGrid;
    pnlCadastro: TPanel;
    lblCadastrounidades: TLabel;
    pnleditvendedor: TPanel;
    edtDescricaovendedor: TDBEdit;
    lblDescricaovendedor: TLabel;
    edtlimitedesc: TDBEdit;
    lblLimitedesc: TLabel;
    edtBuscarvendedor: TEdit;
    pnl1: TPanel;
    pnl2: TPanel;
    btnCancelarformaspgt: TButton;
    btnSairUnidades: TButton;
    btnCadastrarformaspgt: TButton;
    procedure btnIncluirvendedorClick(Sender: TObject);
    procedure btnAlterarvendedorClick(Sender: TObject);
    procedure btnExcluirvendedorClick(Sender: TObject);
    procedure btnMostrarvendedorClick(Sender: TObject);
    procedure btnSairvendedorClick(Sender: TObject);
    procedure rgvendedorClick(Sender: TObject);
    procedure edtBuscarvendedorChange(Sender: TObject);
    procedure btnCadastrarformaspgtClick(Sender: TObject);
    procedure btnSairUnidadesClick(Sender: TObject);
    procedure btnCancelarformaspgtClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtDescricaovendedorKeyPress(Sender: TObject; var Key: Char);
    procedure edtlimitedescKeyPress(Sender: TObject; var Key: Char);
    procedure edtlimitedescExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroVendedor: TfrmCadastroVendedor;

implementation

uses
  dConexao;

{$R *.dfm}

procedure TfrmCadastroVendedor.btnAlterarvendedorClick(Sender: TObject);
begin
  dtmConexao.GravandoLog('Cadastro de formas de pagamento',
    'Alteração de venda');
  dtmConexao.qryConsultaVendedor.Edit;
  frmCadastroVendedor.pgcCadastroVendedor.ActivePageIndex := 1;
  frmCadastroVendedor.edtDescricaovendedor.SetFocus;
end;

procedure TfrmCadastroVendedor.btnCadastrarformaspgtClick(Sender: TObject);
begin
  if Trim(edtDescricaovendedor.text) = '' then
  begin
    ShowMessage('Preecha a descrição do vendedor');
    edtDescricaovendedor.SetFocus;
  end
  else if Trim(edtlimitedesc.text) = '' then
  begin
    ShowMessage('Preecha o limite de desconto');
    edtlimitedesc.SetFocus;
  end
  else
  begin
    dtmConexao.GravandoLog('Cadastro de vendedores', 'Inclusão de vendedor');
    dtmConexao.qryConsultaVendedor.Post;

    ShowMessage('vendedor(a) cadastrado(a) com sucesso');

    frmCadastroVendedor.tscadastrovendedor.TabVisible := False;
    frmCadastroVendedor.tsconsultavendedor.TabVisible := True;
    dtmConexao.qryConsultaVendedor.Close;
    frmCadastroVendedor.pgcCadastroVendedor.ActivePageIndex := 0;
    dtmConexao.MostrarVendedores;
  end;
end;

procedure TfrmCadastroVendedor.btnCancelarformaspgtClick(Sender: TObject);
begin
  dtmConexao.qryConsultaVendedor.Cancel;
  frmCadastroVendedor.pgcCadastroVendedor.ActivePageIndex := 0;
end;

procedure TfrmCadastroVendedor.btnExcluirvendedorClick(Sender: TObject);
begin
  if dtmConexao.qryConsultaVendedor.IsEmpty then
  begin

    ShowMessage('Registros Zerado');
  end
  else
  begin

    case Application.MessageBox
      (PWideChar('Deseja excluir ' + (grdvendedor.columns.items[1].Field.Text) +
      '?'), 'Excluir Vendedor', MB_YESNO + MB_ICONQUESTION) of
      IDYES:

        begin

          dtmConexao.GravandoLog('Cadastro de vendedores',
            'Exclusão de vendodor');
          dtmConexao.qryConsultaVendedor.Delete;
          dtmConexao.qryConsultaVendedor.Refresh;
          ShowMessage('Vendedor(a) excluido(a)');

        end;
      IDNO:
        begin
          exit;
        end;
    end;
  end;
end;

procedure TfrmCadastroVendedor.btnIncluirvendedorClick(Sender: TObject);
begin
  tsconsultavendedor.TabVisible := False;
  tsconsultavendedor.TabVisible := True;

  dtmConexao.qryConsultaVendedor.Active := True;
  dtmConexao.qryConsultaVendedor.Insert;
  frmCadastroVendedor.pgcCadastroVendedor.ActivePageIndex := 1;
  frmCadastroVendedor.edtDescricaovendedor.SetFocus;

end;

procedure TfrmCadastroVendedor.btnMostrarvendedorClick(Sender: TObject);
begin
  dtmConexao.MostrarVendedores;
  edtBuscarvendedor.Text := '';
  edtBuscarvendedor.SetFocus;
  rgvendedor.ItemIndex := 0;
end;

procedure TfrmCadastroVendedor.btnSairUnidadesClick(Sender: TObject);
begin
  if dtmConexao.qryConsultaVendedor.State in [dsInsert, dsEdit] then
  begin
    ShowMessage('Salve ou Cancele o registro antes de sair');
  end

  else
  // se não, só fecha//

  begin
    frmCadastroVendedor.pgcCadastroVendedor.ActivePageIndex := 0;
  end;
end;

procedure TfrmCadastroVendedor.btnSairvendedorClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroVendedor.edtBuscarvendedorChange(Sender: TObject);
begin
  dtmConexao.qryConsultaVendedor.Close;
  dtmConexao.qryConsultaVendedor.Sql.Clear;
  dtmConexao.qryConsultaVendedor.Sql.Add('SELECT * FROM VENDEDORES');

  case rgvendedor.ItemIndex of
    0:

      begin
        dtmConexao.qryConsultaVendedor.Sql.Add('WHERE upper(Nome) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarvendedor.Text + '%')));

      end;

    1:

      begin
        dtmConexao.qryConsultaVendedor.Sql.Add('WHERE upper(ID) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarvendedor.Text + '%')));
      end;

  end;
  dtmConexao.qryConsultaVendedor.Sql.Add('order by Nome');
  dtmConexao.qryConsultaVendedor.Open;
end;

procedure TfrmCadastroVendedor.edtDescricaovendedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TfrmCadastroVendedor.edtlimitedescExit(Sender: TObject);
begin
  btnCadastrarformaspgt.SetFocus;
end;

procedure TfrmCadastroVendedor.edtlimitedescKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TfrmCadastroVendedor.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if (Key = #13) then
        begin
            Key := #0;
            Perform(WM_NEXTDLGCTL, 0, 0);
        end;
end;

procedure TfrmCadastroVendedor.FormShow(Sender: TObject);
begin
  dtmConexao.CustomizaTela(self);
  dtmConexao.MostrarVendedores;
  edtBuscarvendedor.SetFocus;
end;

procedure TfrmCadastroVendedor.rgvendedorClick(Sender: TObject);
begin
  case rgvendedor.ItemIndex of
    0:
      begin
        lblbuscarvendedor.Caption := 'Digite o nome';
        lblbuscarvendedor.Visible := True;
        edtBuscarvendedor.Clear;
      end;

    1:
      begin
        lblbuscarvendedor.Caption := 'Digite a ID';
        lblbuscarvendedor.Visible := True;
        edtBuscarvendedor.Clear;
      end;
  end;
end;

end.
