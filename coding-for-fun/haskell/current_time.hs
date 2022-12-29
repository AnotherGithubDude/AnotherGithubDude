import Data.Time.Clock
import Data.Time.Format
import Control.Concurrent

time :: IO ()
time = do
  currentTime <- getCurrentTime
  putStrLn (show currentTime)
  threadDelay 5000000 -- 5 seconds
  time

main :: IO ()
main = time
