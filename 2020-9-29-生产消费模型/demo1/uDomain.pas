unit uDomain;

interface

type
//��Ʒ��
  Tproduct = class
  private
    //��Ʒ���
    FId: Integer;
    //��Ʒ����
    FName: string;

    //��Ʒ�Ƿ��Ѿ�������
    FIsConsumption: Boolean;
  public
    property Id: Integer read FId write FId;
    property Name: string read FName write FName;
    property IsConsumption: Boolean read FIsConsumption write FIsConsumption;
  end;

implementation

end.

