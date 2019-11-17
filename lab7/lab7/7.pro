predicates
    nondeterm search(string) %(i)
    nondeterm result
clauses
    search("").
    search(String):-
 
        fronttoken(String,String1,String2), %передается строка (i,0,0), возвращается 1ое слово и остальную строку
        fronttoken(String2,_,_), % если в СТРОКЕ2 есть еще слова то -
        %находится первый элемент слова СТРИНГ1 = D, находітся длина слова = N, находится элемент на позиции N в слове СТРИНГ1 = D1
        %сравнивается D=D1 если верно то выводится слово, и рекурсивно запускается проверка следующего слова 
        frontchar(String1,D,_),str_len(String1,N),subchar(String1,N,D1),D=D1,write( String1),nl,search(String2);
    
        fronttoken(String,String1,String2), %передается строка (i,0,0), возвращается 1ое слово и остальную строку
        not(fronttoken(String2,_,_)), %если в СТРОКЕ2 нет слов то - 
        %повторятся все действия из правила выше, кроме рекурсивного запуска проверки следующего слова
        frontchar(String1,D,_),str_len(String1,N),subchar(String1,N,D1),D=D1,write( String1),nl.
    
    
        %если же D!=D1 то выполняется данная ветка, тоесть пропуск слова
        %различие составляет лишь в том, если СТРИНГ2 - пустой - то не повторяется проверка следующего слова 
        fronttoken(String,_,String2),
        fronttoken(String2,_,_),
        search(String2);
    
        fronttoken(String,_,String2),
        not(fronttoken(String2,_,_)).
 
    result:-write("Введите строку: "),readln(String),search(String).
goal
    result.