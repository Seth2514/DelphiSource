unit uThreads;

interface

uses
  System.SysUtils, uDomain, System.Classes;

type
//�����߳���
  TProductionThread = class(TThread)
  private
    Fproduct: Tproduct;
    { Private declarations }
  protected
    procedure Execute; override;
  public
  //���췽��
    constructor Create; overload;
    constructor Create(product: Tproduct); overload;
  end;
//�����߳���

  TconsumptionThread = class(TThread)
  private
    FProduct: Tproduct;
  protected
    procedure Execute; override;
  public
  //���췽��
    constructor Create; overload;
    constructor Create(product: Tproduct); overload;
  end;

implementation

uses
  Unit1;


{ TProductionThread }
//�вι���
constructor TProductionThread.Create(product: Tproduct);
begin
  inherited Create(False);
  Self.Fproduct := product;
end;

//�ղι���
constructor TProductionThread.Create;
begin
//true��ʾ�̴߳������֮��һ����ڵ���start����֮��Ż�����߳�
  inherited Create(True);
end;

//�����̵߳Ĵ���
procedure TProductionThread.Execute;
var
  str: string;
//Num:Integer;
begin
  while True do begin
  //�ٽ�����ʼ
    System.TMonitor.Enter(Self.Fproduct);
    //��Ϊfalseʱ��ʾû�в�Ʒ
    if not Self.Fproduct.IsConsumption then begin
      Self.Fproduct.Id := Self.Fproduct.Id + 1;
      str := '�����߳�ID:' + Self.ThreadID.ToString + ',��ǰ�Ĳ�Ʒ���' + Self.Fproduct.Id.ToString;
      Form1.Memo1.Lines.Add(str);
      //�ñ����ڵȴ�״̬
      Self.Sleep(500);
        //�������֮���ʾ�в�Ʒ
      Self.Fproduct.IsConsumption := True;
    end;
    //֪ͨ�����߳̽�������
    System.TMonitor.Pulse(Self.Fproduct);
    //���̴߳��ڵȴ�״̬
    System.TMonitor.Wait(Self.Fproduct, INFINITE);
  //�˳��ٽ���
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

//�����̵߳Ĵ���ִ��
procedure TconsumptionThread.Execute;
var
  str: string;
begin
  while True do begin
       //�ٽ�����ʼ
    System.TMonitor.Enter(Self.Fproduct);
    //�в�Ʒ��������
    if Self.Fproduct.IsConsumption then begin
      str := '�����߳�ID:' + Self.ThreadID.ToString + ',��ǰ�Ĳ�Ʒ���' + Self.Fproduct.Id.ToString;
      Form1.Memo1.Lines.Add(str);
      //�ñ����ڵȴ�״̬
      Self.Sleep(500);
        //�������֮���ʾ�в�Ʒ
      Self.Fproduct.IsConsumption := False;
    end;
    //֪ͨ�����߳̿�ʼ����
    System.TMonitor.Pulse(Self.FProduct);
    //���̴߳��ڵȴ�״̬
    System.TMonitor.Wait(Self.Fproduct, INFINITE);
  //�˳��ٽ���
    System.TMonitor.Exit(Self.Fproduct);
  end;

end;

end.

