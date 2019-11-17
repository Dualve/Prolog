predicates
    nondeterm reverse(string) %(i)
    nondeterm result
    
clauses 
    reverse("").     
    reverse(S):-
        frontchar(S,Head,Tail),% (i,0,0) %������������ 1��� ������� ������ �� ��������� ����� |������ , ������ ������ , �������
        reverse(Tail), %������� ���������� � �������� (������ ���� ����� �������� �� ���������� �������)
        write(Head). %����� ��������� � ���������� ������� �������, ��� ����� ����������� �������� ����� ������
    
    result :- write("Enter your string: "), readln(S),nl, %���������� ������������ ������ ������
              write("New string: "),reverse(S),nl. %����� ����� ������
    
goal
    result.