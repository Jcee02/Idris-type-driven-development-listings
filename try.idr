-- Calculate average word length

module Main
import Data.String
import Data.List
import System.REPL


-- Type declaration
-- cast func explicitly converts between types.
-- division operation requires Double operands
--  totalLenght / numWords -> Nat                
average : (str: String) -> Double
average str = let numWords = wordCount str
                  totalLength = sum (allLengths (words str)) in
                  cast totalLength / cast numWords

    -- Where keyword introduces local func definitions
    -- only visible inside the scope of the average func
    where
      wordCount : String -> Nat
      wordCount str = length (words str)

      allLengths : List String -> List Nat
      allLengths strs = map length strs

showAverage : String -> String
showAverage str = "The average word length is : " ++
                  show (average str) ++ "\n"

main : IO ()
main = repl "Enter string: " showAverage
