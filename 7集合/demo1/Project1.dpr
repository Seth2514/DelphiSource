program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.TypInfo,
  System.SysUtils;

  {���׼�Ķ��巽ʽ}
type
  TMySet = set of Char;

  TMySet1 = set of'a'..'z';

  Int = Integer;

type
  {����һ��ö��}
  Tcolors = (RED, GREEN, BLUE);

type
  TSetColors = set of Tcolors;

var
{�൱�ڼ�д}
  TMySet2: set of 1..2;
  MSet: TMyset;
  {type����Ҫ���������û�(����Ա)�����Զ�������}
  indexs: Int;
procedure ListSet();
begin
{��������Ԫ�أ������}
  for indexs := ord(Low(Tcolors)) to Ord(High(Tcolors)) do begin
    Writeln(GetEnumName(TypeInfo(TColors), indexs));
  end;
end;


begin

  MSet:=['z','x'];
  Readln;
end.

