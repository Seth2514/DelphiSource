unit UThreads;

interface

uses
  System.Classes,System.SysUtils;

type
  TWork = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
    procedure Operation;
  end;

implementation
//局部引用
uses
  Unit1;
{ TWork }

procedure TWork.Execute;
begin
  Operation();
end;

procedure TWork.Operation;
var
  Num: Integer;
begin
  for Num := 0 to 1000000 do begin
    Form1.Label2.Caption := Num.ToString;
    if FreeOnTerminate then
    Exit;
    //线程休眠100毫秒
    TThread.Sleep(100);
  end;
end;

end.

