predicates
    nondeterm reverse(string) %(i)
    nondeterm result
    
clauses 
    reverse("").     
    reverse(S):-
        frontchar(S,Head,Tail),% (i,0,0) %отсоединение 1ого символа строки от остальной части |строка , первый символ , остаток
        reverse(Tail), %создаем псевдоцикл с остатком (данный цикл будет работать до последнего символа)
        write(Head). %вывод начнеться с последнего взятого символа, тем самым организовав обратный вывод строки
    
    result :- write("Enter your string: "), readln(S),nl, %предлагаем пользователю ввести строку
              write("New string: "),reverse(S),nl. %вывод новой строки
    
goal
    result.