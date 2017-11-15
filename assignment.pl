%Definitions for isElementInList(El, List)
%is the element the head of the list:
isElementInList(Element, [Element|_]).
%Is the element in the tail of the list:
isElementInList(Element, [_|Tail]):- isElementInList(Element, Tail).

%Definitions for mergeLists(List1, List2, Merged)
mergeLists([], LIST1, LIST1).
mergeLists([HEAD | TAIL], LIST1, [HEAD | Merged]) :-
    mergeLists(TAIL, LIST1, Merged).

%Definitions for reverseList(List, ReversedList)
reverseList([],[]).
reverseList([HEAD | TAIL], ReversedList):-
    mergeLists(List, [HEAD], ReversedList), reverseList(TAIL, List).


%insertElementIntoListEnd(El, List, NewList)
insertElementIntoListEnd(El, List, NewList) :- mergeLists(List, [El], NewList).
