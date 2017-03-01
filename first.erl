-module(first).

-export([double/1,mult/2,area/3,treble/1,square/1,maxThree/3,howManyEqual/3]).

mult(X,Y) ->
    X*Y.

double(X) ->
    mult(2,X).

area(A,B,C) ->
    S = (A+B+C)/2,
    math:sqrt(S*(S-A)*(S-B)*(S-C)).

treble(X) ->
X*3.

square(X) ->
X*X.

maxThree(X,Y,Z)->
    L=[X,Y,Z],
    lists:max(L).

howManyEqual(X,Y,Z)->
    case length(lists:umerge3([X],[Y],[Z])) of
        3 -> 0;
        2 -> 2;
        1 -> 3
    end. 
    