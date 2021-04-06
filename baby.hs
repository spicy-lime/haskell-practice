module Main where

data JsonValue
  = JsonNull
  | JsonBool Bool
  | JsonNumber Integer
  | JsonString String
  | JsonArray [JsonValue]
  | JsonObject [(String, JsonValue)]
  deriving (Show, Eq)

newtype Parser a = Parser
  { runParser :: String -> Maybe (String, a)}

jsonNull :: Parser JsonValue
jsonNull = undefined


elem' :: (Eq a) => a -> [a] -> Bool
elem' a as 
  | as == [] = False
  | a == x = True
  | otherwise  = elem' a (tail as)
  where
    x = head as

nub' :: (Eq a) => [a] -> [a]
nub' [] = []
nub' (a:as) 
  | elem' a (as) = nub' (as)
  | True = (a : (nub' as))
  
isAsc :: [Int] -> Bool
isAsc [] =  True
isAsc [_] = True
isAsc (x:y:xs)
  | x < y = isAsc (y:xs)
  | True = False


jsonValue :: Parser JsonValue
jsonValue = undefined

lucky :: (Integral a) => a -> String
lucky 7 = "SEVEN"
lucky x = "SORRY"

main :: IO ()
main = undefined

