program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

{*------------------------------------------------------------------------------
1����Ԫ
        ʲô�ǵ�Ԫ
        ΪʲôҪʹ�õ�Ԫ
                1���������Ǵ���ά��

                2���Դ�����з��ű��������

        ��ôʹ��
2������
        1�����ʵĿɼ���(����Ȩ�����η�)
                1��private��˽��
                2��public��������
                3��protected:�ܱ����ģ�

                ���ĳ���ֶλ��߷������ùؼ������Σ���ô���ֶ�ֻ�����������з���
                4��published
-------------------------------------------------------------------------------}

uses
  System.SysUtils,
  uTools in 'uTools.pas',
  Unit1 in 'Unit1.pas';

var
  Person: TPerson;

begin
  Person := TPerson.Create;
  Writeln(Person.Name);
  Person.Age := 18;
  Writeln(Person.age);

  Readln;
end.

