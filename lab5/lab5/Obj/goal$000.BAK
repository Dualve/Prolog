predicates 
nondeterm tool(real,integer,real) % (i,i,0)
nondeterm sum(integer,integer,integer) % (i,i,0)
nondeterm sumnechet(integer,integer) % (i,0)
nondeterm degree(integer,real,real) % (i,i,0)
nondeterm result 
nondeterm degree(real,real) % (i,0)  
nondeterm degree2(integer,real,real,real,real) % (i,i,0,0,i)
nondeterm result2 
clauses 
tool(_ ,0,1.0).

% использование рекурсии
%tool(A,N,R):- N>0,N1=N-1 and tool(A,N1,R1) and R=R1*A.  
%tool(A,N,R):- N<0,N1=N+1 and tool(A,N1,R1)and R=1*R1/A. 

% использовани проверки четности выражения + рекурсии  
tool(A,N,R):- N>0 and N1=N-1 and N mod 2 = 1 and tool(A,N1,R1) and R=R1*A. %если нечет и n>0 
tool(A,N,R):- N<0 and N1=N+1 and tool(A,N1,R1) and R=R1/A. %если нечет и n<0
tool(A,N,R):- not(N=0) and N mod 2 = 0 and N1 = N div 2 and tool(A,N1,R1) and R=R1*R1. %если чет 

%сумма всех элементов
sum(M,N,R):-M=N and R=N. 
sum(M,N,R):-M<N and N1=N-1 and sum(M,N1,R1),R=R1+N. 

%сумма нечетных элементов
sumnechet(1,1). 
sumnechet(N,R):-N mod 2 =1 and N>1 and N1=N-2 and sumnechet(N1,R1),R=N+R1. 
sumnechet(N,R):-N mod 2 =0 and N>1 and N1=N-1 and sumnechet(N1,R1),R=R1. 

%pi^2 / 8 - рекурсивный
degree(1,1.0,1.0). 
degree(K,B,A):-K>1 and K1=K-1 and degree(K1,B,A1) and A=A1+B/((2*K-1)*(2*K-1)). 
result:-write("Enter K"),nl, write("K="),readint(K),degree(K,_,A),write("Res=",A),nl. 

%pi^2 / 8 - итеративный способ
degree(Eps,A):-degree2(1,Eps,A,0.0,1.0). % передача Eps и A, зависимость 1 предиката в другой 
degree2(N,Eps,Sum,Sum,_):- 1/((2*N-1) * (2*N-1))<Eps and !. %проверка на точность, если не <EPS то следующая строка
degree2(N,Eps,A,Sum,B):- Sum1=Sum+B/((2*N-1) * (2*N-1)) and N1=N+1 and degree2(N1,Eps,A,Sum1,B). %нахождение/увеличение суммы(выходного параметра) 
result2:-write("Enter Eps"),nl, write("Eps="),readreal(Eps),degree(Eps,A),J=3.14*3.14/8,write("Res=",A," pi^2/8=",J),nl. 

goal 
%write("Enter N"),nl,write("N="),readint(N),nl, 
%write("Enter A"),nl,write("A="),readreal(A),nl, 
%tool(A,N,R), 
%write(A,"^",N,"=",R),nl. 

%sum(-1,3,R). 

%sumnechet(7,R). 

result. 

%result2.