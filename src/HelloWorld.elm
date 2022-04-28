module HelloWorld exposing (main)

import Browser
import Element
import Html



-- MAIN


main =
    Browser.sandbox
        { init = init
        , view = view
        , update = update
        }



-- MODEL


type alias Model =
    String


init : Model
init =
    "Hello, World!"



-- VIEW


view : Model -> Html.Html Msg
view model =
    Element.layout [] (Element.text model)



-- UPDATE


type Msg
    = Msg


update : Msg -> Model -> Model
update msg model =
    model
