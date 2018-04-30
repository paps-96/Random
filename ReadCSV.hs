---------Reading Csv file in Haskell ----------
main = do
----Read the file
   file <- readFile "hi.csv"
----Split the file into lines using the command lines
----Use command split to split lines into values after every ","
   let linesOfFlie =map (map (filter (/=' '))) (map split (lines file))
   print linesOfFlie
   
--We are printing a list of lists
   --Each inner list is the line
   --Each element of an inner list is the element of that specific line


split :: String -> [String]
split [] = [""]
split (c:cs)
   | c == ','  = "" : rest
   | otherwise = (c : head rest) : tail rest
 where
   rest = split cs
