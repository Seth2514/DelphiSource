program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

{*------------------------------------------------------------------------------
ʲô���쳣

�쳣��ôʹ��
-------------------------------------------------------------------------------}
type
  EMathException = class(Exception)
  end;

procedure MyDivFun(Num1, Num2: Integer);
begin
  if (Num2 = 0) then begin
  //�����׳�һ���쳣
    raise EMathException.Create('��������Ϊ0');
    //result:= Exception.Create('��������Ϊ0');exit;
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
//�ͷ���Դ
Writeln('�ͷ���Դ');
  end;

  Readln;
end.

