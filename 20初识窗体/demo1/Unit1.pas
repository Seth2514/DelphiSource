unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btnMsg: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btnMsgClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    {��Ϣ���}
    procedure ShowMyMsg(var Msg: TMessage); message WM_USER + 1;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  ShowMessage('Hello World');
  Application.MessageBox('HelloWorld', PWideChar('��ܰ��ʾ'), 3);
  end;

procedure TForm1.btnMsgClick(Sender: TObject);
begin
    //������Ϣ
  SendMessage(Self.Handle, WM_USER + 1, 101, Integer(PChar('���')));
end;

{��Ϣ������̸ù��������ֶ�(��ʾ)����}
procedure TForm1.ShowMyMsg(var Msg: TMessage);
begin
  ShowMessage(PChar(Msg.LParam));
end;

end.

