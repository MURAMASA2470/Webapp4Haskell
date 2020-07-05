{-# LANGUAGE OverloadedStrings #-}

module Main where

import qualified Network.Wai.Handler.Warp as Warp

import qualified Router as Route

main :: IO ()
main = Warp.run 8000 Route.router