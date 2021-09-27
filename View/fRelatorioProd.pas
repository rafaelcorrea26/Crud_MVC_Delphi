unit fRelatorioProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ComCtrls;

type
  TfrmRelatorioProd = class(TForm)
    pnlCadastro: TPanel;
    lblrelprod: TLabel;
    pnledts: TPanel;
    rgrelprod: TRadioGroup;
    lbldataini: TLabel;
    lbldatefin: TLabel;
    pnlbtsrel: TPanel;
    btnVisualizarRel: TButton;
    btnSairRel: TButton;
    chkDescrescente: TCheckBox;
    lblOrdem: TLabel;
    pgcRelProd: TPageControl;
    tsRelProd: TTabSheet;
    dtDataInicial: TDateTimePicker;
    dtDataFinal: TDateTimePicker;
    procedure btnVisualizarRelClick(Sender: TObject);
    procedure dtDataInicialKeyPress(Sender: TObject; var Key: Char);
    procedure dtDataFinalKeyPress(Sender: TObject; var Key: Char);
    procedure dtDataFinalExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSairRelClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioProd: TfrmRelatorioProd;

implementation

uses
  dConexao;

{$R *.dfm}

procedure TfrmRelatorioProd.btnSairRelClick(Sender: TObject);
begin
  close;
end;

procedure TfrmRelatorioProd.btnVisualizarRelClick(Sender: TObject);
var
  Data1, Data2: string;

begin
  If dtDataFinal.Date < dtDataInicial.Date Then
  begin
    ShowMessage('Intervalo de datas inválido. A data inicial não pode ser posterior a data final!');
    dtDataFinal.Date := dtDataInicial.Date;
  end
  else
  begin
    Data1 := DateToStr(dtDataInicial.Date);
    Data2 := DateToStr(dtDataFinal.Date);

    dtmConexao.qryImpRelProd.close;
    dtmConexao.qryImpRelProd.SQL.Clear;
    dtmConexao.qryImpRelProd.SQL.Add('    SELECT                                         ');
    dtmConexao.qryImpRelProd.SQL.Add('PRODUTOS.ID,                                       ');
    dtmConexao.qryImpRelProd.SQL.Add('PRODUTOS.descricao,                                ');
    dtmConexao.qryImpRelProd.SQL.Add('PRODUTOS.id_unidade,                               ');
    dtmConexao.qryImpRelProd.SQL.Add('PRODUTOS.COD_BARRAS,                               ');
    dtmConexao.qryImpRelProd.SQL.Add('PRODUTOS.PRECO_VISTA,                              ');
    dtmConexao.qryImpRelProd.SQL.Add('PRODUTOS.PRECO_PRAZO,                              ');
    dtmConexao.qryImpRelProd.SQL.Add('PRODUTOS.SALDO,                                    ');
    dtmConexao.qryImpRelProd.SQL.Add('UNIDADES.unidade,                                  ');
    dtmConexao.qryImpRelProd.SQL.Add('PRODUTOS.DATA_CAD                                  ');
    dtmConexao.qryImpRelProd.SQL.Add('FROM PRODUTOS                                      ');
    dtmConexao.qryImpRelProd.SQL.Add('INNER JOIN UNIDADES                                ');
    dtmConexao.qryImpRelProd.SQL.Add('ON (PRODUTOS.ID_UNIDADE = UNIDADES.ID)             ');
    dtmConexao.qryImpRelProd.SQL.Add('WHERE DATA_CAD >= :pData1 and DATA_CAD <= :pData2  ');

    dtmConexao.qryImpRelProd.ParamByName('pData1').AsDate := dtDataInicial.Date;
    dtmConexao.qryImpRelProd.ParamByName('pData2').AsDate := dtDataFinal.Date;

    case rgrelprod.ItemIndex of
      0:

        begin

          dtmConexao.qryImpRelProd.SQL.Add('ORDER BY ID');

        end;

      1:

        begin
          dtmConexao.qryImpRelProd.SQL.Add('ORDER BY DESCRICAO');
        end;
    end;

    if chkDescrescente.Checked = True then
    begin
      dtmConexao.qryImpRelProd.SQL.Add('  desc');
    end;

    dtmConexao.qryImpRelProd.Open;
    dtmConexao.frxReport1.LoadFromFile(GetCurrentDir + '\Rel\Relatorio_Produtos.fr3');
    dtmConexao.frxReport1.ShowReport();

  end;

end;

procedure TfrmRelatorioProd.dtDataFinalExit(Sender: TObject);
begin
  btnVisualizarRel.SetFocus;
end;

procedure TfrmRelatorioProd.dtDataFinalKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TfrmRelatorioProd.dtDataInicialKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TfrmRelatorioProd.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure TfrmRelatorioProd.FormShow(Sender: TObject);
begin
  dtDataInicial.Date := now - 30;
  dtDataFinal.Date := now;
  dtmConexao.CustomizaTela(self);
end;

end.
