module Example_01 exposing (..)

import Browser exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


main : Program () Model Msg
main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }


init : Model
init =
    { firstName = ""
    , lastName = ""
    , fullName = ""
    }


type alias Model =
    { firstName : String
    , lastName : String
    , fullName : String
    }


type Msg
    = FirstNameChanged String
    | LastNameChanged String
    | ResetName


update : Msg -> Model -> Model
update msg model =
    case msg of
        FirstNameChanged value ->
            { model | firstName = value }

        LastNameChanged value ->
            { model | lastName = value }

        ResetName ->
            { model | firstName = "", lastName = "" }


view : Model -> Html Msg
view model =
    div []
        [ input [ onInput FirstNameChanged, type_ "text", value model.firstName ] []
        , input [ onInput LastNameChanged, type_ "text", value model.lastName ] []
        , div [] [ viewGetFullName model ]
        , button [ onClick ResetName ] [ text "Reset" ]
        ]


viewGetFullName : Model -> Html Msg
viewGetFullName model =
    text (model.firstName ++ " " ++ model.lastName)
