program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

  {*------------------------------------------------------------------------------
    1��������ʲô
              Delphi�ж��еĳƺ�����ʵ����ֻ�ǽ�����ĳһ�����ܵĴ���Ƭ�ν��з�װ
              ���������ʽ��

                1������

                2������

                ���̺ͺ���������������û�з���ֵ

    2�����̵�����
          1�����Խ��������ͻ������
          2��������Ǵ�����ظ�������
          3��������Ǵ���Ŀ�ά����

    3����ôʹ������
          1������
          2������
  -----------------------------------------------------------------------------}
{��ֵ}
procedure Add(A: Integer; B: Integer);
begin
     Writeln(A, B);
  A := 103;
end;

{*------------------------------------------------------------------------------
  �����Ķ���

  @return
-------------------------------------------------------------------------------}
{��ַ}
function Demo2(var A: Integer; B: Integer): Integer;
begin
  Writeln(A, B);
  A := 101;
  Result := 0;
end;

{���ݵĲ����������̶�}
procedure Demo1(const Number: array of Integer);
begin

end;

{���ò�����Ĭ��ֵ}
procedure Demo3(a: Integer; b: Integer = 100);
begin
  Writeln(a, ',', b);
end;

var
  X, Y: Integer;

const
  Age: Integer = 100;

begin
  X := 299;
  Y := 300;
  Demo2(X, Y);
  Writeln('----',X);

  Add(X,Y);
    Writeln('****',X);
  Readln;

end.

