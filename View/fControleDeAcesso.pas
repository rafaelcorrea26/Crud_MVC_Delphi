unit fControleDeAcesso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmControleDeAcessos = class(TForm)
    PageControl1: TPageControl;
    tbControleDeAcessos: TTabSheet;
    Panel1: TPanel;
    Principal: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Panel2: TPanel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    Edit7: TEdit;
    Label7: TLabel;
    Edit8: TEdit;
    Label8: TLabel;
    Edit9: TEdit;
    Label9: TLabel;
    Edit10: TEdit;
    Label10: TLabel;
    Edit11: TEdit;
    Label11: TLabel;
    Edit12: TEdit;
    Label12: TLabel;
    Edit13: TEdit;
    Label13: TLabel;
    Edit14: TEdit;
    Label14: TLabel;
    Edit15: TEdit;
    Label15: TLabel;
    Edit16: TEdit;
    Label16: TLabel;
    Edit17: TEdit;
    Label17: TLabel;
    Edit18: TEdit;
    Label18: TLabel;
    Edit19: TEdit;
    Label19: TLabel;
    Edit20: TEdit;
    Label20: TLabel;
    Edit21: TEdit;
    Label21: TLabel;
    Edit22: TEdit;
    Label22: TLabel;
    Edit23: TEdit;
    Label23: TLabel;
    Edit24: TEdit;
    Label24: TLabel;
    btnSalvar: TButton;
    btnSair: TButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControleDeAcessos: TfrmControleDeAcessos;

implementation

{$R *.dfm}

procedure TfrmControleDeAcessos.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if (Key = #13) then
        begin
            Key := #0;
            Perform(WM_NEXTDLGCTL, 0, 0);
        end;
end;

end.
