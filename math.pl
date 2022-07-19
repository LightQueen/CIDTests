choices0(A7,A10,List):-
  count(C1,1,List),
  count(C2,2,List),
  count(C3,3,List),
  count(C4,4,List),
  min_list([C1,C2,C3,C4],Min),
  max_list([C1,C2,C3,C4],Max),
  /*I7 为列表中数量为Min的列表值*/
  count(Min,I7,List),
  /*I10 为 Max 和 Min 的差值*/
  I10 is Max - Min,
  nth(A10, [3,2,4,1], I10),
  nth(A7, [3,2,1,4], I7).
choices9(1,List):-
  nth(1, List, X),
  nth(6, List, Y),
  nth(5, List, I),
  nth(6, List, J),
  X = Y,
  #\ I #= J.
choices9(1,List):-
  nth(1, List, X),
  nth(6, List, Y),
  nth(5, List, I),
  nth(6, List, J),
  #\ X #= Y,
  I = J.
choices9(2,List):-
  nth(1, List, X),
  nth(6, List, Y),
  nth(5, List, I),
  nth(10, List, J),
  X = Y,
  #\ I #= J.
choices9(2,List):-
  nth(1, List, X),
  nth(6, List, Y),
  nth(5, List, I),
  nth(10, List, J),
  #\ X #= Y,
  I = J.
choices9(3,List):-
  nth(1, List, X),
  nth(6, List, Y),
  nth(5, List, I),
  nth(2, List, J),
  X = Y,
  #\ I #= J.
choices9(3,List):-
  nth(1, List, X),
  nth(6, List, Y),
  nth(5, List, I),
  nth(2, List, J),
  #\ X #= Y,
  I = J.
choices9(4,List):-
  nth(1, List, X),
  nth(6, List, Y),
  nth(5, List, I),
  nth(9, List, J),
  X = Y,
  #\ I #= J.
choices9(4,List):-
  nth(1, List, X),
  nth(6, List, Y),
  nth(5, List, I),
  nth(9, List, J),
  #\ X #= Y,
  I = J.
notbesides(1,3).
notbesides(3,1).
notbesides(1,4).
notbesides(4,1).
notbesides(2,4).
notbesides(4,2).
choices8(1,List):-
  nth(1, List, X),
  nth(7, List, Y),
  notbesides(X,Y).
choices8(2,List):-
  nth(1, List, X),
  nth(5, List, Y),
  notbesides(X,Y).
choices8(3,List):-
  nth(1, List, X),
  nth(2, List, Y),
  notbesides(X,Y).
choices8(4,List):-
  nth(1, List, X),
  nth(10, List, Y),
  notbesides(X,Y).
choices6(1,List):-
  nth(2, List, X),
  nth(4, List, Y),
  nth(8, List, Z),
  X = Y,
  Y = Z.
choices6(2,List):-
  nth(1, List, X),
  nth(6, List, Y),
  nth(8, List, Z),
  X = Y,
  Y = Z.
choices6(3,List):-
  nth(3, List, X),
  nth(8, List, Y),
  nth(10, List, Z),
  X = Y,
  Y = Z.
choices6(4,List):-
  nth(5, List, X),
  nth(8, List, Y),
  nth(9, List, Z),
  X = Y,
  Y = Z.
choices5(1,X):-
  nth(8, X, 1).
choices5(2,X):-
  nth(4, X, 2).
choices5(3,X):-
  nth(9, X, 3).
choices5(4,X):-
  nth(7, X, 4).
choices2(1,X):-
  nth(5, X, A5),
  A5 = 3.
choices2(2,X):-
  nth(5, X, A5),
  A5 = 4.
choices2(3,X):-
  nth(5, X, A5),
  A5 = 1.
choices2(4,X):-
  nth(5, X, A5),
  A5 = 2.
choices3(1,List):-
  nth(6, List, X),
  nth(2, List, Y),
  nth(4, List, Z),
  X = Y,
  Y = Z.
choices3(2,List):-
  nth(3, List, X),
  nth(2, List, Y),
  nth(4, List, Z),
  X = Y,
  Y = Z.
choices3(3,List):-
  nth(3, List, X),
  nth(6, List, Y),
  nth(4, List, Z),
  X = Y,
  Y = Z.
choices3(4,List):-
  nth(3, List, X),
  nth(6, List, Y),
  nth(2, List, Z),
  X = Y,
  Y = Z.
choices4(1,X):-
	nth(1, X, Y),
  nth(5, X, Z),
  Z = Y.
choices4(2,X):-
	nth(2, X, Y),
  nth(7, X, Z),
  Z = Y.
choices4(3,X):-
	nth(1, X, Y),
  nth(9, X, Z),
  Z = Y.
choices4(4,X):-
	nth(6, X, Y),
  nth(10, X, Z),
  Z = Y.
question(Answers):-
Answers=[A1,A2,A3,A4,A5,A6,A7,A8,A9,A10],
fd_domain([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10],1,4),
choices2(A2,Answers),
choices3(A3,Answers),
choices4(A4,Answers),
choices5(A5,Answers),
choices6(A6,Answers),
choices8(A8,Answers),
choices9(A9,Answers),
choices0(A7,A10,Answers).