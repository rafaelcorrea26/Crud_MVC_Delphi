unit fFormas_pagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, IdBaseComponent,
  IdComponent,
  IdIPWatch;

type
  TfrmFormas_pagamentos = class(TForm)
    pgcFormas_pagamento: TPageControl;
    tsConsultaFormapgt: TTabSheet;
    pnlConsulta: TPanel;
    lblFromaspgt: TLabel;
    pnlbtnsformapgt: TPanel;
    btnIncluirformaspgt: TButton;
    btnSairformaspgt: TButton;
    btnAlterarformaspgt: TButton;
    btnExcluirformaspgt: TButton;
    btnMostrarformaspgt: TButton;
    pnledtformapgt: TPanel;
    grdFormaspgt: TDBGrid;
    lblbuscarformaspgt: TLabel;
    rgformaspgt: TRadioGroup;
    tsCadastroFormasPGT: TTabSheet;
    pnlCadastro: TPanel;
    lblCadastrounidades: TLabel;
    pnledtformaspgt: TPanel;
    edtDescricaoformapgt: TDBEdit;
    lblDescricaoformaspgt: TLabel;
    edtBuscarformaspgt: TEdit;
    pnl1: TPanel;
    btnCancelarformaspgt: TButton;
    btnSairUnidades: TButton;
    btnCadastrarformaspgt: TButton;
    procedure edtBuscarformaspgtChange(Sender: TObject);
    procedure rgformaspgtClick(Sender: TObject);
    procedure btnIncluirformaspgtClick(Sender: TObject);
    procedure btnAlterarformaspgtClick(Sender: TObject);
    procedure btnExcluirformaspgtClick(Sender: TObject);
    procedure btnMostrarformaspgtClick(Sender: TObject);
    procedure btnSairformaspgtClick(Sender: TObject);
    procedure grdFormaspgtDblClick(Sender: TObject);
    procedure btnCadastrarformaspgtClick(Sender: TObject);
    procedure btnSairUnidadesClick(Sender: TObject);
    procedure btnCancelarformaspgtClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtDescricaoformapgtExit(Sender: TObject);
    procedure edtDescricaoformapgtKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormas_pagamentos: TfrmFormas_pagamentos;

implementation

uses
  dConexao;

{$R *.dfm}

procedure TfrmFormas_pagamentos.btnAlterarformaspgtClick(Sender: TObject);
begin
  dtmConexao.GravandoLog('Cadastro de formas de pagamento',
    'Alteração de forma de pagamento');
  dtmConexao.qryConsultaFormaspgt.Edit;
  frmFormas_pagamentos.pgcFormas_pagamento.ActivePageIndex := 1;
  frmFormas_pagamentos.edtDescricaoformapgt.SetFocus;
end;

procedure TfrmFormas_pagamentos.btnCadastrarformaspgtClick(Sender: TObject);
begin
  if Trim(edtDescricaoformapgt.text) = '' then
  begin
    ShowMessage('Preecha a descrição da forma de pagamento');
    edtDescricaoformapgt.SetFocus;
  end
  else
  begin
    dtmConexao.GravandoLog('Cadastro de formas de pagamento',
      'Inclusão de forma de pagamento');
    dtmConexao.qryConsultaFormaspgt.Post;
    ShowMessage('Forma de pagamento cadastrada com sucesso');

    frmFormas_pagamentos.tsCadastroFormasPGT.TabVisible := False;
    frmFormas_pagamentos.tsConsultaFormapgt.TabVisible := True;
    dtmConexao.qryConsultaFormaspgt.Close;
    frmFormas_pagamentos.pgcFormas_pagamento.ActivePageIndex := 0;
    dtmConexao.MostrarForma_pagamento;
  end;

end;

procedure TfrmFormas_pagamentos.btnCancelarformaspgtClick(Sender: TObject);
begin
  dtmConexao.qryConsultaFormaspgt.Cancel;
  frmFormas_pagamentos.pgcFormas_pagamento.ActivePageIndex := 0;
end;

procedure TfrmFormas_pagamentos.btnExcluirformaspgtClick(Sender: TObject);
begin
  if dtmConexao.qryConsultaFormaspgt.IsEmpty then
  begin

    ShowMessage('Registros Zerado');
  end
  else
  begin

    case Application.MessageBox
      (PWideChar('Deseja excluir ' + (grdFormaspgt.columns.items[1].Field.Text)
      + '?'), 'Excluir Forma de pagamento', MB_YESNO + MB_ICONQUESTION) of
      IDYES:

        begin

          dtmConexao.GravandoLog('Cadastro de formas de pagamento',
            'Exclusão de forma de pagamento');
          dtmConexao.qryConsultaFormaspgt.Delete;
          dtmConexao.qryConsultaFormaspgt.Refresh;
          ShowMessage('Forma de pagamento excluida');

        end;
      IDNO:
        begin
          exit;
        end;
    end;
  end;
end;

procedure TfrmFormas_pagamentos.btnIncluirformaspgtClick(Sender: TObject);
begin
  tsConsultaFormapgt.TabVisible := False;
  tsCadastroFormasPGT.TabVisible := True;

  dtmConexao.qryConsultaFormaspgt.Active := True;
  dtmConexao.qryConsultaFormaspgt.Insert;
  frmFormas_pagamentos.pgcFormas_pagamento.ActivePageIndex := 1;
  frmFormas_pagamentos.edtDescricaoformapgt.SetFocus;

end;

procedure TfrmFormas_pagamentos.btnMostrarformaspgtClick(Sender: TObject);
begin
  dtmConexao.MostrarForma_pagamento;
  edtBuscarformaspgt.Text := '';
  edtBuscarformaspgt.SetFocus;
  rgformaspgt.ItemIndex := 0;
end;

procedure TfrmFormas_pagamentos.btnSairformaspgtClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFormas_pagamentos.btnSairUnidadesClick(Sender: TObject);
begin
  if dtmConexao.qryConsultaFormaspgt.State in [dsInsert, dsEdit] then
  begin
    ShowMessage('Salve ou Cancele o registro antes de sair');
  end

  else
  // se não, só fecha//

  begin
    frmFormas_pagamentos.pgcFormas_pagamento.ActivePageIndex := 0;
  end;
end;

procedure TfrmFormas_pagamentos.edtBuscarformaspgtChange(Sender: TObject);
begin
  dtmConexao.qryConsultaFormaspgt.Close;
  dtmConexao.qryConsultaFormaspgt.Sql.Clear;
  dtmConexao.qryConsultaFormaspgt.Sql.Add('SELECT * FROM FORMA_PAGAMENTO ');

  case rgformaspgt.ItemIndex of
    0:

      begin
        dtmConexao.qryConsultaFormaspgt.Sql.Add('WHERE upper(DESCRICAO) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarformaspgt.Text + '%')));

      end;

    1:

      begin
        dtmConexao.qryConsultaFormaspgt.Sql.Add('WHERE upper(ID) LIKE ' +
          QuotedStr('%' + AnsiUpperCase(edtBuscarformaspgt.Text + '%')));
      end;

  end;
  dtmConexao.qryConsultaFormaspgt.Sql.Add('order by DESCRICAO');
  dtmConexao.qryConsultaFormaspgt.Open;
end;

procedure TfrmFormas_pagamentos.edtDescricaoformapgtExit(Sender: TObject);
begin
  btnCadastrarformaspgt.SetFocus;
end;

procedure TfrmFormas_pagamentos.edtDescricaoformapgtKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TfrmFormas_pagamentos.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if (Key = #13) then
        begin
            Key := #0;
            Perform(WM_NEXTDLGCTL, 0, 0);
        end;
end;

procedure TfrmFormas_pagamentos.FormShow(Sender: TObject);
begin
  dtmConexao.CustomizaTela(self);
  dtmConexao.MostrarForma_pagamento;
  edtBuscarformaspgt.SetFocus;
end;

procedure TfrmFormas_pagamentos.grdFormaspgtDblClick(Sender: TObject);
begin
  btnAlterarformaspgt.Click;
end;

procedure TfrmFormas_pagamentos.rgformaspgtClick(Sender: TObject);
begin
  case rgformaspgt.ItemIndex of
    0:
      begin
        lblbuscarformaspgt.Caption := 'Digite a Descrição';
        lblbuscarformaspgt.Visible := True;
        edtBuscarformaspgt.Clear;
      end;

    1:
      begin
        lblbuscarformaspgt.Caption := 'Digite a ID';
        lblbuscarformaspgt.Visible := True;
        edtBuscarformaspgt.Clear;
      end;
  end;
end;

end.
