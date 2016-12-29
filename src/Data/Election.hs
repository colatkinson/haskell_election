module Data.Election
    ( Poll (..)
    , m_max
    , t_max
    ) where

-- import Crypto.Paillier

data Poll = Poll { uid :: Int
                 , voters :: Integer
                 , candidates :: Integer
                 , selections :: Integer
                 } deriving (Show)

baseSum :: Integer -> Integer -> Integer -> Integer
baseSum base hi lo = if hi >= lo then
    base ^ hi + (baseSum base (hi - 1) lo)
    else
        0

m_max :: Poll -> Integer
m_max (Poll {uid = _, voters = v, candidates = c, selections = s}) =
    baseSum (v + 1) (c - 1) (c - s)

t_max :: Poll -> Integer
t_max poll = (voters poll) * m_max poll
