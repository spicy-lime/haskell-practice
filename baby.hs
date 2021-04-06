module Main where

-- checks if element is in list
elem' :: (Eq a) => a -> [a] -> Bool
elem' a as 
  | as == [] = False
  | a == x = True
  | otherwise  = elem' a (tail as)
  where
    x = head as

-- removes duplicate elements from list
nub' :: (Eq a) => [a] -> [a]
nub' [] = []
nub' (a:as) 
  | elem' a (as) = nub' (as)
  | True = (a : (nub' as))

-- checks if list in ascending order
isAsc :: [Int] -> Bool
isAsc [] =  True
isAsc [_] = True
isAsc (x:y:xs)
  | x < y = isAsc (y:xs)
  | True = False

-- directed graph pathfinder
-- (1,2)(4,5)(2,4)
hasPath :: [(Int,Int)] -> Int -> Int -> Bool
hasPath [] _ _ = False
hasPath ((x,y):xs) a b = undefined
  
  

--hasPath = \ ((:)((,) x y) xs) a b ->
--  case xs of
--    x == a && y == b 
    
    
  


lucky :: (Integral a) => a -> String
lucky 7 = "SEVEN"
lucky x = "SORRY"

main :: IO ()
main = undefined

