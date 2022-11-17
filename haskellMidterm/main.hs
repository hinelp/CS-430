import Data.List
import System.Environment
main = do
    args <- getArgs
    let filePath = head args
    text <- readFile filePath
    putStrLn (show (countLetters text '0'))
    putStrLn (show (countLetters text '1'))
    


countLetters :: String -> Char -> Int
countLetters str c = length $ filter (== c) str

prettyTime :: Int -> String
prettyTime x = do
    let hours = div x 3600
    let minutes = div (x - hours * 3600) 60
    let seconds = x - (hours*3600 + minutes*60)
    let triplet = (hours, minutes, seconds)
    case triplet of 
        (1,_,_) -> show hours ++ " hour, " ++ show minutes ++ " minutes, " ++ show seconds ++ " seconds"
        (_,1,_) -> show hours ++ " hours, " ++ show minutes ++ " minute, " ++ show seconds ++ " seconds"
        (_,_,1) -> show hours ++ " hours, " ++ show minutes ++ " minutes, " ++ show seconds ++ " second"
        --(1,1,_) -> show hours ++ " hour, " ++ show minutes ++ " minute, " ++ show seconds ++ " seconds"
        --(1,_,1) -> show hours ++ " hour, " ++ show minutes ++ " minutes, " ++ show seconds ++ " second"
        --(1,1,1) -> show hours ++ " hour, " ++ show minutes ++ " minute, " ++ show seconds ++ " second"
        (_,_,_) -> show hours ++ " hours, " ++ show minutes ++ " minutes, " ++ show seconds ++ " seconds"

runtHelper :: ([a],[a]) -> [a]
runtHelper tuple = do
    if length (fst tuple) < length (snd tuple) then
        fst tuple
    else
        snd tuple

runts :: [([a],[a])] -> [[a]]
runts xs = do 
    let mapped = map runtHelper xs
    mapped

dilate :: [Int] -> ([Int], [Int])
dilate xs = do
    let x2 = filter (/= 0) xs
    let neg = filter (\x -> x < 0) x2
    let pos = filter (\x -> x > 0) x2
    let neg2 = map (\x -> x - 1) neg
    let pos2 = map (\x -> x + 1) pos
    (neg2,pos2)

data Rectangle = Square Int | Oblong Int Int
instance Show Rectangle where
  show (Square side) = "Walking " ++ show side
  show (Oblong width height) = "hello professor"


area :: Rectangle -> Int
area (Square x) = x * x
area (Oblong x y) = x * y