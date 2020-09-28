unit Unit1;

interface

uses
  System.IOUtils, System.IniFiles, Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    rgSex: TRadioGroup;
    rbMan: TRadioButton;
    rbWoman: TRadioButton;
    Label3: TLabel;
    edtAge: TEdit;
    edtName: TEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    chk1: TCheckBox;
    chk2: TCheckBox;
    cbbAddress: TComboBox;
    Label5: TLabel;
    btnSave: TButton;
    procedure btnSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ConfigPath: string;

implementation

{$R *.dfm}

procedure TForm1.btnSaveClick(Sender: TObject);
var
  IniFile: TIniFile;
  Section: string;
begin
//�����ļ�
  IniFile := TIniFile.Create(ConfigPath);
  Section := 'basic';
  IniFile.WriteString(Section, 'editName', edtName.Text);
  IniFile.WriteString(Section, 'editAge', edtAge.Text);
  IniFile.WriteBool(Section, 'man', rbMan.Checked);
  IniFile.WriteBool(Section, 'chk1', chk1.Checked);
  IniFile.WriteBool(Section, 'chk2', chk2.Checked);
  IniFile.WriteInteger(Section, 'address', cbbAddress.ItemIndex);
  //ShowMessage(TDirectory.GetCurrentDirectory());
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  Inifile: TIniFile;
begin
  ConfigPath := TDirectory.GetCurrentDirectory() + '\UserConfig.ini';
  Inifile := TIniFile.Create(ConfigPath);
  edtName.Text := Inifile.ReadString('basic', 'editName', '');
  edtAge.Text := Inifile.ReadString('basic', 'editAge', '');
  rbMan.Checked := Inifile.ReadBool('basic', 'man', False);
  rbWoman.Checked := not rbMan.Checked;
  chk1.Checked := Inifile.ReadBool('basic', 'chk1', False);
  chk2.Checked := Inifile.ReadBool('basic', 'chk2', False);
  cbbAddress.ItemIndex := Inifile.ReadInteger('basic', 'address', 0);
end;

end.

