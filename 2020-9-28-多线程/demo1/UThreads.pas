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
//�ֲ�����
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
    //�߳�����100����
    TThread.Sleep(100);
  end;
end;

end.

