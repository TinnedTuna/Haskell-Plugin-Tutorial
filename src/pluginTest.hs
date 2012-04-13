import System.Plugins
--import GreetAPI

main = do
  obj <- makePlugin "Hello.hs"
  putStrLn obj
--  loadStatus <- load obj ["."] [] "resource"
--    case loadStatus of
--      LoadFailure err -> error $ ("LOADFAILURE: " ++ (show err))
--     LoadSuccess mod a -> do
--        str <- getLine
--        putStrLn $ a str

makePlugin plugName = do 
  makeStatus <- make plugName []
  case makeStatus of
    MakeFailure err -> error $ "MakeFailure: " ++ show err
    MakeSuccess mod o -> return o
