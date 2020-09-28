program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.TypInfo,
  System.SysUtils;

  {最标准的定义方式}
type
  TMySet = set of Char;

  TMySet1 = set of'a'..'z';

  Int = Integer;

type
  {定义一个枚举}
  Tcolors = (RED, GREEN, BLUE);

type
  TSetColors = set of Tcolors;

var
{相当于简写}
  TMySet2: set of 1..2;
  MSet: TMyset;
  {type：主要作用是让用户(程序员)可以自定义类型}
  indexs: Int;
procedure ListSet();
begin
{便利集合元素：无序的}
  for indexs := ord(Low(Tcolors)) to Ord(High(Tcolors)) do begin
    Writeln(GetEnumName(TypeInfo(TColors), indexs));
  end;
end;


begin

  MSet:=['z','x'];
  Readln;
end.

