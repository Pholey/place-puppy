{-# LANGUAGE OverloadedStrings #-}
import Data.Monoid
import Web.Scotty
import qualified Text.Blaze.Html5
import Text.Blaze.Html.Renderer.Text

blaze = html . renderHtml

main = scotty 9001 $ do
  get "/" $ do
    html "<h1>NOTHING TO SEE HERE</h2>"

  matchAny "/:width/:height" $ do
    width <- param "width"
    height <- param "height"
    html $ mconcat ["Width: ", width, " Height: ",  height]
