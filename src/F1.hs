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

numberofwordsinsentence :: String -> Int
numberofwordsinsentence [] = 0
numberofwordsinsentence (x : xs) =
  if isAlpha x
    then 1 + numberofwordsinsentence (dropWhile isAlpha (x : xs))
    else numberofwordsinsentence xs

medellangd :: String -> Double
medellangd [] = 0
medellangd (x : xs) =
  if isAlpha x
    then length (takeWhile isAlpha (x : xs)) + medellangd (dropWhile isAlpha (x : xs))
    else medellangd xs

--   if isAlpha x
--     then 1 + medellangd xs
--     else medellangd xs

skyffla s = s
