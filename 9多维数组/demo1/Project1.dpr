program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

{����һ����̬�Ķ�ά����}

type
  TStringDynamicArray = array of array of string;
  {����һ����̬�Ķ�ά����}

type
  TStringStaticArray = array[0..3] of array[0..2] of string;

var
  DynamicNameArray: TStringDynamicArray;
  StaticNameArray: TStringStaticArray;

var
  indexs: Integer;
  I: Integer;
{��ʼ����̬�Ķ�ά����}

procedure InitArray();
begin
  DynamicNameArray := [['���', '�й�', '����'], ['����', '�Ž�', '�ֿ���']];

  for indexs := Low(DynamicNameArray) to High(DynamicNameArray) do begin
    for I := Low(DynamicNameArray[indexs]) to High(DynamicNameArray)[indexs] do begin
      Writeln(DynamicNameArray[indexs][I]);
    end;

  end;
end;

begin
  StaticNameArray[0][0]:='��ů����'��
  
  Readln;
end.

