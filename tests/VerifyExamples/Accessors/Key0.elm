module VerifyExamples.Accessors.Key0 exposing (..)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Test
import Expect

import Accessors exposing (..)
import Lens as L
import Accessors exposing (..)
import Dict exposing (Dict)



dict : Dict String {bar : Int}
dict = Dict.fromList [("foo", {bar = 2})]



spec0 : Test.Test
spec0 =
    Test.test "#key: \n\n    set (key \"baz\" << try << L.bar) 3 dict\n    --> dict" <|
        \() ->
            Expect.equal
                (
                set (key "baz" << try << L.bar) 3 dict
                )
                (
                dict
                )