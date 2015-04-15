{-# LANGUAGE OverloadedStrings #-}
import Data.Monoid
import Web.Scotty
import qualified Data.Text.Lazy as T
import Data.Text.Lazy.Encoding (decodeUtf8)
import qualified Views.Index
import Text.Blaze.Html.Renderer.Text

blaze = html . renderHtml

main = scotty 9001 $ do
  get "/" $ do
    blaze Views.Index.render

  matchAny "/:width/:height" $ do
    width <- param "width"
    height <- param "height"
    html $ mconcat ["Width: ", width, " Height: ",  height]
