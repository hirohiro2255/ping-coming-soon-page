module Main exposing (..)

import Html exposing (Html, a, button, div, footer, h1, h2, i, img, input, li, main_, p, section, small, span, strong, text, ul)
import Html.Attributes exposing (alt, class, classList, href, placeholder, src, target)
import VitePluginHelper


viewHero : Html msg
viewHero =
    section [ class "hero-section" ]
        [ div [ class "hero-wrapper" ]
            [ h1 [ class "hero-heading" ] [ text "PING" ]
            , h2 [ class "hero-sub-heading" ] [ text "We are launching ", strong [ class "strong-text" ] [ text "soon!" ] ]
            , p [ class "paragraph" ] [ text "Subscribe and get notified" ]
            , div [ class "input-group" ]
                [ div [ class "email-group" ]
                    [ input [ classList [ ( "email", True ) ], placeholder "Your email address…" ] []
                    , small [ classList [ ( "error", False ), ( "non-error", True ) ] ] [ text "Please provide a valid email address" ]
                    ]
                , button [ class "button" ] [ text "Notify Me" ]
                ]
            ]
        ]


viewFooter : Html msg
viewFooter =
    footer [ class "footer" ]
        [ ul [ class "icon-list" ]
            [ li [ class "icon-item" ] [ a [ class "icon", href "https://facebook.com", target "_blank" ] [ i [ class "fa-brands", class "fa-facebook-f" ] [] ] ]
            , li [ class "icon-item" ] [ a [ class "icon", href "https://twitter.com", target "_blank" ] [ i [ class "fa-brands", class "fa-twitter" ] [] ] ]
            , li [ class "icon-item" ] [ a [ class "icon", href "https://instagram.com", target "_blank" ] [ i [ class "fa-brands", class "fa-instagram" ] [] ] ]
            ]
        , p [ class "copy-right" ] [ small [] [ text "©" ], text " Copyright Ping. All rights reserved." ]
        ]


main : Html msg
main =
    main_ [ class "container" ]
        [ viewHero
        , div [ class "img-section" ] [ img [ src <| VitePluginHelper.asset "/src/assets/illustration-dashboard.png", alt "hero image", class "hero-img" ] [] ]
        , viewFooter
        ]
