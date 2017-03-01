-module(first_tests).
-include_lib("eunit/include/eunit.hrl").

square_test()->
    ?assertEqual(4,first:square(2)),
    ?assertEqual(9,first:square(3)),
    ok.

area_test()->
    ?assertEqual(2.9047375096555625,first:area(2,3,4)),
    ok. 

mult_test()->
    ?assertEqual(6,first:mult(2,3)),
    ok.

double_test()->
    ?assertEqual(8,first:double(4)),
    ?assertEqual(-4,first:double(-2)),
    ok.

treble_test()->
    ?assertEqual(6,first:treble(2)),
ok.

howManyEqual_test()->
    ?assertEqual(0,first:howManyEqual(1,2,3)),
    ?assertEqual(2,first:howManyEqual(1,1,3)),
    ?assertEqual(2,first:howManyEqual(1,3,3)),
    ?assertEqual(3,first:howManyEqual(1,1,1)),
    ok.