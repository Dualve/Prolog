predicates
    nondeterm search(string) %(i)
    nondeterm result
clauses
    search("").
    search(String):-
 
        fronttoken(String,String1,String2), %���������� ������ (i,0,0), ������������ 1�� ����� � ��������� ������
        fronttoken(String2,_,_), % ���� � ������2 ���� ��� ����� �� -
        %��������� ������ ������� ����� ������1 = D, �������� ����� ����� = N, ��������� ������� �� ������� N � ����� ������1 = D1
        %������������ D=D1 ���� ����� �� ��������� �����, � ���������� ����������� �������� ���������� ����� 
        frontchar(String1,D,_),str_len(String1,N),subchar(String1,N,D1),D=D1,write( String1),nl,search(String2);
    
        fronttoken(String,String1,String2), %���������� ������ (i,0,0), ������������ 1�� ����� � ��������� ������
        not(fronttoken(String2,_,_)), %���� � ������2 ��� ���� �� - 
        %���������� ��� �������� �� ������� ����, ����� ������������ ������� �������� ���������� �����
        frontchar(String1,D,_),str_len(String1,N),subchar(String1,N,D1),D=D1,write( String1),nl.
    
    
        %���� �� D!=D1 �� ����������� ������ �����, ������ ������� �����
        %�������� ���������� ���� � ���, ���� ������2 - ������ - �� �� ����������� �������� ���������� ����� 
        fronttoken(String,_,String2),
        fronttoken(String2,_,_),
        search(String2);
    
        fronttoken(String,_,String2),
        not(fronttoken(String2,_,_)).
 
    result:-write("������� ������: "),readln(String),search(String).
goal
    result.