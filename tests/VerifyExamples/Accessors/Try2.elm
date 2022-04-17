module VerifyExamples.Accessors.Try2 exposing (..)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Test
import Expect

import Accessors exposing (..)
import Lens as L
import Accessors exposing (..)



maybeRecord : { foo : Maybe { bar : Int }, qux : Maybe { bar : Int } }
maybeRecord = { foo = Just { bar = 2 }
              , qux = Nothing
              }



spec2 : Test.Test
spec2 =
    Test.test "#try: \n\n    get (L.qux << try << L.bar) maybeRecord\n    --> Nothing" <|
        \() ->
            Expect.equal
                (
                get (L.qux << try << L.bar) maybeRecord
                )
                (
                Nothing
                )