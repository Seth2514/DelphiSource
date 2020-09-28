unit Unit1;

interface

uses
  DaoUnit, Unit2, AddFormUnit, System.Generics.Collections, Winapi.Windows,
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

//ȫ�����������ѧ����Ϣ
var
  Students: TDictionAry<Integer, TStudent>;

implementation

{$R *.dfm}

procedure TMainForm.Button1Click(Sender: TObject);
var
  AddForm: TFormAdd;
begin
  AddForm := TFormAdd.Create(Self);
  AddForm.Left := Self.Left + 100;
  AddForm.Top := Self.Top + 50;
  AddForm.ShowModal;
end;

procedure TMainForm.Button2Click(Sender: TObject);
var
  DictionAry: TDictionAry<string, TStudent>;
  Stu: TStudent;
begin
Memo1.Lines.Clear;
  DictionAry := TDao.ListStu();

  for Stu in DictionAry.Values do begin
    Memo1.Lines.Add(Stu.Id + ',' + Stu.Name + ',' + Stu.Age.ToString);
  end;

end;

procedure TMainForm.Button4Click(Sender: TObject);
begin
TDao.clear;
Memo1.Lines.Clear;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  //��ʼ��
  Students := TDictionAry<Integer, TStudent>.Create();
end;

end.

