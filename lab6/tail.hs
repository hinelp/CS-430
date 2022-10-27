import System.Environment
main = do
    args <- getArgs
    let fileName = head args
    alphabet <- readFile fileName
    let letters = lines alphabet
    let numLines = head (tail args)
    let outLines = read numLines :: Int
    let output = take outLines letters
    putStrLn (unlines output)