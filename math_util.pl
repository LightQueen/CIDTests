count(0,_,[]).
count(Total1,X,[Head|Others]):-Head = X,count(Total2,X,Others),Total1 is Total2 + 1.
count(Total1,X,[Head|Others]):- Head #\= X,count(Total2,X,Others),Total1 is Total2 + 0.