#!/usr/bin/env runghc
-- Solve a linear equation

import Prelude hiding (putStrLn)
import Data.ByteString.Char8 (putStrLn)
import Data.ByteString.UTF8 (fromString)

root :: Float -> Float -> String
root 0 0 = "Αόριστη - άπειρες λύσεις"
root _ 0 = "Αδύνατη - καμμία λύση"
root a b = "x = " ++ show (-b / a)

putLine :: String -> IO()
putLine = putStrLn . fromString

main :: IO ()
main = do
putLine "Λύση πρωτοβάθμιας εξίσωσης αx + β = 0"
putChar '\n'
sl <- getLine
yi <- getLine
putLine $ "Κλίση = " ++ sl
putLine $ "y-τεταγμένη = " ++ yi
putLine $ (root (read sl) (read yi))
