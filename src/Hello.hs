module GreeterPlugin (resource) where
import GreetAPI (plugin)

resource = plugin { greet  = ("Good day, "++) }
