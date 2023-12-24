unit FPrincipalProxy;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,  Proxy.Model.Interfaces, Proxy.Model.TipoDebCred;

type
  TfrmProxy = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    c: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FProxyTipoDebCred: iProxyTipoDebCred;

  public
    { Public declarations }
  end;

var
  frmProxy: TfrmProxy;

implementation

uses
  Proxy.Model.Produto.Proxy;

{$R *.dfm}

procedure TfrmProxy.BitBtn1Click(Sender: TObject);
begin
 Memo1.Lines.Add('BUSCANDO PRODUTO:' + Edit1.Text  + 'AGUARDE!');
 FProxyTipoDebCred.ConsultaCodReduzido(Edit1.Text);
 Memo1.Lines.Add('PRODUTO ENCONTRADO...');
end;

procedure TfrmProxy.FormCreate(Sender: TObject);
begin
  FProxyTipoDebCred := TProxyModelProdutoProxy.New;
end;

end.
