module ReverseString (reverseString) where
reverseString :: String -> String
reverseString "" = ""
reverseString (c:rest) = reverseString rest ++ (c : [])

-- Hello
