{-# LANGUAGE OverloadedStrings #-}

module Router (
  router
) where

import qualified Network.Wai as Wai
-- Controllers
import qualified Controller.IndexController as Index

router :: Wai.Application
router req =
  case Wai.pathInfo req of
    []          -> Index.indexPage req
    ["second"]  -> Index.secondPage req
    _           -> Index.notFoundPage req
