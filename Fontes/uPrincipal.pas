unit uPrincipal;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, IdSSLOpenSSL,
  IPPeerClient, REST.Client, REST.Authenticator.Basic, Data.Bind.Components,
  Data.Bind.ObjectScope;

type
  TfrmPrincipal = class(TForm)
    btnSendPost: TBitBtn;
    client: TRESTClient;
    request: TRESTRequest;
    response: TRESTResponse;
    basicAuthenticator: THTTPBasicAuthenticator;
    lbUser: TLabel;
    edtUser: TEdit;
    edtPassword: TEdit;
    lbPassword: TLabel;
    edtEndpoint: TEdit;
    lbEndpoint: TLabel;
    mRequest: TMemo;
    lbRequest: TLabel;
    lbResponse: TLabel;
    mResponse: TMemo;
    procedure btnSendPostClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnSendPostClick(Sender: TObject);
begin
  basicAuthenticator.Username := Trim(edtUser.Text);
  basicAuthenticator.Password := Trim(edtPassword.Text);
  client.BaseURL := Trim(edtEndpoint.Text);
  request.Params[0].Value := mRequest.Lines.Text;
  request.Execute;
  mResponse.Lines.Clear;
  mResponse.Lines.Text := response.Content;
end;

end.

