unit fRelClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, IdBaseComponent, IdComponent,
  IdIPWatch;

type
  TfrmRelClientes = class(TForm)
    pnlCadastro: TPanel;
    pnlrelclientesvisualizar: TPanel;
    lblrelprod: TLabel;
    dtpDataNascIni: TDateTimePicker;
    dtpDataNascFin: TDateTimePicker;
    pnlrelclientesbtns: TPanel;
    lblDataNascIni: TLabel;
    lblDataNascFin: TLabel;
    rgRelClientes: TRadioGroup;
    lblRelOrdemClientes: TLabel;
    chkDescrescenteClientes: TCheckBox;
    btnVisualizarRelClientes: TButton;
    btnSairRelClientes: TButton;
    procedure btnVisualizarRelClientesClick(Sender: TObject);
    procedure dtpDataNascIniKeyPress(Sender: TObject; var Key: Char);
    procedure dtpDataNascFinKeyPress(Sender: TObject; var Key: Char);
    procedure dtpDataNascFinExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSairRelClientesClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelClientes: TfrmRelClientes;

implementation

uses
  dConexao;

{$R *.dfm}

procedure TfrmRelClientes.btnSairRelClientesClick(Sender: TObject);
begin
  close;

end;

procedure TfrmRelClientes.btnVisualizarRelClientesClick(Sender: TObject);
var
  Data1, Data2: string;

begin
  If dtpDataNascFin.Date < dtpDataNascIni.Date Then
  begin
    ShowMessage
      ('Intervalo de datas inválido. A data inicial não pode ser posterior a data final!');
    dtpDataNascFin.Date := dtpDataNascIni.Date;
  end
  else
  begin
    Data1 := DateToStr(dtpDataNascIni.Date);
    Data2 := DateToStr(dtpDataNascFin.Date);

    dtmConexao.qryImpRelClientes.close;
    dtmConexao.qryImpRelClientes.SQL.Clear;
    dtmConexao.qryImpRelClientes.SQL.Add('SELECT * FROM CLIENTES ');

    dtmConexao.qryImpRelClientes.SQL.Add
      ('WHERE CLI_DATA_CAD >= :pData1 and CLI_DATA_CAD <= :pData2  ');

    dtmConexao.qryImpRelClientes.ParamByName('pData1').AsDate :=
      dtpDataNascIni.Date;
    dtmConexao.qryImpRelClientes.ParamByName('pData2').AsDate :=
      dtpDataNascFin.Date;

    case rgRelClientes.ItemIndex of
      0:

        begin

          dtmConexao.qryImpRelClientes.SQL.Add('ORDER BY CLI_ID');

        end;

      1:

        begin
          dtmConexao.qryImpRelClientes.SQL.Add('ORDER BY CLI_NOME');
        end;
    end;

    if chkDescrescenteClientes.Checked = True then
    begin
      dtmConexao.qryImpRelClientes.SQL.Add('  desc');
    end;

    dtmConexao.qryImpRelProd.Open;
    dtmConexao.frxReport1.LoadFromFile
      (GetCurrentDir + '\Rel\Relatorio_clientes.fr3');
    dtmConexao.frxReport1.ShowReport();

  end;
end;

procedure TfrmRelClientes.dtpDataNascFinExit(Sender: TObject);
begin
  btnVisualizarRelClientes.SetFocus;
end;

procedure TfrmRelClientes.dtpDataNascFinKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TfrmRelClientes.dtpDataNascIniKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TfrmRelClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if (Key = #13) then
        begin
            Key := #0;
            Perform(WM_NEXTDLGCTL, 0, 0);
        end;
end;

procedure TfrmRelClientes.FormShow(Sender: TObject);
begin
  dtmConexao.CustomizaTela(self);
  dtpDataNascIni.Date := now - 30;
  dtpDataNascFin.Date := now;

end;

end.
