% 4.5 удаление всех вхождений элемента
domains 
listi = integer*

predicates
delete(listi ,integer, listi) % (i, i, 0)
result1

clauses
delete([],_,[]). % если переданы пустые списки 
delete([Del|Tail],Del,Tail1):- !, delete(Tail,Del,Tail1). %если ”ƒјЋя≈ћџ… символ €вл€етс€ головой списка
delete([Head|Tail],Del,[Head|Tail1]):- delete(Tail,Del,Tail1). %если текущий символ не €вл€етс€ удал€емым

result1 :-write("Enter integer list: "), readterm(listi,List),
        write("Enter integer items to be deleted: "),nl,
        write("Del Item="),readint(Del),
        delete(List,Del,List1),nl,nl,
        write("Start list = ",List),nl,
        write("End list = ",List1),nl.

goal
result1.