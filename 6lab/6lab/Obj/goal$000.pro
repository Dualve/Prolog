% 4.17 ��� �������� ������ ��������� �� �������� �������� ��������������� ���� ���������. 
domains 
listr = real*

predicates
sum(listr, real) % (i,0)
len(listr, integer) % (i,0)
dec_list(listr, listr, real) % (i,0,i)
result2

clauses
sum([],0.0). %����� �������� ������ 0
sum([Head|Tail],Sum) :- sum(Tail,Sum1), Sum = Sum1 + Head. %���� ������ �� 0-�

len([],0). %����� �������� ������ 0
len([_|Tail],Num):- len(Tail,Num1), Num=Num1+1. %���� ������ �� 0-�

dec_list([],[],_).
dec_list([H1|T1],[H2|T2], A):- H2=H1-A,dec_list(T1,T2,A).

result2 :- write("Enter real list: "), readterm(listr,List),nl,
          sum(List,Sum),write("Sum of items = ",Sum),nl,
          len(List,Num),write("Amount of items = ", Num),nl,
          Inc = Sum/Num,write("All itemes increased by ",Inc),nl,nl,
          dec_list(List,List1,Inc) ,write("New list = ", List1),nl.
         

goal
result2.