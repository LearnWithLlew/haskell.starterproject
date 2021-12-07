import Test.HUnit


evolve :: Int -> Int -> Int
evolve x y = 
    x + y

tests = TestList 
    [
        TestCase (assertEqual "A passing test passes" (2) (evolve 1 1) ),
        TestCase (assertEqual "A failing test fails" (3) (evolve 1 1))
    ]

main = do runTestTT tests