module F1 where

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
  if x == 'o'
    then karpsravor (tail xs)
    else x : karpsravor xs

-- karpsravor [x] = ['a']
-- karpsravor (x : y : z : xs) =
--  if x == z && y == 'o'
--    then x : karpsravor xs
--    else x : y : z : karpsravor xs

medellangd :: Fractional a => p -> a
medellangd s = 1.0

skyffla s = s
