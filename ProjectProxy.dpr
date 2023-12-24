program ProjectProxy;

uses
  Vcl.Forms,
  FPrincipalProxy in 'FPrincipalProxy.pas' {frmProxy},
  Proxy.Model.Interfaces in 'Controller\Proxy.Model.Interfaces.pas',
  Proxy.Model.TipoDebCred in 'Model\Proxy.Model.TipoDebCred.pas',
  Proxy.Model.Produto.Proxy in 'Model\Proxy.Model.Produto.Proxy.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmProxy, frmProxy);
  Application.Run;
end.
