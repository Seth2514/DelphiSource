unit uThreads;

interface

uses
  System.SysUtils, uDomain, System.Classes;

type
//生产线程类
  TProductionThread = class(TThread)
  private
    Fproduct: Tproduct;
    { Private declarations }
  protected
    procedure Execute; override;
  public
  //构造方法
    constructor Create; overload;
    constructor Create(product: Tproduct); overload;
  end;
//消费线程类

  TconsumptionThread = class(TThread)
  private
    FProduct: Tproduct;
  protected
    procedure Execute; override;
  public
  //构造方法
    constructor Create; overload;
    constructor Create(product: Tproduct); overload;
  end;

implementation

uses
  Unit1;


{ TProductionThread }
//有参构造
constructor TProductionThread.Create(product: Tproduct);
begin
  inherited Create(False);
  Self.Fproduct := product;
end;

//空参构造
constructor TProductionThread.Create;
begin
//true表示线程创建完成之后挂机，在调用start方法之后才会继续线程
  inherited Create(True);
end;

//启动线程的代码
procedure TProductionThread.Execute;
var
  str: string;
//Num:Integer;
begin
  while True do begin
  //临界区开始
    System.TMonitor.Enter(Self.Fproduct);
    //当为false时表示没有产品
    if not Self.Fproduct.IsConsumption then begin
      Self.Fproduct.Id := Self.Fproduct.Id + 1;
      str := '生产线程ID:' + Self.ThreadID.ToString + ',当前的产品编号' + Self.Fproduct.Id.ToString;
      Form1.Memo1.Lines.Add(str);
      //让本身处于等待状态
      Self.Sleep(500);
        //生产完成之后表示有产品
      Self.Fproduct.IsConsumption := True;
    end;
    //通知消费线程进行消费
    System.TMonitor.Pulse(Self.Fproduct);
    //让线程处于等待状态
    System.TMonitor.Wait(Self.Fproduct, INFINITE);
  //退出临界区
    System.TMonitor.Exit(Self.Fproduct);
  end;

end;

{ TconsumptionThread }

constructor TconsumptionThread.Create(product: Tproduct);
begin
  inherited Create(False);
  Self.Fproduct := product;
end;

constructor TconsumptionThread.Create;
begin
  inherited Create(True);
end;

//消费线程的代码执行
procedure TconsumptionThread.Execute;
var
  str: string;
begin
  while True do begin
       //临界区开始
    System.TMonitor.Enter(Self.Fproduct);
    //有产品进行消费
    if Self.Fproduct.IsConsumption then begin
      str := '消费线程ID:' + Self.ThreadID.ToString + ',当前的产品编号' + Self.Fproduct.Id.ToString;
      Form1.Memo1.Lines.Add(str);
      //让本身处于等待状态
      Self.Sleep(500);
        //生产完成之后表示有产品
      Self.Fproduct.IsConsumption := False;
    end;
    //通知生产线程开始生产
    System.TMonitor.Pulse(Self.FProduct);
    //让线程处于等待状态
    System.TMonitor.Wait(Self.Fproduct, INFINITE);
  //退出临界区
    System.TMonitor.Exit(Self.Fproduct);
  end;

end;

end.

