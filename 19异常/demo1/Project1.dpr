program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

{*------------------------------------------------------------------------------
什么是异常

异常怎么使用
-------------------------------------------------------------------------------}
type
  EMathException = class(Exception)
  end;

procedure MyDivFun(Num1, Num2: Integer);
begin
  if (Num2 = 0) then begin
  //我们抛出一个异常
    raise EMathException.Create('除数不能为0');
    //result:= Exception.Create('除数不能为0');exit;
  end;
  Writeln('******');
end;

begin

  try
    try
      MyDivFun(10, 0);
    { TODO -oUser -cConsole Main : Insert code here }
    except
      on E: EMathException do begin
        Writeln(E.UnitName,E.ClassName,':',E.Message);
      end;

      on E: Exception do begin
        Writeln(E.ClassName, ': ', E.Message + '---');
      end;

    end;
  finally
//释放资源
Writeln('释放资源');
  end;

  Readln;
end.

