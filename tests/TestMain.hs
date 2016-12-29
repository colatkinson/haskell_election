import Test.Tasty
import Test.Tasty.HUnit

import Data.Election

main = defaultMain tests

tests :: TestTree
tests = testGroup "Tests" [unitTests]

unitTests = testGroup "Election utility unit tests"
  [ testCase "t_max for poll with 9 voters, 5 candidates, and 2 selections" $
      t_max (Poll 10 9 5 2) @?= 99000,
    testCase "m_max for poll with 9 voters, 5 candidates, and 2 selections" $
      m_max (Poll 10 9 5 2) @?= 11000
  ]
