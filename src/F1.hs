module F1 where

import Data.Char

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

rovarsprak :: String -> String
rovarsprak [] = []
rovarsprak (x : xs) =
  if x `elem` ['a', 'e', 'i', 'o', 'u', 'y', 'å', 'ä', 'ö']
    then x : rovarsprak xs
    else x : 'o' : x : rovarsprak xs

karpsravor :: String -> String
karpsravor [] = []
karpsravor (x : xs) =
  if head xs == 'o' && head (tail xs) == x
    then x : karpsravor (tail (tail xs))
    else x : karpsravor xs

fwl :: String -> Int
fwl [] = 0
fwl (x : xs) =
  if isAlpha x
    then 1 + fwl xs
    else 0

swl :: String -> [Int]
swl [] = []
swl (x : xs) =
  if isAlpha x
    then fwl (x : xs) : swl (drop (fwl (x : xs)) (x : xs)) -- drop the first word, e.g "drop 3 [1,2,3,4,5]" will return "[4,5]"
    else swl xs

medellangd :: String -> Double
medellangd [] = 0
medellangd x = fromIntegral (sum (swl x)) / fromIntegral (length (swl x))

everyother :: [] a -> [] a
everyother [] = []
everyother [x] = [x]
everyother (x : xs) = x : everyother (tail xs)

skyffla :: [] a -> [] a
skyffla [] = []
skyffla [x] = [x]
skyffla (x : xs) = everyother (x : xs) ++ skyffla (everyother xs)
