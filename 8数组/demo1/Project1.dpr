program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
  {
    ����
      ��ʲô
        ����һ����Ŵ����һ��������ͬ���ݵ�����
      ��ʲô��
        �������ڹ�����ͬ���ݵ�����ʱ��Ϊ����

      ��ô��
        ����
          array[indexType1,...,indexTypen] of baseType;
        ע������
          1��������ʹ��֮ǰ����Ҫ��������(�±ꡢԪ������)
  }

type
  MyArray = array[0..4] of Char;

var
  NameArray: MyArray;

  Indexs:Integer;
  Elem:Char;
  {����Ԫ�ر���1}
procedure ListArray();
begin
  for Indexs := Low(NameArray) to High(NameArray) do    begin
      Writeln(NameArray[Indexs]);
  end;
end;
begin
  NameArray[0] := 'a';
  NameArray[1] := 's';
  NameArray[2] := 'c';
  NameArray[3] := 'd';
  NameArray[4] := 'e';

  for Elem in NameArray do
  begin
      Writeln(Elem);
  end;

  Writeln(Length(NameArray));


  Readln;
end.

