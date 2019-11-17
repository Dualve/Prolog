predicates
   nondeterm change(string,string) %(i,0)
   nondeterm cyfra(char) %(i)
   nondeterm result
   
clauses
   %факт цифра в котором хран€тс€ все цифры от 1 до 9 
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
   change(Str,NewStr):- frontchar(Str,Head,Tail), cyfra(X),Head=X,!, %берем 1ый элемент от строки и сравниваем его с элементами ÷»‘–џ если выражение истино
                 change(Tail,NewTail), frontchar(NewStr,'0',NewTail). %произойдет отсечение, рекурсивно возьметьс€ новый 1ый элемент... а также замен€ем текущую голову на 0
   change(Str,NewStr):- frontchar(Str,Head,Tail), change(Tail,NewTail),%если же варажение Ћќ∆№, то беретьс€ новый 1ый элемент, без замены текущей головы
                 frontchar(NewStr,Head,NewTail).
                 
   result :- write("Enter your string: "), readln(S),nl, %предлагаем пользователю ввести строку
             write("New string: "), change(S, X),write(X),nl. %вывод новой строки
goal
   result.
   
% вар≥к≥ 8 мое 10-13 + 1
% 12 13 1-3 кл≥мко
% 5-6 8-10 лебедь
% 3-5 11 12лосев