{-# LANGUAGE OverloadedStrings #-}

module Views.Index (render) where

import Web.Scotty
import Text.Blaze.Html5
import Text.Blaze.Html5.Attributes
import qualified Web.Scotty as S
import qualified Text.Blaze.Html5 as H
import qualified Text.Blaze.Html5.Attributes as A
import Text.Blaze.Html.Renderer.Text

render = do
  H.html $ do
    H.body $ do
      h1 "wow, such puppy"
      ul $ do
        li "much wag"
        li "woof"
