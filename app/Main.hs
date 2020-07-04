{-# LANGUAGE OverloadedStrings #-}

module Main where

import qualified Network.Wai.Handler.Warp as Warp
import qualified Network.Wai as Wai
import qualified Network.HTTP.Types as HTypes

import Lib

main :: IO ()
main = Warp.run 8000 helloApp

helloApp :: Wai.Application
helloApp req res = res $ Wai.responseBuilder HTypes.status200 [] "<h1>Hello World!</h1>"