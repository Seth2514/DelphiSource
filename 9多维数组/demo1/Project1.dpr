program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

{声明一个动态的二维数组}

type
  TStringDynamicArray = array of array of string;
  {声明一个静态的二维数组}

type
  TStringStaticArray = array[0..3] of array[0..2] of string;

var
  DynamicNameArray: TStringDynamicArray;
  StaticNameArray: TStringStaticArray;

var
  indexs: Integer;
  I: Integer;
{初始化动态的二维数组}

procedure InitArray();
begin
  DynamicNameArray := [['你好', '中国', '世界'], ['许嵩', '张杰', '林俊杰']];

  for indexs := Low(DynamicNameArray) to High(DynamicNameArray) do begin
    for I := Low(DynamicNameArray[indexs]) to High(DynamicNameArray)[indexs] do begin
      Writeln(DynamicNameArray[indexs][I]);
    end;

  end;
end;

begin
  StaticNameArray[0][0]:='春暖花开'；
  
  Readln;
end.

