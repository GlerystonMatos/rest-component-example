object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'REST Component Example'
  ClientHeight = 604
  ClientWidth = 343
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbUser: TLabel
    Left = 8
    Top = 13
    Width = 26
    Height = 13
    Caption = 'User:'
  end
  object lbPassword: TLabel
    Left = 8
    Top = 40
    Width = 50
    Height = 13
    Caption = 'Password:'
  end
  object lbEndpoint: TLabel
    Left = 8
    Top = 68
    Width = 46
    Height = 13
    Caption = 'Endpoint:'
  end
  object lbRequest: TLabel
    Left = 8
    Top = 125
    Width = 44
    Height = 13
    Caption = 'Request:'
  end
  object lbResponse: TLabel
    Left = 8
    Top = 365
    Width = 51
    Height = 13
    Caption = 'Response:'
  end
  object btnSendPost: TBitBtn
    Left = 8
    Top = 94
    Width = 328
    Height = 25
    Caption = 'Send Post - Basic Authentication'
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 0
    OnClick = btnSendPostClick
  end
  object edtUser: TEdit
    Left = 40
    Top = 10
    Width = 296
    Height = 21
    TabOrder = 1
  end
  object edtPassword: TEdit
    Left = 62
    Top = 37
    Width = 274
    Height = 21
    TabOrder = 2
  end
  object edtEndpoint: TEdit
    Left = 62
    Top = 65
    Width = 274
    Height = 21
    TabOrder = 3
  end
  object mRequest: TMemo
    Left = 8
    Top = 144
    Width = 328
    Height = 209
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object mResponse: TMemo
    Left = 8
    Top = 384
    Width = 328
    Height = 209
    ScrollBars = ssVertical
    TabOrder = 5
  end
  object client: TRESTClient
    Authenticator = basicAuthenticator
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    AcceptEncoding = 'identity'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 363
    Top = 14
  end
  object request: TRESTRequest
    Client = client
    Method = rmPOST
    Params = <
      item
        Kind = pkREQUESTBODY
        name = 'body'
        Options = [poDoNotEncode]
        ContentType = ctAPPLICATION_JSON
      end>
    Response = response
    SynchronizedEvents = False
    Left = 403
    Top = 14
  end
  object response: TRESTResponse
    ContentType = 'application/json'
    Left = 451
    Top = 14
  end
  object basicAuthenticator: THTTPBasicAuthenticator
    Left = 523
    Top = 14
  end
end
