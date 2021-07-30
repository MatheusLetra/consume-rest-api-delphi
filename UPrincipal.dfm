object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 343
  ClientWidth = 610
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Usuário: TLabel
    Left = 39
    Top = 21
    Width = 64
    Height = 16
    Caption = 'Username'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 39
    Top = 106
    Width = 13
    Height = 16
    Caption = 'ID'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 39
    Top = 155
    Width = 37
    Height = 16
    Caption = 'Name'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 39
    Top = 204
    Width = 94
    Height = 16
    Caption = 'E-mail Address'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 39
    Top = 43
    Width = 465
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 508
    Top = 41
    Width = 75
    Height = 25
    Caption = 'Search'
    TabOrder = 1
    OnClick = Button1Click
  end
  object IDEdit: TEdit
    Left = 39
    Top = 128
    Width = 113
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object NameEdit: TEdit
    Left = 39
    Top = 177
    Width = 233
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object MailEdit: TEdit
    Left = 39
    Top = 226
    Width = 233
    Height = 21
    Enabled = False
    TabOrder = 4
  end
  object RadioGroup1: TRadioGroup
    Left = 39
    Top = 270
    Width = 233
    Height = 49
    Caption = 'Level'
    Columns = 2
    Enabled = False
    Items.Strings = (
      'Admin'
      'Client')
    TabOrder = 5
  end
  object Button2: TButton
    Left = 296
    Top = 296
    Width = 208
    Height = 23
    Caption = 'Copy Image Profile URL to Clipboard'
    TabOrder = 6
    OnClick = Button2Click
  end
  object RESTClient1: TRESTClient
    Params = <>
    Left = 624
    Top = 32
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 624
    Top = 104
  end
  object RESTResponse1: TRESTResponse
    Left = 624
    Top = 176
  end
end
