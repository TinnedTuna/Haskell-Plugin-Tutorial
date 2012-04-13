module GreetAPI (Interface(..), plugin) where

data Interface = Interface {
  greet :: String -> String
}

--plugin :: Interface
--plugin = Interface { greet = ("Hello, " ++)  }
