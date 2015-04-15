{-# LANGUAGE OverloadedStrings #-}

module Views.Index (render) where

import Text.Blaze.Html5
import qualified Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes
import Text.Blaze.Html.Renderer.Text

render = do
  html $ do
    body $ do
      h1 "wow, such puppy"
      ul $ do
        li "much wag"
        li "woof"
      img ! src "puppy.jpg" ! alt "puppy!"
