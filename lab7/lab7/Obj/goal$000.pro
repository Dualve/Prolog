predicates
   nondeterm change(string,string) %(i,0)
   nondeterm cyfra(char) %(i)
   nondeterm result
   
clauses
   %���� ����� � ������� �������� ��� ����� �� 1 �� 9 
   cyfra('1').
   cyfra('2').
   cyfra('3').
   cyfra('4').
   cyfra('5').
   cyfra('6').
   cyfra('7').
   cyfra('8').
   cyfra('9').
   
   change("","").
   change(Str,NewStr):- frontchar(Str,Head,Tail), cyfra(X),Head=X,!, %����� 1�� ������� �� ������ � ���������� ��� � ���������� ����� ���� ��������� ������
                 change(Tail,NewTail), frontchar(NewStr,'0',NewTail). %���������� ���������, ���������� ���������� ����� 1�� �������... � ����� �������� ������� ������ �� 0
   change(Str,NewStr):- frontchar(Str,Head,Tail), change(Tail,NewTail),%���� �� ��������� ����, �� �������� ����� 1�� �������, ��� ������ ������� ������
                 frontchar(NewStr,Head,NewTail).
                 
   result :- write("Enter your string: "), readln(S),nl, %���������� ������������ ������ ������
             write("New string: "), change(S, X),write(X),nl. %����� ����� ������
goal
   result.
   
% ���� 8 ��� 10-13 + 1
% 12 13 1-3 �����
% 5-6 8-10 ������
% 3-5 11 12�����