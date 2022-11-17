import System.Environment
main = do 
    args <- getArgs
    let intArgs = map (read :: String -> Int) args
    let tens = map (\x -> div x 10 * 10) intArgs
    mapM print tens