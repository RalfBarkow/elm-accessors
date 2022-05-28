module VerifyExamples.Accessors.SelectList.Each0 exposing (..)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Test
import Expect

import Accessors.SelectList exposing (..)
import SelectList exposing (SelectList)
import Lens as L
import Accessors.SelectList as SL
import Accessors exposing (..)



listRecord : { foo : SelectList { bar : Int } }
listRecord =
    { foo = SelectList.fromLists [{ bar = 1 }] { bar = 2 } [{ bar = 3 }, { bar = 4 }]
    }



spec0 : Test.Test
spec0 =
    Test.test "#each: \n\n    over (L.foo << SL.each << L.bar) ((+) 1) listRecord\n    --> { foo = SelectList.fromLists [{ bar = 2 }] { bar = 3 } [{ bar = 4 }, { bar = 5 }] }" <|
        \() ->
            Expect.equal
                (
                over (L.foo << SL.each << L.bar) ((+) 1) listRecord
                )
                (
                { foo = SelectList.fromLists [{ bar = 2 }] { bar = 3 } [{ bar = 4 }, { bar = 5 }] }
                )