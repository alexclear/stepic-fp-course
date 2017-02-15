class Printable a where
   toString :: a -> String

instance Printable Bool where
   toString x | x == True = "true"
              | x == False = "false"

instance Printable () where
   toString x = "unit type"

instance (Printable a, Printable b) => Printable (a, b) where
   toString (a, b) = "(" ++ toString a ++ "," ++ toString b ++ ")"
