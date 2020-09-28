program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i: Integer;

begin
//caseÓï¾äµÄ±ê×¼Ğ´·¨
  i := 3;
  case i of
    1:
      begin
        Writeln('ĞãÑ½');
      end;
    2:
      Writeln('ĞãÑ½ĞÖ‡N');
  else
    begin
      Writeln('ĞãÑ½ĞÖ‡N2');
    end;
  end;
  Readln;
end.

