predicates 
nondeterm tool(real,integer,real) 
nondeterm sum(integer,integer,integer) 
nondeterm sumnechet(integer,integer) 
nondeterm degree(integer,real,real) 
nondeterm result 
nondeterm rad(real,real) 
nondeterm degree2(integer,real,real,real,real) 
nondeterm result2 
clauses 
tool(_ ,0,1.0). 
tool(A,N,R):- N>0,N1=N-1,N mod 2 = 1,tool(A,N1,R1),R=R1*A. 
tool(A,N,R):-N<0,N1=N+1,N mod 2 = 1,tool(A,N1,R1),R=1*R1/A. 
tool(A,N,R):- N>0,N1=N-1,N mod 2 = 0,tool(A,N1,R1),R=R1*A. 
tool(A,N,R):-N<0,N1=N+1,N mod 2 = 0,tool(A,N1,R1),R=1*R1/A. 


sum(M,N,R):-M=N,R=N. 
sum(M,N,R):-M<N,M1=M+1,sum(M1,N,R1),R=R1+M. 

sumnechet(1,1). 
sumnechet(N,R):-N mod 2 =1 and N>1,N1=N-2,sumnechet(N1,R1),R=N+R1. 
sumnechet(N,R):-N mod 2 =0 and N>1,N1=N-1,sumnechet(N1,R1),R=R1. 

degree(1,1.0,1.0). 
degree(K,B,A):-K>1,K1=K-1,degree(K1,B,A1),A=A1+B/((2*K-1)*(2*K-1)). 
result:-write("Enter K"),nl, write("K="),readint(K),degree(K,_,A),write("Res=",A),nl. 

rad(Eps,A):-degree2(1,Eps,A,0.0,1.0). 
degree2(N,Eps,Sum,Sum,_):-1/((2*N-1) * (2*N-1))<Eps,!. 
degree2(N,Eps,A,Sum,B):-Sum1=Sum+B/((2*N-1) * (2*N-1)),N1=N+1,degree2(N1,Eps,A,Sum1,B). 
result2:-write("Enter Eps"),nl, write("Eps="),readreal(Eps),rad(Eps,A),J=3.14*3.14/8,write("Res=",A," pi^2/8=",J),nl. 

goal 
%write("put N"),nl,write("N="),readint(N),nl, 
%write("put A"),nl,write("A="),readreal(A),nl, 
%tool(A,N,R), 
%write(A,"^",N,"=",R),nl. 

%sum(3,11,R). 

%sumnechet(12,R). 

%result. 

result2.