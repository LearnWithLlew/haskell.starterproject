import Test.HUnit
import System.Exit


evolve :: Int -> Int -> Int
evolve x y = 
    x + y

tests = TestList 
    [
        TestCase (assertEqual "A passing test passes" (2) (evolve 1 1) ),
        TestCase (assertEqual "2 + 2 is 4" (4) (evolve 2 2))
    ]


main :: IO ()
main = do
  results <- runTestTT tests
  if (errors results + failures results == 0)
    then
      exitWith ExitSuccess
    else
      exitWith (ExitFailure 1)
