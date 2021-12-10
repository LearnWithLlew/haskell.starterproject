import Test.HUnit
import System.Exit


evolve :: Int -> Int -> Int
evolve x y = 
    x + y

tests = TestList 
    [
        TestCase (assertEqual "A passing test passes" (2) (evolve 1 1) ),
        TestCase (assertEqual "A failing test fails" (3) (evolve 1 1))
    ]


main :: IO ()
main = do
  results <- runTestTT tests
  if (errors results + failures results == 0)
    then
      exitWith ExitSuccess
    else
      exitWith (ExitFailure 1)
