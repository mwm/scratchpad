module Main where

import System.Environment

main = getEnv "Message" >>= putStrLn
