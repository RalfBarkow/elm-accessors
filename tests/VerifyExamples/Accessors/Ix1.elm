module VerifyExamples.Accessors.Ix1 exposing (..)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Test
import Expect

import Accessors exposing (..)
import Test.Accessors.Record as R
import Accessors exposing (..)
import Array exposing (Array)



arr : Array { bar : String }
arr = Array.fromList [{ bar = "Stuff" }, { bar =  "Things" }, { bar = "Woot" }]



spec1 : Test.Test
spec1 =
    Test.test "#ix: \n\n    set (ix 0 << R.bar) \"Whatever\" arr\n    --> Array.fromList [{ bar = \"Whatever\" }, { bar =  \"Things\" }, { bar = \"Woot\" }]" <|
        \() ->
            Expect.equal
                (
                set (ix 0 << R.bar) "Whatever" arr
                )
                (
                Array.fromList [{ bar = "Whatever" }, { bar =  "Things" }, { bar = "Woot" }]
                )