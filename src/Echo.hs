module Echo where

import System.Environment

main = getArgs >>= mapM putStrLn >> return ()