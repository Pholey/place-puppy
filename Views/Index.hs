import Web.Scotty
import Text.Blaze.Html5
import Text.Blaze.Html5.Attributes
import qualified Web.Scotty as S
import qualified Text.Blaze.Html5 as H
import qualified Text.Blaze.Html5.Attributes as A
import Text.Blaze.Html.Renderer.Text

module Placepuppy.Views.Index where

render = do
  S.html $ do
    H.body $ do
      h1 "placepuppy"
      ul $ do
        li "no cats"
        li "much puppy"
