-module(fibonacci).
-export([fib/1,fibtr/3,loop/1]).


fib(N) when N == 1 orelse N == 2 ->
    1;
fib(N) when N == 3 ->
    2;
fib(N) when N > 3 ->
    fib(N-1) + fib(N-2).

%fib/tail recursive del profe: p es previous, c es current...
fibtr(0,P,_C) ->
    P;
fibtr(N,P,C) ->
    fibtr(N-1,C,P+C).


% Looping the loop

loop(N) when N>0 ->
  io:format("~p~n",[N]),
  loop(N-1);
loop(0) ->
  io:format("bye~n").