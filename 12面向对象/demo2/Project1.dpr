program Project1;

{$APPTYPE CONSOLE}

{$R *.res}
{*------------------------------------------------------------------------------
    1����ô��ȥ����һ����
          ��ĳ�Ա���
                  ���ԡ���Ա�������ֶ�

                  ���ܣ����������������̡�����

    2����δ���һ����Ķ���

    3���������������
          һ������Ӵ����������Ĺ������ǳ�Ϊ�ö������������

          1������Ĵ���
                  1�����췽�� constructor
                        a)���ڴ�������һ���ڴ�ռ䣬�Ӷ�ʵ�ֶ���Ĵ���
                        b)��ʼ�����Ա�Ĺ���
          2�����������    destructor
                  1��free;
                  2��Destroy;
                  3��freeAndNil��
                  4��nil   ��ֵnull   ����
          3��self����ʾ�������
                  1��Ϊ�˽��������ͻ

    4��Delphi�е�Ԫ�ĸ���


-------------------------------------------------------------------------------}

uses
  System.SysUtils;

type
  TUser = class
        {�ֶ�}
    FName: string;
    //����
    constructor Aaa(Name: string); overload;
    constructor Aaa(); overload;
        {����������}
    procedure SetName(Name: string);
        {���ٶ���ķ�����   ���ǡ���д}
    destructor Destroy(); override;
  end;


{ TUser }
{���췽��}

constructor TUser.Aaa(Name: string);
begin
//��ʼ��
  FName := Name;
end;

constructor TUser.Aaa;
begin

end;

{���ٶ���ķ���ʵ��}
destructor TUser.Destroy;
begin
  {���ø������ٶ���ķ���}
  Writeln('���ø������ٶ���ķ���');
  inherited;
end;

procedure TUser.SetName(Name: string);
begin
  FName := Name;
end;

var
  User: TUser;

begin
    {ͨ����Ĺ��췽��������һ����Ķ���}
  User := TUser.Aaa('aaa');
    //�����ֶ�
  User.FName := '����';

  Writeln(User.FName);
  //���ٶ���ģ�巽�����ģʽ
//  User.Free();
//    Writeln(User.FName);
  FreeAndNil(User);

  Readln;
end.

