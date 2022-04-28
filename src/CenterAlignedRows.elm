module CenterAlignedRows exposing (main)

import Browser
import Element
import Element.Background as Background
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
    let
        box =
            Element.el
                [ Element.width (Element.maximum 60 Element.fill)
                , Element.height Element.fill
                , Background.color (Element.rgb 0.5 0.5 0.5)
                ]
                Element.none

        rowAttributes =
            [ Element.width Element.fill
            , Element.height Element.fill
            , Element.padding 20
            , Element.spacing 20
            , Background.color (Element.rgb 0.5 0 0.5)
            ]
    in
    Element.layout
        [ Element.width Element.fill
        , Element.height Element.fill
        , Element.padding 20
        , Background.color (Element.rgb 0 0.5 0.5)
        ]
        (Element.column
            [ Element.width Element.fill
            , Element.height Element.fill
            , Element.padding 20
            , Element.spacing 20
            , Background.color (Element.rgb 0.5 0.5 0)
            ]
            [ Element.row
                rowAttributes
                [ box
                , box
                , box
                , box
                ]
            , Element.row
                rowAttributes
                [ box
                , box
                , box
                , box
                , box
                ]
            , Element.row
                rowAttributes
                [ box
                , box
                , box
                , box
                ]
            ]
        )



-- UPDATE


type Msg
    = Msg


update : Msg -> Model -> Model
update msg model =
    model
