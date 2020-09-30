unit uSyncThread;

interface

uses
  System.SyncObjs, System.SysUtils, System.Classes;

type
  TWorkingThread = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
    procedure Work();
  end;

implementation

uses
  Unit1;
{
  线程安全

    1、多个线程共享一块数据，保证该数据执行的结果是正确的

  解决方案

    1、线程同步 (线程安全)、VCL控件大部分是线程不安全的

    2、Delphi的具体实现方式
      a) Synchronize

      b) 临界区(TCriticalSection)

      c) 互斥体(TMutex)

      d) 信号量(TEvent)

      e) TMonitor

    3、使用场景

      1、当多个线程访问一个对象(数据)时，为了保证数据的正确性我们需要同步

      2、线程同步:可以保证数据的安全行，慢(效率低)

      3、线程异步：快(效率高)、无法保证数据的安全行

    4、扩展知识
      1、线程池 System.Threading.TThreadPool
      2、


}

var
  i: Integer;
  CriticalSection: TCriticalSection;
{ TWorkingThread }

procedure TWorkingThread.Execute;
begin
  FreeOnTerminate := True;
  //Self.Synchronize(Work);
  CriticalSection.Enter;
  Work();
  CriticalSection.Leave;
end;

procedure TWorkingThread.Work;
begin
  while True do begin
    Form1.Memo1.Lines.Add('线程编号' + Self.ThreadID.ToString + ',' + i.ToString);
    if (i = 10) then begin
      Exit;
    end;
    inc(i);
    Self.Sleep(100);
  end;
end;

initialization
  CriticalSection := TCriticalSection.Create;

finalization
  CriticalSection.Free;

end.

