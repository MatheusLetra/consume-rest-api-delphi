unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, Vcl.StdCtrls, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, System.JSON, Vcl.ExtCtrls, ClipBrd;

const
  BASE_URL = 'http://localhost:3000/users';

type
  TForm1 = class(TForm)
    Usuário: TLabel;
    Edit1: TEdit;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Button1: TButton;
    IDEdit: TEdit;
    NameEdit: TEdit;
    MailEdit: TEdit;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    ImageURL : String;
    function getUserByUsername(username: String): String;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  UserList: TJSONArray;
  UserObject: TJsonObject;
  Item: Integer;
begin
  IDEdit.Text   := '';
  NameEdit.Text := '';
  MailEdit.Text := '';
  RadioGroup1.ItemIndex := -1;
  ImageURL := '';

  UserList := TJsonObject.ParseJSONValue
    (TEncoding.ASCII.GetBytes(getUserByUsername(Trim(Edit1.Text))), 0)
    as TJSONArray;

  if UserList.Count >= 1 then
  begin
    UserObject    := UserList.Items[0] as TJsonObject;
    IDEdit.Text   := UserObject.Values['user_id'].Value;
    NameEdit.Text := UserObject.Values['full_name'].Value;
    MailEdit.Text := UserObject.Values['email'].Value;
    RadioGroup1.ItemIndex := StrToInt(UserObject.Values['level'].Value);
    ImageURL := UserObject.Values['profile_image'].Value;
  end
  else
    ShowMessage('User Not Found!');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if Trim(ImageURL) <> '' then
    Clipboard.AsText := ImageURL
  else
    ShowMessage('Image Profile URL is Empty!');
end;

function TForm1.getUserByUsername(username: String): String;
begin
  RESTClient1.BaseURL := BASE_URL + '/user/' + username;
  RESTRequest1.Method := rmGET;
  RESTRequest1.Execute;
  Result := RESTRequest1.Response.JSONText;
end;

end.
