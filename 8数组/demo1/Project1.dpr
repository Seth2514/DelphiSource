program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
  {
    数组
      是什么
        按照一定编号存放了一堆类型相同数据的容器
      干什么用
        让我们在管理相同数据的数据时更为方便

      怎么用
        定义
          array[indexType1,...,indexTypen] of baseType;
        注意事项
          1、数组在使用之前必须要声明长度(下标、元素总数)
  }

type
  MyArray = array[0..4] of Char;

var
  NameArray: MyArray;

  Indexs:Integer;
  Elem:Char;
  {数字元素遍历1}
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

