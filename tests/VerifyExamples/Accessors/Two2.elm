module VerifyExamples.Accessors.Two2 exposing (..)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Test
import Expect

import Accessors exposing (..)
import Accessors exposing (..)



meh : (String, Int)
meh = ("It's over", 1)



spec2 : Test.Test
spec2 =
    Test.test "#two: \n\n    get two meh\n    --> 1" <|
        \() ->
            Expect.equal
                (
                get two meh
                )
                (
                1
                )