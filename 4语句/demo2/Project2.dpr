program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i: Integer;

begin
//case���ı�׼д��
  i := 3;
  case i of
    1:
      begin
        Writeln('��ѽ');
      end;
    2:
      Writeln('��ѽ�ևN');
  else
    begin
      Writeln('��ѽ�ևN2');
    end;
  end;
  Readln;
end.

