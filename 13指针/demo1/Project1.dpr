program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

{*------------------------------------------------------------------------------
    1��ʲô��ָ��
        һ���洢���ڴ��ַ�ı���
    2��Ϊʲôʹ��ָ��
        Ч�ʸ�
    3��ָ����ôʹ��

        ����ָ��
                ������ȷ����������
        ������ָ��  void*
                û���������ͣ�����ָ���κε�ַ

        @       ��ȡ��ַ
        ^       ����ָ��


  -------------------------------------------------------------------------------}
type
  {����һ���������͵�ָ��}
  TFunctionParameter = function(const value: Integer): string;

//����-ʵ��1
function One(const value: Integer): string;
begin
  result := IntToStr(value);
end;

{������Ǻ���ָ�������ʹ��}
function DynamicFunction(f: TFunctionParameter; const value: Integer): string;
begin
  result := f(value);
end;

var
    {�����ͱ���}
  i: Integer;

var
  {����һ���������͵�ָ��}
  PInt: ^Integer;
  //����ϵͳ��װ�õ�����ָ��
  PInt2: PInteger;
  //������ָ��
  Void: Pointer;

begin
  i := 100;
  Writeln(Integer(@i).ToHexString);
  //004258B8
  PInt := Pointer($004258B8);
  Writeln(Pint^);
  //��ʼ���������ڴ�ռ�
  New(PInt2);
  PInt2^ := 100;

  Writeln(Integer(PInt2));
  //�ͷ�
  Dispose(PInt2);

  //ͨ�����ַ�ʽ�ܹ�����һ��ָ����С�Ŀռ��ָ��
  GetMem(Void, 1024);

  FreeMem(Void);
  DynamicFunction(One,100);
  Readln;

end.

