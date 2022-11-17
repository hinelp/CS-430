import System.Environment
import GHC.Exts
main = do
    args <- getArgs
    text <- readFile (head args)
    let liners = lines text
    let oArgs = sortWith length liners
    mapM_ print oArgs
