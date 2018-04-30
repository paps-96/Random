---------Reading Csv file in Haskell ----------
main = do
----Read the file
   file <- readFile "hi.csv"
----Split the file into lines using the command lines
----Use command split to split lines into values after every ","
   let linesOfFlie =map (map (filter (/=' '))) (map split (lines file))
   print linesOfFlie


split :: String -> [String]
split [] = [""]
split (c:cs)
   | c == ','  = "" : rest
   | otherwise = (c : head rest) : tail rest
 where
   rest = split cs
