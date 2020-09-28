unit AddFormUnit;

interface

uses
  System.Generics.Collections, System.StrUtils, Unit2, DaoUnit, Winapi.Windows,
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormAdd = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EdtName: TEdit;
    EdtAge: TEdit;
    BtnSave: TButton;
    BtnCancel: TButton;
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAdd: TFormAdd;

implementation

uses
  Unit1;
{$R *.dfm}

procedure TFormAdd.BtnCancelClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormAdd.BtnSaveClick(Sender: TObject);
var
  DictionAry: TDictionAry<string, TStudent>;
  key: string;
  Stu: TStudent;
begin

  TDao.Add(TStudent.Create(TGUID.NewGuid.ToString, EdtName.Text, StrToInt(EdtAge.Text)));
  Self.Close;
  MainForm.Memo1.Lines.Clear;
  DictionAry := TDao.ListStu();
  //�ڶ��ֱ�����ʽ
  for key in DictionAry.Keys do begin
    DictionAry.TryGetValue(key, Stu);
    MainForm.Memo1.Lines.Add(Stu.Id + ',' + Stu.Name + ',' + Stu.Age.ToString);
  end;
end;

end.

