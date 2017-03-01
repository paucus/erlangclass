-module(second). 
-export([square/1, hypothenuse/2, area/2, perimeter/2]).
%comentario...

square(X) -> 
    first:mult(X,X).

hypothenuse(A,B) -> 
    math:sqrt(square(A)+square(B)).

area(A,B) -> 
    first:mult(A*B)/2.

perimeter(A,B) -> 
    A+B+hypothenuse(A,B).