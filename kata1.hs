import Data.List

pad l s = take l $ s ++ repeat ' '
maxLen = maximum . map length
padList l = map (pad (maxLen l)) l
alternate = concat . transpose . padList

main = do
   print(alternate ["abc", "123", "xyz"])
   print(alternate ["abc", "1"])
   print(alternate ["abcd", "12", "x"])
   print(alternate ["ab", "1234"])
