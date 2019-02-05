{-# LANGUAGE BangPatterns #-}
{-# OPTIONS_GHC -Wall -ddump-to-file -ddump-stg -ddump-cmm-raw -ddump-asm #-}

fib :: (Num a, Eq a) => a -> a
fib n = go 0 1 0
  where
    go !acc0 acc1 i
      | i == n = acc0
      | otherwise = go acc1 (acc0 + acc1) (i + 1)

foreign import ccall unsafe "print_f64" print_f64 :: Double -> IO ()

main :: IO ()
main = do
  print_f64 $ (fib 10 :: Double)
