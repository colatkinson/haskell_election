module Main where

import Data.Election

bitSize :: Integer -> Int
bitSize num | num == 0  = 0
            | otherwise = 1 + bitSize (quot num 2)

main :: IO ()
-- main = putStrLn "Hello, Haskell!"
main = do
    let p = Poll 10 9 5 2
    let tm = t_max p
    print (tm)
    print (bitSize (tm))
    print (2 * (bitSize (floor (sqrt (fromIntegral tm)))))
