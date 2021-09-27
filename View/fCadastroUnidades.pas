unit fCadastroUnidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, IdBaseComponent,
  IdComponent,
  IdIPWatch;

type
  TfrmCadastroUnidades = class(TForm)
    pgcTabelaUnidades: TPageControl;
    tsConsultaUnid: TTabSheet;
    tsCadastroUnid: TTabSheet;
    dbgUnidades: TDBGrid;
    pnlCadastro: TPanel;
    lblCadastrounidades: TLabel;
    pnlbotoescadunid: TPanel;
    btnSairUnidades: TButton;
    btnCadastrarUnidades: TButton;
    pnledtscadunid: TPanel;
    edtUnidades: TDBEdit;
    lbUnidades: TLabel;
    edtDescUnid: TDBEdit;
    lblDescricaounid: TLabel;
    pnlConsulta: TPanel;
    lblConsultaUnidade: TLabel;
    pnledconsultunid: TPanel;
    edtBuscarUnidades: TEdit;
    rgUnidades: TRadioGroup;
    lblBuscarunid: TLabel;
    pnlbotoesconsultunid: TPanel;
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    btnMostrarUnidades: TButton;
    btnSair: TButton;
    btnCancelarcaduni: TButton;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCadastrarUnidadesClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnMostrarUnidadesClick(Sender: TObject);
    procedure btnSairUnidadesClick(Sender: TObject);
    procedure dbgUnidadesDblClick(Sender: TObject);
    procedure btnCancelarcaduniClick(Sender: TObject);
    procedure rgUnidadesClick(Sender: TObject);
    procedure edtBuscarUnidadesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAtualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtDescUnidKeyPress(Sender: TObject; var Key: Char);
    procedure edtUnidadesKeyPress(Sender: TObject; var Key: Char);
    procedure edtUnidadesExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public

  end;

var
  frmCadastroUnidades: TfrmCadastroUnidades;

implementation

uses
  dConexao, fPrincipal;

{$R *.dfm}

procedure TfrmCadastroUnidades.btnAlterarClick(Sender: TObject);
begin
  dtmConexao.GravandoLog('Cadastro de unidades', 'Alterou dados');
  dtmConexao.qryConsultaUnidades.Edit;
  frmCadastroUnidades.pgcTabelaUnidades.ActivePageIndex := 1;
  frmCadastroUnidades.edtDescUnid.SetFocus;
end;

procedure TfrmCadastroUnidades.btnAtualizarClick(Sender: TObject);
begin

  dtmConexao.qryConsultaUnidades.Refresh;
end;

procedure TfrmCadastroUnidades.btnCadastrarUnidadesClick(Sender: TObject);
begin
  if Trim(edtDescUnid.text) = '' then
  begin
    ShowMessage('Preecha a descrição da unidade');
    edtDescUnid.SetFocus;
  end
  else if Trim(edtUnidades.text) = '' then
  begin
    ShowMessage('Preecha a unidade');
    edtUnidades.SetFocus;
  end
  else
  begin
    dtmConexao.GravandoLog('Cadastro de unidades', 'Incluiu dados');
    dtmConexao.qryConsultaUnidades.Post;
    ShowMessage('Unidade Cadastrada com sucesso');

    frmCadastroUnidades.tsCadastroUnid.TabVisible := False;
    frmCadastroUnidades.tsConsultaUnid.TabVisible := True;
    dtmConexao.qryConsultaUnidades.Close;
    frmCadastroUnidades.pgcTabelaUnidades.ActivePageIndex := 0;
    dtmConexao.MostrarUnidades;
  end;
end;

procedure TfrmCadastroUnidades.btnCancelarcaduniClick(Sender: TObject);
begin
  dtmConexao.qryConsultaUnidades.Cancel;
  frmCadastroUnidades.pgcTabelaUnidades.ActivePageIndex := 0;
end;

procedure TfrmCadastroUnidades.btnExcluirClick(Sender: TObject);
begin
  if dtmConexao.qryConsultaUnidades.IsEmpty then
  begin

    ShowMessage('Registros Zerado');
  end
  else
  begin

    case Application.MessageBox
      (PWideChar('Deseja excluir ' + (dbgUnidades.columns.items[0].Field.Text) +
      '?'), 'Excluir Unidade', MB_YESNO + MB_ICONQUESTION) of
      IDYES:

        begin
          dtmConexao.GravandoLog('Cadastro de unidades', 'Excluiu dados');
          dtmConexao.qryConsultaUnidades.Delete;
          dtmConexao.qryConsultaUnidades.Refresh;
          ShowMessage('Unidade excluida');

        end;
      IDNO:
        begin
          exit;
        end;
    end;
  end;
end;

procedure TfrmCadastroUnidades.btnIncluirClick(Sender: TObject);
begin
  tsConsultaUnid.TabVisible := False;
  tsCadastroUnid.TabVisible := True;

  dtmConexao.qryConsultaUnidades.Active := True;
  dtmConexao.qryConsultaUnidades.Insert;
  frmCadastroUnidades.pgcTabelaUnidades.ActivePageIndex := 1;
  frmCadastroUnidades.edtDescUnid.SetFocus;

end;

procedure TfrmCadastroUnidades.btnMostrarUnidadesClick(Sender: TObject);
begin
  dtmConexao.MostrarUnidades;
  edtBuscarUnidades.Text := '';
  edtBuscarUnidades.SetFocus;
  rgUnidades.ItemIndex := 0;
end;

procedure TfrmCadastroUnidades.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroUnidades.btnSairUnidadesClick(Sender: TObject);
begin
  if dtmConexao.qryConsultaUnidades.State in [dsInsert, dsEdit] then
  begin
    ShowMessage('Salve ou Cancele o registro antes de sair');
  end

  else
  // se não, só fecha//

  begin
    frmCadastroUnidades.pgcTabelaUnidades.ActivePageIndex := 0;
  end;

end;

procedure TfrmCadastroUnidades.dbgUnidadesDblClick(Sender: TObject);
begin
  btnAlterar.Click;

end;

procedure TfrmCadastroUnidades.edtBuscarUnidadesChange(Sender: TObject);
begin
  dtmConexao.qryConsultaUnidades.Close;
  dtmConexao.qryConsultaUnidades.Sql.Clear;
  dtmConexao.qryConsultaUnidades.Sql.Add('SELECT * FROM UNIDADES ');

  case rgUnidades.ItemIndex of
    0:

      begin
        dtmConexao.qryConsultaUnidades.Sql.Add('WHERE upper(DESCRICAO) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarUnidades.Text + '%')));

      end;

    1:

      begin
        dtmConexao.qryConsultaUnidades.Sql.Add('WHERE upper(UNIDADE) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarUnidades.Text + '%')));
      end;

  end;
  dtmConexao.qryConsultaUnidades.Sql.Add('order by DESCRICAO');
  dtmConexao.qryConsultaUnidades.Open;

end;

procedure TfrmCadastroUnidades.edtDescUnidKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TfrmCadastroUnidades.edtUnidadesExit(Sender: TObject);
begin
  btnCadastrarUnidades.SetFocus;
end;

procedure TfrmCadastroUnidades.edtUnidadesKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TfrmCadastroUnidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dtmConexao.qryConsultaUnidades.Cancel;
  frmCadastroUnidades.pgcTabelaUnidades.ActivePageIndex := 0;
end;

procedure TfrmCadastroUnidades.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if (Key = #13) then
        begin
            Key := #0;
            Perform(WM_NEXTDLGCTL, 0, 0);
        end;
end;

procedure TfrmCadastroUnidades.FormShow(Sender: TObject);
begin
  dtmConexao.MostrarUnidades;
  edtBuscarUnidades.SetFocus;
  dtmConexao.CustomizaTela(self);
end;

procedure TfrmCadastroUnidades.rgUnidadesClick(Sender: TObject);
begin
  case rgUnidades.ItemIndex of
    0:
      begin
        lblBuscarunid.Caption := 'Digite a Descrição da unidade';
        lblBuscarunid.Visible := True;
        edtBuscarUnidades.Clear;
      end;

    1:
      begin
        lblBuscarunid.Caption := 'Digite a unidade';
        lblBuscarunid.Visible := True;
        edtBuscarUnidades.Clear;
      end;
  end;
end;

end.
