% Marcelo Ruiz-Camauër
% Introduction to Erlang assignment 1.24 
% Feb. 2017
%
% Shapes:
% Define a function perimeter/1 which takes a shape and returns the perimeter of the shape.
% Choose a suitable representation of triangles, and augment area/1 and perimeter/1 to handle this case too.
% Define a function enclose/1 that takes a shape an returns the smallest enclosing rectangle of the shape.


-module(a1). 
-export([perimeter/1, enclose/1, area/1, bits/1]).
-export([get_bit/2]).

perimeter(Shape) -> 
    case Shape of
        {triangle,{_X,_Y},A,B}  -> A+B+hypothenuse(A,B);
        {rectangle,{_X,_Y},H,W} -> (W+H)*2;
        {circle,{_X,_Y},R}      -> math:pi()*2*R;
        {square,{_X,_Y},H}      -> H*4
    end.

enclose(Shape)->
    case Shape of
        {triangle,{_X,_Y},A,B}  -> {rectangle,{_X,_Y},A,B};
        {rectangle,{_X,_Y},H,W} -> {rectangle,{_X,_Y},H,W};
        {circle,{_X,_Y},R}      -> {rectangle,{_X,_Y},R,R};
        {square,{_X,_Y},H}      -> {rectangle,{_X,_Y},H,H}
    end.

area(Shape)->
    case Shape of
        {triangle,{_X,_Y},A,B}  -> A*B/2;
        {rectangle,{_X,_Y},H,W} -> H*W;
        {circle,{_X,_Y},R}      -> math:pi()*R*R;
        {square,{_X,_Y},H}      -> H*H
    end.
    

% Summing the bits:
% Define a function bits/1 that takes a positive integer N and returns the sum of the bits in the binary representation. For example bits(7) is 3 and bits(8) is 1.
% make both a direct recursive and a tail recursive definition.
bits(N) when N>=0 -> bits(N,0).

bits(N,Acc) when N==0 ->
   Acc;
bits(N,Acc) when N>=1 ->
    bits(N div 2, Acc + (N rem 2)).


% helper functions:
hypothenuse(A,B) -> 
    math:sqrt(A*A + B*B).

get_bit(1, Num) -> Num rem 2;
get_bit(Pos, Num) -> get_bit(Pos-1, Num div 2).