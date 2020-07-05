{-# LANGUAGE OverloadedStrings #-}

module Controller.IndexController (
  indexPage, secondPage, notFoundPage
) where

import qualified Network.Wai as Wai
import qualified Network.HTTP.Types as HTypes

indexPage :: Wai.Application
indexPage req res = do
  res $ Wai.responseBuilder HTypes.status200 [] content
  where
    content = "<h1>Hello World!</h1>"

secondPage :: Wai.Application
secondPage req res = res $ Wai.responseBuilder HTypes.status200 [] "<h1>This is Second Page</h1>"

notFoundPage :: Wai.Application
notFoundPage req res = res $ Wai.responseBuilder HTypes.status404 [] "<h1>Not Found</h1>"