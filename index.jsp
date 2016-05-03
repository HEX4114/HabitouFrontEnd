<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Criteri'Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <script type="text/javascript" 
                src="http://maps.google.com/maps/api/js?key=AIzaSyAjCKf6zCL0EwJegJ4sV1wBu3T3gQ3fENA&sensor=false">
        </script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        
        <style type="text/css">
            @font-face { font-family: AR DESTINE; src: url('ARDESTINE.ttf'); }
            html {
                height:100%;
                display:block;
                width:100%;
            }
            body{
                height: 100%;
                display:flex;
                flex-flow: column;
                width:100%;
            }
            #titleApp{
                
                text-align: center;
                font-family : AR DESTINE;
                color : #FFFFFF;
                font-size : 92px;
                text-shadow: 0px 4px 9px #000000;
                
                
                line-height: 92px;
                background-image: linear-gradient(120deg, #41AF8E, #7F3499);
                box-shadow: 0 2px 6px rgba(0,0,0,0.6);
                z-index: 2;
                
                flex-basis: 100px;
            }
            #mapContainer{
                z-index: 1;
                flex-grow: 1;
            }
            save{
                background-image: linear-gradient(120deg, #00946A, #5C0079);
                background-color: #A1C643;
            }
            
            #rechercheDiv{
                margin-top: 20px;
                width: 425px;
            }
            .commandBorder {
                background-color: #fff;
                border : 2px solid #fff;
                border-radius: 3px;
                box-shadow: 0 2px 6px rgba(0,0,0,.3);
                margin-bottom : 22px;
                margin-left : 22px;
                text-align: left;
            }
            .commandInner {
                color : rgb(25,25,25);
                font-family : Roboto,Arial,sans-serif;
                font-size : 14px;
                padding-left : 5px;
                padding-right : 5px;
            }
            #transportsTitle {
                float: left;
            }
            .modeTransportDiv{
                float: right;
                margin-left: 20px;
                margin-bottom: 12px;
                margin-top : 6px;
            }
            .modeRentBuyDiv{
                float: left;
                margin-left: 0px;
                margin-bottom: 12px;
                margin-top : 6px;
            }
            .iconDiv{
                background-image: url(//maps.gstatic.com/tactile/directions/omnibox/directions-1x-20150929.png);
                background-size: 96px 216px;
                width: 24px;
                height: 24px;
                float: left;
                vertical-align: middle;
            }
            .iconBike{
                background-position: 0px -168px;
            }
            .iconCar{
                background-position: 0px -96px;
            }
            .iconTransit{
                background-position: 0px -120px;
            }
            .checkTransportDiv{
                margin-top: 4px;
                margin-left: 4px;
                float: right;
                vertical-align: middle;
            }
            .inputText {
                font : inherit;
                font-size : 15px;
                width : 98%;
                height : 24px;
                padding : 0px;
                padding-left : 2px;
                margin : 1px 1% 6px 1%;
                border : solid 2px #dedede;
                border-radius : 1px;
                background-color : #ffffff;
                box-shadow: 0px 1px 3px 1px #f0f0f0 inset;
            }
            .inputText:disabled {
                color : #c0c0c0;
                border : solid 2px #eaeaea;
                background-color : #f0f0f0;
                box-shadow: 0px 0px 0px 0px #000000 inset;
            }
            .value {
                color : #777777;
                font-family : Arial;
                line-height : 10px;
                font-size : 10px;
                float: right;
                width: 20px;
                margin-top: 4px;
                margin-right: 2px;
                text-align: right;
                visibility: hidden;
                display: block;
            }
            .boundValues{
                color : #777777;
                font-family : Arial;
                font-size : 12px;
                width: 300px;
                float: right;
                font-weight: bold;
            }
            .boundMin{
                margin-left: 14%;
            }
            .boundMiddle{
                margin-left: 39%;
            }
            .boundMax{
                margin-left: 34%;
            }
            .bound0{
                margin-left: 14%;
            }
            .bound5{
                margin-left: 18.5%;
            }
            .bound10{
                margin-left: 15.7%;
            }
            .bound15{
                margin-left: 14.5%;
            }
            .bound20{
                margin-left: 14.5%;
            }
            input[type="checkbox"].critCheck {
                cursor: pointer;
                -webkit-appearance: none;
                height: 15px;
                width: 15px;
                border-radius: 2px;
                border : solid 2px #9f9f9f;
                background-image:linear-gradient(60deg, #A8A8A8, #636363);
                margin-top : 0px;
                vertical-align : top;
            }
            input[type="checkbox"].critCheck:checked {
                background-image:linear-gradient(60deg, #969696, #565656);
                border : solid 2px #5f5f5f;
            }
            input[type=checkbox].critCheck:focus {
                outline: none;
            }
            label {
                cursor: pointer;
                opacity: 0;
                content: '';
                width: 12px;
                height: 7px;
                top: auto;
                left: auto;
                margin-top: 2px;
                margin-left: -13px;
                position: absolute;
                background: transparent;
                border: 3px solid #E8E8E8;
                border-top: none;
                border-right: none;
                -webkit-transform: rotate(-45deg);
                -moz-transform: rotate(-45deg);
                -o-transform: rotate(-45deg);
                -ms-transform: rotate(-45deg);
                transform: rotate(-45deg);
            }
            input[type=checkbox].critCheck:hover + .labelChek {
                opacity: 0.5;
            }
            input[type=checkbox].critCheck:checked + .labelChek {
                opacity: 1;
                border-color: #B9DB48;
            }
            .critereDiv{
                margin: 0px 0px 8px 0px;
            }
            .critereName {
                margin-right : 8px;
            }
            .cursorEnabled {
                /*removes default webkit styles*/
                -webkit-appearance: none;
                /*fix for FF unable to apply focus style bug */
                border: 1px solid white;
                float: right;
                margin-top : 4px;
                /*required for proper track sizing in FF*/
                width: 300px;
                cursor: pointer;
            }
            .cursorEnabled::-webkit-slider-runnable-track {
                height: 5px;
                background: #ccc;
                border: inset 1px;
                border-radius: 2px;
            }
            .cursorEnabled::-webkit-slider-thumb {
                -webkit-appearance: none;
                border: solid 1px;
                height: 18px;
                width: 10px;
                border-radius: 2px;
                background: whitesmoke;
                margin-top: -7px;
            }
            .cursorEnabled:active::-webkit-slider-thumb {
                background: #ddd;
            }
            input[type=range] {
                outline: none;
                width: 66%;
            }
            .cursorDisabled {
                /*removes default webkit styles*/
                -webkit-appearance: none;
                /*fix for FF unable to apply focus style bug */
                border: 1px solid white;
                /*required for proper track sizing in FF*/
                width: 250px;
                float: right;
                margin-top : 4px;
                cursor: default;
            }
            .cursorDisabled::-webkit-slider-runnable-track {
                height: 5px;
                background: #eee;
                border: none 1px;
                border-radius: 2px;
            }
            .cursorDisabled::-webkit-slider-thumb {
                visibility: hidden;
            }
            #titleCritere{
                margin : 6px 0px 6px 5px;
            }
            .targetZone { display: none; }
            .targetOffer { display: none; }
            .themeCritereTitle {
                margin : 6px 0px 6px 5px;
            }
            .button {
                margin : 4px 0px 5px 0px;
                width : 100%;
                height : 40px;
                border-radius: 2px;
                border : solid 2px #5f5f5f;
                background-image:linear-gradient(120deg, #EFF2C6, #F8F9E0);
                box-shadow: -1px 2px 20px rgba(255, 255, 255, 0.6) inset,
                    0px -1px 1px 0px rgba(0, 0, 0, 0.3) inset;
                cursor: pointer;
            }
            .button:disabled {
                background-color : #f5f5f5;
                background-image:linear-gradient(50deg, #f0f0f0, #f0f0f0);
                box-shadow: 0px 0px 0px rgba(0, 0, 0, 0);
                border : solid 2px #9f9f9f;
                cursor: default;
            }
            #searchAlert {
                color : red;
                font-size : 12px;
                text-align: center;
                background-color:#f8dcdc;
                margin-bottom : 2px;
            }
            #squareInfosDiv {
                width: 100%;
            }
            #titleResult {
                width: 100%;
            }
            .resultInfos {
                display: inline-block;
                text-align: right;
                width: 10%;
                margin-left: 10px;
                margin-top: 4px;
                vertical-align: top;
            }
            .critereResultDiv {
                margin: 4px 0px 4px 0px;
            }
            .critereNameInfos{
                display: inline-block;
                width: 30%;
                margin-top: 4px;
                vertical-align: top;
            }
            .pastille{
                width: 24px;
                height: 24px;
                background-position: 2px 2px;
                border-radius: 100%;
                background-color: #99CC00;
                display: inline-block;
                margin: 0px 5px 0px 5px;
            }
            .modal-header, h4, .close {
                background-color: #5cb85c;
                color:white !important;
                text-align: center;
                font-size: 30px;
            }
            .modal-footer {
                background-color: #f9f9f9;
            }
            
            .cssload-thecube {
                    width: 73px;
                    height: 73px;
                    margin: 0 auto;
                    margin-top: 49px;
                    position: relative;
                    transform: rotateZ(45deg);
                            -o-transform: rotateZ(45deg);
                            -ms-transform: rotateZ(45deg);
                            -webkit-transform: rotateZ(45deg);
                            -moz-transform: rotateZ(45deg);
            }
            .cssload-thecube .cssload-cube {
                    position: relative;
                    transform: rotateZ(45deg);
                            -o-transform: rotateZ(45deg);
                            -ms-transform: rotateZ(45deg);
                            -webkit-transform: rotateZ(45deg);
                            -moz-transform: rotateZ(45deg);
            }
            .cssload-thecube .cssload-cube {
                    float: left;
                    width: 50%;
                    height: 50%;
                    position: relative;
                    transform: scale(1.1);
                            -o-transform: scale(1.1);
                            -ms-transform: scale(1.1);
                            -webkit-transform: scale(1.1);
                            -moz-transform: scale(1.1);
            }
            .cssload-thecube .cssload-cube:before {
                    content: "";
                    position: absolute;
                    top: 0;
                    left: 0;
                    width: 100%;
                    height: 100%;
                    background-color: rgb(65,175,142);
                    animation: cssload-fold-thecube 2.76s infinite linear both;
                            -o-animation: cssload-fold-thecube 2.76s infinite linear both;
                            -ms-animation: cssload-fold-thecube 2.76s infinite linear both;
                            -webkit-animation: cssload-fold-thecube 2.76s infinite linear both;
                            -moz-animation: cssload-fold-thecube 2.76s infinite linear both;
                    transform-origin: 100% 100%;
                            -o-transform-origin: 100% 100%;
                            -ms-transform-origin: 100% 100%;
                            -webkit-transform-origin: 100% 100%;
                            -moz-transform-origin: 100% 100%;
            }
            .cssload-thecube .cssload-c2 {
                    transform: scale(1.1) rotateZ(90deg);
                            -o-transform: scale(1.1) rotateZ(90deg);
                            -ms-transform: scale(1.1) rotateZ(90deg);
                            -webkit-transform: scale(1.1) rotateZ(90deg);
                            -moz-transform: scale(1.1) rotateZ(90deg);
            }
            .cssload-thecube .cssload-c3 {
                    transform: scale(1.1) rotateZ(180deg);
                            -o-transform: scale(1.1) rotateZ(180deg);
                            -ms-transform: scale(1.1) rotateZ(180deg);
                            -webkit-transform: scale(1.1) rotateZ(180deg);
                            -moz-transform: scale(1.1) rotateZ(180deg);
            }
            .cssload-thecube .cssload-c4 {
                    transform: scale(1.1) rotateZ(270deg);
                            -o-transform: scale(1.1) rotateZ(270deg);
                            -ms-transform: scale(1.1) rotateZ(270deg);
                            -webkit-transform: scale(1.1) rotateZ(270deg);
                            -moz-transform: scale(1.1) rotateZ(270deg);
            }
            .cssload-thecube .cssload-c2:before {
                background-color: #4C9990; 
                    animation-delay: 0.35s;
                            -o-animation-delay: 0.35s;
                            -ms-animation-delay: 0.35s;
                            -webkit-animation-delay: 0.35s;
                            -moz-animation-delay: 0.35s;
            }
            .cssload-thecube .cssload-c3:before {
                background-color: #588292; 
                    animation-delay: 0.69s;
                            -o-animation-delay: 0.69s;
                            -ms-animation-delay: 0.69s;
                            -webkit-animation-delay: 0.69s;
                            -moz-animation-delay: 0.69s;
            }
            .cssload-thecube .cssload-c4:before {
                background-color: #695F96;
                    animation-delay: 1.04s;
                            -o-animation-delay: 1.04s;
                            -ms-animation-delay: 1.04s;
                            -webkit-animation-delay: 1.04s;
                            -moz-animation-delay: 1.04s;
            }
            @keyframes cssload-fold-thecube {
                    0%, 10% {
                            transform: perspective(136px) rotateX(-180deg);
                            opacity: 0;
                    }
                    25%,
                                            75% {
                            transform: perspective(136px) rotateX(0deg);
                            opacity: 1;
                    }
                    90%,
                                            100% {
                            transform: perspective(136px) rotateY(180deg);
                            opacity: 0;
                    }
            }
            @-o-keyframes cssload-fold-thecube {
                    0%, 10% {
                            -o-transform: perspective(136px) rotateX(-180deg);
                            opacity: 0;
                    }
                    25%,
                                            75% {
                            -o-transform: perspective(136px) rotateX(0deg);
                            opacity: 1;
                    }
                    90%,
                                            100% {
                            -o-transform: perspective(136px) rotateY(180deg);
                            opacity: 0;
                    }
            }
            @-ms-keyframes cssload-fold-thecube {
                    0%, 10% {
                            -ms-transform: perspective(136px) rotateX(-180deg);
                            opacity: 0;
                    }
                    25%,
                                            75% {
                            -ms-transform: perspective(136px) rotateX(0deg);
                            opacity: 1;
                    }
                    90%,
                                            100% {
                            -ms-transform: perspective(136px) rotateY(180deg);
                            opacity: 0;
                    }
            }
            @-webkit-keyframes cssload-fold-thecube {
                    0%, 10% {
                            -webkit-transform: perspective(136px) rotateX(-180deg);
                            opacity: 0;
                    }
                    25%,
                                            75% {
                            -webkit-transform: perspective(136px) rotateX(0deg);
                            opacity: 1;
                    }
                    90%,
                                            100% {
                            -webkit-transform: perspective(136px) rotateY(180deg);
                            opacity: 0;
                    }
            }
            @-moz-keyframes cssload-fold-thecube {
                    0%, 10% {
                            -moz-transform: perspective(136px) rotateX(-180deg);
                            opacity: 0;
                    }
                    25%,
                                            75% {
                            -moz-transform: perspective(136px) rotateX(0deg);
                            opacity: 1;
                    }
                    90%,
                                            100% {
                            -moz-transform: perspective(136px) rotateY(180deg);
                            opacity: 0;
                    }
            }
            
            #loadingSquare{
                position: absolute;
                top: 45%;
                left: 48%;
                z-index: 30;
            }
            
            .displayButton{
                -webkit-appearance: none;
                border-width: 5px;
                border: solid 3px #777777;
                border-radius: 100%;
                width: 20px;
                height: 20px;
                margin-top: 15px;
                cursor:pointer;
                background-image: url("img/icon_plus.png");
                background-size: 12px 12px;
                background-position: 1px 1px;
            }
            .displayButton:focus{
                outline: none;
            }
            .displayButton:checked:focus{
                outline: none;
            }
            .displayButton:hover{
                opacity: 0.4;
            }
            .displayButton:checked{
                background-image: url("img/icon_moins.png");
            }
            .displayTitle {
                margin-top: 6px;
                margin-left: 4px;
                vertical-align: top;
                display: inline-block;
                font-weight: bold;
            }
            
            .borderButton {
                -webkit-appearance: none;
                background-image : none;
                background-color: #DDDDDD;
                border-radius: 2px;
                border: solid 3px #AAAAAA;
                height: 50px;
                padding-left: 20px;
                padding-right: 20px;
                position: absolute;
                top:25px;
                float: right;
                z-index: 100;
                font-weight: bold;
            }
            .borderButton:hover {
                background-color: #EEEEEE;
                border-color: #BBBBBB;
            }
            .borderButton.offre {
                right: 200px;
            }
            .borderButton.compte {
                right: 30px;
            }
            
        </style>
    </head>
    <body onload="GetMap()">

        <div id="titleApp">Criteri'Home</div>
        <button type="button" class="borderButton compte" id="myBtnCompte">Mon compte</button>
        <button type="button" class="borderButton offre" id="myBtn">Créer une offre</button>
        
        <div id="mapContainer">
        </div>

        <div id="recherches">
            <div id="rechercheDiv">
                <div id="rechercheBord" class="commandBorder">
                    <div id="rechercheInter" class="commandInner">
                        <div id="titleCritere">
                            <input type="checkbox" id="minMaxButton" onclick="ToggleCriteria(document.querySelectorAll('.targetZone'))" class="displayButton" >
                            <div class="displayTitle">Chercher un quartier</div>
                        </div>
                        <div class="targetZone">
                            <div id="zoneCritDiv">
                                <div class="themeCritereTitle" id="zonesTitle">
                                    Zone :             
                                </div> 
                                <select id="zonesDiv">
                                    <option value="gl">Grand Lyon</option>
                                    <option value="l1">Lyon 1</option>
                                    <option value="villeurbanne">Villeurbanne</option>
                                </select>
                            </div>
                            <div id="transportsCritDiv">
                                <div class="themeCritereTitle" id="transportsTitle">
                                    Moyens de transport :
                                </div>
                                <div id="listTransportsDiv">
                                    <div id="transport" class="modeTransportDiv" >
                                        <div class="iconDiv iconTransit">
                                        </div>
                                        <div class="checkTransportDiv">
                                            <input class="critCheck" type="checkbox" id="transportCheck" /><label class="labelChek" for="transportCheck"></label>
                                        </div>
                                    </div>
                                    <div id="car" class="modeTransportDiv" >
                                        <div class="iconDiv iconCar">
                                        </div>
                                        <div class="checkTransportDiv">
                                            <input class="critCheck" type="checkbox" id="carCheck" /><label class="labelChek" for="carCheck"></label>
                                        </div>
                                    </div>
                                    <div id="bike" class="modeTransportDiv" >
                                        <div class="iconDiv iconBike">
                                        </div>
                                        <div class="checkTransportDiv">
                                            <input class="critCheck" type="checkbox" id="bikeCheck" /><label class="labelChek" for="bikeCheck"></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div></div>
                            </br></br>
                            <div class="themeCritereTitle">
                                À moins de (distance en min) :
                                </br>
                            </div>
                            <div class="boundValues">
                                <span class="boundMin">0</span><span class="boundMiddle">50</span><span class="boundMax">100</span>
                                </br>
                            </div>
                            </br>
                            <div id="listCriteresDiv">
                                <div id="adress" class="critereDiv">
                                    <input class="critCheck" type="checkbox" id="critAddresseCheck" onclick="EnableCritereZone(0)"/><label class="labelChek" for="critAddresseCheck"></label>
                                    <span class="critereName">Adresse </span>
                                    <input type="range" min="0" max="100" step="1" value="50" class="cursorDisabled" oninput="GrabCursor(0, 1)" disabled>
                                    <span class="value">0</span>
                                    </br>
                                    <input type="text" id="adressInput" class="inputText" onkeydown="EnterPressed(this)" disabled value="Adresse..."/>

                                </div>
                                <div class="boundValues">
                                    <span class="bound0">0</span>
                                    <span class="bound5">5</span>
                                    <span class="bound10">10</span>
                                    <span class="bound15">15</span>
                                    <span class="bound20">20</span>
                                </div>
                                </br>
                                <div id="supermarket" class="critereDiv">
                                    <input class="critCheck" type="checkbox" id="crit1Check" onclick="EnableCritereZone(3)"/><label class="labelChek" for="crit1Check"></label>
                                    <span class="critereName">Supermarché</span>
                                    <input type="range" min="0" max="20" step="1" value="10" class="cursorDisabled" oninput="GrabCursor(3, 1)" disabled>
                                    <span class="value">0</span>
                                </div>
                                <div id="school" class="critereDiv" hidden>
                                    <input class="critCheck" type="checkbox" id="crit2Check" onclick="EnableCritereZone(4)"/><label class="labelChek" for="crit2Check"></label>
                                    <span class="critereName">École</span>
                                    <input type="range" min="0" max="20" step="1" value="10" class="cursorDisabled" oninput="GrabCursor(4, 1)" disabled>
                                    <span class="value">0</span>
                                </div>
                                <div id="transport" class="critereDiv" hidden>
                                    <input class="critCheck" type="checkbox" id="crit3Check" onclick="EnableCritereZone(5)"/><label class="labelChek" for="crit3Check"></label>
                                    <span class="critereName">Station de transport</span>
                                    <input type="range" min="0" max="20" step="1" value="10" class="cursorDisabled" oninput="GrabCursor(5, 1)" disabled>
                                    <span class="value">0</span>
                                </div>
                                <div id="atm" class="critereDiv">
                                    <input class="critCheck" type="checkbox" id="crit4Check" onclick="EnableCritereZone(6)"/><label class="labelChek" for="crit4Check"></label>
                                    <span class="critereName">Borne de retrait</span>
                                    <input type="range" min="0" max="20" step="1" value="10" class="cursorDisabled" oninput="GrabCursor(6, 1)" disabled>
                                    <span class="value">0</span>
                                </div>
                            </div>

                            <button id="searchButton" type="button" onclick="ClickSearchButton(this)" class="button" > 
                                Rechercher
                            </button> 

                            <div id="searchAlert">
                            </div>
                        </div>

                    </div>

                </div>
            </div>

            <div id="rechercheOffreDiv">
                <div id="rechercheBord" class="commandBorder">
                    <div id="rechercheInter" class="commandInner">
                        <div id="titleCritere">
                            <input type="checkbox" id="minMaxButton" onclick="ToggleCriteria(document.querySelectorAll('.targetOffer'))" class="displayButton" >
                            <div class="displayTitle">Offres immobilières</div>
                        </div>
                        <div class="targetOffer">
                            <div id="listCriteresOffreDiv">
                                <div id="listRentBuysDiv">
                                    <div id="buy" class="modeRentBuyDiv" aria-label="Vendre">
                                        <input class="critCheck" type="checkbox" id="buyCheck" onclick="EnablePriceBuyCheck(this)" checked/><label class="labelChek" for="buyCheck"></label>
                                        <span class="critereName">Vendre</span>
                                    </div>
                                    <div id="rent" class="modeRentBuyDiv" aria-label="Louer">
                                        <input class="critCheck" type="checkbox" id="rentCheck" onclick="EnablePriceRentCheck(this)" checked/><label class="labelChek" for="rentCheck"></label>
                                        <span class="critereName">Louer</span>
                                    </div>
                                </div>
                                </br>
                                <div class="boundValues">
                                    <span class="boundMin">0</span>
                                    <span class="boundMiddle">5</span>
                                    <span class="boundMax">10+</span>
                                </div>
                                </br>
                                <div id="rooms" class="critereDiv">
                                    <input class="critCheck" type="checkbox" id="roomCheck" onclick="EnableCritereOffers(4)"/><label class="labelChek" for="roomCheck"></label>
                                    <span class="critereName">No. chambres</span>
                                    <input type="range" min="0" max="10" step="1" value="5" class="cursorDisabled" oninput="GrabCursor(4, 2)" disabled>
                                    <span class="value">0</span>
                                </div>
                                <div id="floor" class="critereDiv">
                                    <input class="critCheck" type="checkbox" id="floorCheck" onclick="EnableCritereOffers(5)"/><label class="labelChek" for="floorCheck"></label>
                                    <span class="critereName">No. étage</span>
                                    <input type="range" min="0" max="10" step="1" value="5" class="cursorDisabled" oninput="GrabCursor(5, 2)" disabled>
                                    <span class="value">0</span>
                                </div>
                                <div id="boundRent" class="boundValues">
                                    <span class="boundMin">0</span>
                                    <span class="boundMiddle">500</span>
                                    <span class="boundMax">1000</span>
                                </div>
                                <div id="priceRent" class="critereDiv">
                                    <input class="critCheck" type="checkbox" id="priceRentCheck" onclick="EnableCritereOffers(7)"/><label class="labelChek" for="priceRentCheck"></label>
                                    <span class="critereName">Prix location</span>
                                    <input type="range" min="0" max="1000" step="10" value="500" class="cursorDisabled" oninput="GrabCursor(7, 2)" disabled>
                                    <span class="value">0</span>
                                </div>
                                <div id="boundBuy" class="boundValues">
                                    <span class="boundMin">0</span>
                                    <span class="boundMiddle">250</span>
                                    <span class="boundMax">500</span>
                                </div>
                                <div id="priceBuy" class="critereDiv">
                                    <input class="critCheck" type="checkbox" id="priceBuyCheck" onclick="EnableCritereOffers(9)"/><label class="labelChek" for="priceBuyCheck"></label>
                                    <span class="critereName">Prix achat</span>
                                    <input type="range" min="0" max="500" step="10" value="250" class="cursorDisabled" oninput="GrabCursor(9, 2)" disabled>
                                    <span class="value">0</span>
                                </div>
                            </div>

                            <button id="searchOfferButton" type="button" onclick="ClickSearchOfferButton(this)" class="button" > 
                                Rechercher
                            </button> 

                            <div id="searchOfferAlert">
                            </div>
                        </div>

                    </div>

                </div>
            </div>
			
			
            <div id="squareInfosDiv" hidden>
                <div id="resultBord" class="commandBorder">
                    <div id="resultInter" class="commandInner">
                        <div id="titleResult">
                            <b></b>
                        </div>
                        <div id="listInfosDiv">
                            <div id="adressResultDiv" class="critereResultDiv">
                                <div class="pastille" id="pastilleAdress"></div>
                                <div class="critereNameInfos">Adresse</div>
                                <div id="adressResultTime" class="resultInfos"></div>
                            </div>
                            <div id="superMarketResultDiv" class="critereResultDiv">
                                <div class="pastille" id="pastilleSupermarket"></div>
                                <div class="critereNameInfos">Supermarché</div>
                                <div id="supermarkerResultTime" class="resultInfos"></div>
                            </div>
                            <div id="schoolResultDiv" class="critereResultDiv" hidden>
                                <div class="pastille" id="pastilleSchool"></div>
                                <div class="critereNameInfos">École</div>
                                <div id="schoolResultTime" class="resultInfos"></div>
                            </div>
                            <div id="transportResultDiv" class="critereResultDiv" hidden>
                                <div class="pastille" id="pastilleTransport"></div>
                                <div class="critereNameInfos">Station de transport</div>
                                <div id="transportResultTime" class="resultInfos"></div>
                            </div>
                            <div id="atmResultDiv" class="critereResultDiv">
                                <div class="pastille" id="pastilleAtm"></div>
                                <div class="critereNameInfos">Borne de retrait</div>
                                <div id="atmResultTime" class="resultInfos"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div id="opacityDiv">
            <div id="resultBord" class="commandBorder">
                <div id="resultInter" class="commandInner">
                </div>
            </div>
        </div>

        
        <div class="cssload-thecube" id="loadingSquare" hidden>
            <div class="cssload-cube cssload-c1"></div>
            <div class="cssload-cube cssload-c2"></div>
            <div class="cssload-cube cssload-c4"></div>
            <div class="cssload-cube cssload-c3"></div>
        </div>

        <script type="text/javascript">
            var largeur = 0.00075;
            var hauteur = 0.0005;
            var rectanglesId = new Array;
            var rectangles = new Array;
            var animationTab = new Array;
            var intervals = new Array;
            var opacity = 0.45;
            var selectedRectangle = -1;
            var selectedRectangleFillColor;
            var selectedRectangleStrokeColor;
            var markersSquareSelected = new Array;
            var infoWindow;
            var critSupermarket;
            var critAtm;
            var critAddress;
            var critSupermarketSeuil;
            var critAtmSeuil;
            var critAddressSeuil;
            var critAddressString;
            var critCar;
            var critBike;
            var critTransport;

            var currentZone;
            var critGrandLyon;
            var critVilleurbanne;
            var critLyon1;

            var markers = [];

            function OpacityControl(controlDiv, map) {
                // Set CSS for the control border.
                var controlUpUI = document.createElement('div');
                controlUpUI.style.backgroundColor = '#fff';
                controlUpUI.style.border = '2px solid #fff';
                controlUpUI.style.borderRadius = '3px 3px 0px 0px';
                controlUpUI.style.boxShadow = '0 2px 6px rgba(0,0,0,.3)';
                controlUpUI.style.cursor = 'pointer';
                controlUpUI.style.margin = '0 auto';
                controlUpUI.style.textAlign = 'center';
                controlUpUI.style.width = '30px';
                controlUpUI.title = 'Click to increase opacity';
                controlDiv.appendChild(controlUpUI);
                // Set CSS for the control interior.
                var controlUpText = document.createElement('div');
                //controlUpText.setAttribute("class", "iconDiv iconCar");
                controlUpText.style.color = 'rgb(25,25,25)';
                controlUpText.style.fontFamily = 'Roboto,Arial,sans-serif';
                controlUpText.style.fontSize = '20px';
                controlUpText.style.lineHeight = '30px';
                controlUpText.style.paddingLeft = '2px';
                controlUpText.style.paddingRight = '2px';
                controlUpText.innerHTML = '&#x02C4';
                controlUpText.setAttribute("class", "democlass");
                controlUpUI.appendChild(controlUpText);
                // Setup the click event listeners.
                controlUpUI.addEventListener('click', function () {
                    opacity = opacity + 0.1;
                    if (opacity > 1)
                        opacity = 0.95;
                    UpdateSquaresOpacity();
                });
                var controlLabelUI = document.createElement('div');
                controlLabelUI.style.marginRight = '10px';
                controlLabelUI.style.textAlign = 'center';
                controlDiv.appendChild(controlLabelUI);
                // Set CSS for the control interior.
                var controlLabelText = document.createElement('div');
                controlLabelText.style.color = 'rgb(25,25,25)';
                controlLabelText.style.fontFamily = 'Roboto,Arial,sans-serif';
                controlLabelText.style.fontSize = '14px';
                controlLabelText.style.lineHeight = '30px';
                controlLabelText.innerHTML = 'Opacity';
                controlLabelUI.appendChild(controlLabelText);
                var controlDownUI = document.createElement('div');
                controlDownUI.style.backgroundColor = '#fff';
                controlDownUI.style.border = '2px solid #fff';
                controlDownUI.style.borderRadius = '0px 0px 3px 3px';
                controlDownUI.style.boxShadow = '0 2px 6px rgba(0,0,0,.3)';
                controlDownUI.style.cursor = 'pointer';
                controlDownUI.style.margin = '0 auto';
                controlDownUI.style.marginBottom = '10px';
                controlDownUI.style.textAlign = 'center';
                controlDownUI.style.width = '30px';
                controlDownUI.title = 'Click to decrease opacity';
                controlDiv.appendChild(controlDownUI);
                // Set CSS for the control interior.
                var controlDownText = document.createElement('div');
                controlDownText.style.color = 'rgb(25,25,25)';
                controlDownText.style.fontFamily = 'Roboto,Arial,sans-serif';
                controlDownText.style.fontSize = '20px';
                controlDownText.style.lineHeight = '30px';
                controlDownText.style.paddingLeft = '2px';
                controlDownText.style.paddingRight = '2px';
                controlDownText.innerHTML = '&#x02C5';
                controlDownUI.appendChild(controlDownText);
                // Setup the click event listeners: simply set the map to Chicago.
                controlDownUI.addEventListener('click', function () {
                    opacity = opacity - 0.1;
                    if (opacity < 0)
                        opacity = 0.05;
                    UpdateSquaresOpacity();
                });
            }
            function UpdateSquaresOpacity() {
                for (var i = 0; i < rectangles.length; i++) {
                    rectangles[i].setOptions({
                        strokeOpacity: opacity + 0.05,
                        fillOpacity: opacity
                    });
                }
            }
			
			
            function GetMap() {
                var origin = new google.maps.LatLng(45.760, 4.850);
                var myOptions = {
                    zoom: 13,
                    center: origin,
                    mapTypeId: google.maps.MapTypeId.ROADMAP,
                    disableDefaultUI: true
                };
                var container = document.getElementById("mapContainer");
                map = new google.maps.Map(container, myOptions);
                map.controls[google.maps.ControlPosition.LEFT_TOP].push(recherches);
				
                var opacityControlDiv = document.createElement('div');
                var opacityControl = new OpacityControl(opacityControlDiv, map);
                opacityControlDiv.index = 1;
                map.controls[google.maps.ControlPosition.RIGHT_BOTTOM].push(opacityControlDiv);
                GetOffers();
                map.addListener('click', function () {
                    document.getElementById("squareInfosDiv").hidden = true;
                    HighlightRectangle(selectedRectangle, false);
                    DeleteAllSelectedRectangleMarkers();
                    selectedRectangle = -1;
                    if (infoWindow != null) {
                        infoWindow.close();
                    }
                });
            }
            function GetOffers() {
                var xmlHttpReq = false;
                if (window.XMLHttpRequest) {
                    xmlHttpReq = new XMLHttpRequest();
                }
                else if (window.ActiveXObject) {
                    xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlHttpReq.open('GET', "getOffers", true);
                xmlHttpReq.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xmlHttpReq.onreadystatechange = function () {
                    if (xmlHttpReq.readyState == 4) {
                        GetMarkers(xmlHttpReq);
                    }
                }
                xmlHttpReq.send();
            }
            function GetMarkers(xmlHttpReq) {
                var offers = xmlHttpReq.responseXML.getElementsByTagName("offer");
                var ids = [];
                for (i = 0; i < offers.length; i++) {
                    ids[i] = xmlHttpReq.responseXML.getElementsByTagName("id")[i].childNodes[0].nodeValue;
                    var longi = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("long")[i].childNodes[0].nodeValue);
                    var lati = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("lat")[i].childNodes[0].nodeValue);
                    var typeOffer = xmlHttpReq.responseXML.getElementsByTagName("type")[i].childNodes[0].nodeValue;
                    if (typeOffer === 'vendre') {
                        markers[i] = new google.maps.Marker({
                            position: new google.maps.LatLng(lati, longi),
                            map: map,
                            icon: 'http://maps.google.com/mapfiles/ms/icons/green-dot.png'
                        });
                    } else {
                        markers[i] = new google.maps.Marker({
                            position: new google.maps.LatLng(lati, longi),
                            map: map,
                            icon: 'http://maps.google.com/mapfiles/ms/icons/blue-dot.png'
                        });
                    }
                    markers[i].index = i; //add index property
                    var prev_infoWindow = false;
                    google.maps.event.addListener(markers[i], 'click', function (event) {
                        ClickSquare(event);
                        var xmlHttpReq = false;
                        var ind = this.index;
                        if (window.XMLHttpRequest) {
                            xmlHttpReq = new XMLHttpRequest();
                        }
                        else if (window.ActiveXObject) {
                            xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
                        }
                        xmlHttpReq.open('GET', "getOfferById?id=" + ids[ind], true);
                        xmlHttpReq.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                        xmlHttpReq.onreadystatechange = function () {
                            if (xmlHttpReq.readyState == 4) {
                                var offer = xmlHttpReq.responseXML.getElementsByTagName("offer");
                                for (var i = 0; i < offer.length; i++) {
                                    var address = xmlHttpReq.responseXML.getElementsByTagName("address")[i].childNodes[0].nodeValue;
                                    var type = xmlHttpReq.responseXML.getElementsByTagName("type")[i].childNodes[0].nodeValue;
                                    var rooms = xmlHttpReq.responseXML.getElementsByTagName("rooms")[i].childNodes[0].nodeValue;
                                    var floor = xmlHttpReq.responseXML.getElementsByTagName("floor")[i].childNodes[0].nodeValue;
                                    var m2 = xmlHttpReq.responseXML.getElementsByTagName("m2")[i].childNodes[0].nodeValue;
                                    var price = xmlHttpReq.responseXML.getElementsByTagName("price")[i].childNodes[0].nodeValue;
                                    var link = xmlHttpReq.responseXML.getElementsByTagName("link")[i].childNodes[0].nodeValue;
                                    var src = window.location.href + "getOfferImagesById?id=" + ids[ind];
                                    infoWindow = new google.maps.InfoWindow({
                                        content: '<div class="popup_container">' +
                                                '<IMG ID="ImageOffer" BORDER="0" ALIGN="Top" SRC=' + src + ' width="100" height="100" >' +
                                                '<br> <br> Adresse : ' + address +
                                                '<br> Type : ' + type +
                                                '<br> No. chambres : ' + rooms +
                                                '<br> No. étage : ' + floor +
                                                '<br> Mètres carrés : ' + m2 +
                                                '<br> Prix : &euro; ' + parseFloat(price).toFixed(2) +
                                                '<br> <a href="' + link + '">' + 'Lien vers l annonce' + '</a>' +
                                                ' </div>',
                                        maxWidth: 300
                                    });
                                    if (prev_infoWindow) {
                                        prev_infoWindow.close();
                                    }
                                    infoWindow.open(map, markers[ind]);
                                    prev_infoWindow = infoWindow;
                                    map.panTo(markers[ind].getPosition());
                                }
                            }
                        }
                        xmlHttpReq.send();
                    });
                }
            }
            function ClearOverlays() {
                for (var i = 0; i < markers.length; i++) {
                    markers[i].setMap(null);
                }
                markers.length = 0;
            }
            /* Coloring squares */
            function SetIndicatorColor(id, distance, distanceMax) {
                var r = (distance >= distanceMax) ? (distance >= 2 * distanceMax) ? 255 : (distance - distanceMax) / distanceMax * 255 : 0;
                var g = (distance >= 2 * distanceMax) ? (distance >= 3 * distanceMax) ? 0 : (1 - (distance - distanceMax) / (2 * distanceMax)) * 255 : 255;
                var elem = document.getElementById(id);
                elem.style.color = RgbToHex(r, g, 0);
            }
            function GetColorFromScore(score) {
                //score = 1 - score;
                if (score < 0) {
                    return RgbToHex(255, 255, 255);
                }
                var r = (score >= 0.5) ? 131 + (1 - score) * 94 : 225;
                var g = (score >= 0.5) ? 198 : (2 * score) * 148 + 50;
                //var r = (score <= 0.5) ? (score)/0.5*255 : 255; 
                //var g = (score <= 0.5) ? 255 : (0.5 - score)/0.5*255;
                return RgbToHex(r, g, 0);
            }
            function RgbToHex(r, g, b) {
                return "#" + ((1 << 24) + (r << 16) + (g << 8) + b).toString(16).slice(1);
            }
            function EnableCritereZone(numCritere) {
                var nodes = document.getElementById('listCriteresDiv').children;
                for (var i = 0; i < nodes.length; i += 1) {
                    if (i == numCritere) {
                        if (i != 1 && i != 2) {
                            if (nodes[i].children[0].checked) {
                                nodes[i].children[3].className = "cursorEnabled";
                                nodes[i].children[3].disabled = false;
                                nodes[i].children[4].style = "visibility: visible";
                                GrabCursor(numCritere, 1);
                                if (i == 0) {
                                    nodes[0].children[6].select();
                                    nodes[0].children[6].disabled = false;
                                    nodes[0].children[6].focus();
                                }
                            } else {
                                nodes[i].children[3].className = "cursorDisabled";
                                nodes[i].children[3].disabled = true;
                                nodes[i].children[4].style = "visibility: hidden";
                                if (i == 0) {
                                    nodes[i].children[6].disabled = true;
                                }
                            }
                        }
                    }
                }
            }
            
            function EnableCritereOffers(numCritere) {
                var nodes = document.getElementById('listCriteresDiv').children;
                for (var i = 0; i < nodes.length; i += 1) {
                    if (i == numCritere) {
						if (nodes[i].children[0].checked) {
							nodes[i].children[3].className = "cursorEnabled";
							nodes[i].children[3].disabled = false;
							nodes[i].children[4].style = "visibility: visible";
							GrabCursor(numCritere, 2);
						} else {
							nodes[i].children[3].className = "cursorDisabled";
							nodes[i].children[3].disabled = true;
							nodes[i].children[4].style = "visibility: hidden";
						}
                    }
                }
            }
			
            function GrabCursor(numCursor, opt) {
                var nodes;
                if (opt === 1) {
                    nodes = document.getElementById('listCriteresDiv').children;
                } else if (opt === 2) {
                    nodes = document.getElementById('listCriteresOffreDiv').children;
                }
                for (var j = 0; j < nodes.length; j += 1) {
                    if (j == numCursor) {
                        var value = nodes[j].children[3].value;
                        nodes[j].children[4].innerHTML = value;
                    }
                }
            }
			
			
            function EnablePriceRentCheck(checkbox) {
                if (checkbox.checked) {
                    document.getElementById("priceRentCheck").disabled = false;
                } else {
                    document.getElementById("priceRentCheck").checked = false;
                    document.getElementById("priceRentCheck").disabled = true;
                }
                EnableCritere(7, 2);
            }
            function EnablePriceBuyCheck(checkbox) {
                if (checkbox.checked) {
                    document.getElementById("priceBuyCheck").disabled = false;
                } else {
                    document.getElementById("priceBuyCheck").checked = false;
                    document.getElementById("priceBuyCheck").disabled = true;
                }
                EnableCritere(9, 2);
            }
            /* Toggle criteres windows */
            function ToggleCriteria(elements, specifiedDisplay) {
                var element, index;
                elements = elements.length ? elements : [elements];
                for (index = 0; index < elements.length; index++) {
                    element = elements[index];
                    if (isElementHidden(element)) {
                        element.style.display = '';
                        // If the element is still hidden after removing the inline display
                        if (isElementHidden(element)) {
                            element.style.display = specifiedDisplay || 'block';
                        }
                    } else {
                        element.style.display = 'none';
                    }
                }
                function isElementHidden(element) {
                    return window.getComputedStyle(element, null).getPropertyValue('display') === 'none';
                }
            }
			
			
			
            function ClickSearchButton(button) {
                critAtm = false;
                critSupermarket = false;
                critAddress = false;
                critCar = false;
                critBike = false;
                critTransport = false;

                critGrandLyon = false;
                critVilleurbanne = false;
                critLyon1 = false;

                button.disabled = true;
                document.getElementById("squareInfosDiv").hidden = true;
                HighlightRectangle(selectedRectangle, false);
                DeleteAllSelectedRectangleMarkers();
                selectedRectangle = -1;
                if (infoWindow != null) {
                    infoWindow.close();
                }
                
                
                var parameters = "?";
                var triggerChecked = false;
                var nodes = document.getElementById('listCriteresDiv').children;
                for (var i = 0; i < nodes.length; i += 1) {
                    if (i != 1 && i != 2) {
                        if (nodes[i].children[0].checked) {
                            if (!(parameters == "?")) {
                                parameters += "&";
                            }
                            triggerChecked = true;
                            parameters += nodes[i].id + "=" + nodes[i].children[3].value * 60;
                            if(nodes[i].id == "adress") {
                                document.getElementById("loadingSquare").hidden = false;
                                var adressString = nodes[i].children[6].value.replace(/ /g, "+");
                                parameters += "&adressstring" + "=" + adressString;
                                critAddress = true;
                                critAddressSeuil = nodes[i].children[3].value * 60;
                                critAddressString = nodes[i].children[6].value;
                            }
                            if (nodes[i].id == "supermarket") {
                                critSupermarket = true;
                                critSupermarketSeuil = nodes[i].children[3].value * 60;
                            }
                            if (nodes[i].id == "atm") {
                                critAtm = true;
                                critAtmSeuil = nodes[i].children[3].value * 60;
                            }
                        } else {
                            if(nodes[i].id == "adress") {
                                parameters += nodes[i].id + "=null";
                                parameters += "&adressstring=null";
                            }
                        }
                    }
                }
                nodes = document.getElementById('listTransportsDiv').children;
                for (var i = 0; i < nodes.length; i += 1) {
                    if (nodes[i].children[1].children[0].checked) {
                        if (nodes[i].id == "car") {
                            critCar = true;
                        }
                        if (nodes[i].id == "bike") {
                            critBike = true;
                        }
                        if (nodes[i].id == "transport") {
                            critTransport = true;
                        }
                        parameters += "&" + nodes[i].id + "=y";
                    } else {
                        parameters += "&" + nodes[i].id + "=n";
                    }
                }

                var z = document.getElementById("zonesDiv");
                var selectedItem = z.options[z.selectedIndex].value;

                if (selectedItem === "gl") {
                    if (currentZone !== "gl") {
                        DeleteAllSquares();
                        currentZone = "gl";
                    }
                    critGrandLyon = true;
                }
                if (selectedItem === "l1") {
                    if (currentZone !== "l1") {
                        DeleteAllSquares();
                        currentZone = "l1";
                    }
                    critLyon1 = true;
                }
                if (selectedItem === "villeurbanne") {
                    if (currentZone !== "villeurbanne") {
                        DeleteAllSquares();
                        currentZone = "villeurbanne";
                    }
                    critVilleurbanne = true;
                }


                parameters += "&collection=";
                if (critVilleurbanne) {
                    parameters += "squaresV";
                } else if (critLyon1) {
                    parameters += "squaresL1";
                } else {
                    parameters += "squaresGL";
                }

                if (!triggerChecked) {
                    document.getElementById('searchAlert').innerHTML = "Aucun critère n'est sélectionné !";
                    document.getElementById("loadingSquare").hidden = true;
                    button.disabled = false;
                    DeleteAllSquares();
                } else {
                    document.getElementById('searchAlert').innerHTML = "";
                    //document.getElementById('requestAdressResult').innerHTML = parameters;
                    GetSquaresRequest(parameters);
                    //alert(parameters);
                }
            }
			
			
			
			
            function ClickSearchOfferButton(button) {
                button.disabled = true;
                setTimeout(function (button) {
                    button.disabled = false;
                }, 1400, button);
                var parameters = "?";
                var triggerChecked = false;
                var nodes = document.getElementById('listRentBuysDiv').children;
                for (var i = 0; i < nodes.length; i += 1) {
                    if (!(parameters == "?")) {
                        parameters += "&";
                    }
                    if (nodes[i].children[0].checked) {
                        triggerChecked = true;
                        parameters += nodes[i].id + "=y";
                    } else {
                        parameters += nodes[i].id + "=n";
                    }
                }
                nodes = document.getElementById('listCriteresOffreDiv').children;
                for (var i = 0; i < nodes.length; i += 1) {
                    if (i == 4 || i == 5 || i == 7 || i == 9) {
                        if (nodes[i].children[0].checked) {
                            triggerChecked = true;
                            parameters += "&";
                            parameters += nodes[i].id + "=" + nodes[i].children[3].value;
                        }
                    }
                }
                if (!triggerChecked) {
                    document.getElementById('searchOfferAlert').innerHTML = "Aucun critère n'est sélectionné !";
                    ClearOverlays();
                } else {
                    document.getElementById('searchOfferAlert').innerHTML = "";
                    console.log(parameters);
                    GetOffersRequest(parameters);
                }
            }
			function GetOffersRequest(parameters) {
                var xmlHttpReq = false;
                if (window.XMLHttpRequest) {
                    xmlHttpReq = new XMLHttpRequest();
                }
                else if (window.ActiveXObject) {
                    xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlHttpReq.open('GET', "getOffers" + parameters, true);
                xmlHttpReq.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xmlHttpReq.onreadystatechange = function () {
                    if (xmlHttpReq.readyState == 4) {
                        ClearOverlays();
                        GetMarkers(xmlHttpReq);
                    }
                }
                xmlHttpReq.send();
            }
			
			
            function EnterPressed(textBox) {
                //document.getElementById('searchButton').disabled = false;
                if (event.keyCode == 13) {
                    textBox.blur();
                    document.getElementById('searchButton').click();
                    document.getElementById('searchButton').focus();
                }
            }
            function GetSquaresRequest(parameters) {
                var xmlHttpReq = false;
                if (window.XMLHttpRequest) {
                    xmlHttpReq = new XMLHttpRequest();
                }
                else if (window.ActiveXObject) {
                    xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlHttpReq.open('GET', "getSquares" + parameters, true);
                xmlHttpReq.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xmlHttpReq.onreadystatechange = function () {
                    if (xmlHttpReq.readyState == 4) {
                        if(xmlHttpReq.status == 204) {
                            WrongAdress();
                        } else {
                            RefreshSquares(xmlHttpReq);
                        }
                    }
                }
                xmlHttpReq.send();
            }
            function WrongAdress() {
                document.getElementById('searchAlert').innerHTML = "L'adresse saisie est introuvable";
                DeleteAllSquares();
            }
            
            function GetOneSquareRequest(parameters) {
                var xmlHttpReq = false;
                if (window.XMLHttpRequest) {
                    xmlHttpReq = new XMLHttpRequest();
                }
                else if (window.ActiveXObject) {
                    xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlHttpReq.open('GET', "getSquareById" + parameters, true);
                xmlHttpReq.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xmlHttpReq.onreadystatechange = function () {
                    if (xmlHttpReq.readyState == 4) {
                        if(xmlHttpReq.status == 204) {
                            WrongAdress();
                        } else {
                            RefreshSquareInfos(xmlHttpReq);
                        }
                    }
                }
                xmlHttpReq.send();
            }
			
			
			
            function ClickSquare(event) {
                var parameters = "?";
                if (infoWindow != null) {
                    infoWindow.close();
                }
                parameters += "atm=";
                if (critAtm) {
                    parameters += critAtmSeuil;
                } else {
                    parameters += "null";
                }
                parameters += "&supermarket=";
                if (critSupermarket) {
                    parameters += critSupermarketSeuil;
                } else {
                    parameters += "null";
                }
                parameters += "&adress=";
                if (critAddress) {
                    parameters += critAddressSeuil;
                    parameters += "&adressstring=";
                    parameters += critAddressString;
                } else {
                    parameters += "null";
                    parameters += "&adressstring=";
                    parameters += "null";
                }
                parameters += "&car=";
                if (critCar) {
                    parameters += "y";
                } else {
                    parameters += "n";
                }
                parameters += "&bike=";
                if (critBike) {
                    parameters += "y";
                } else {
                    parameters += "n";
                }
                parameters += "&transport=";
                if (critTransport) {
                    parameters += "y";
                } else {
                    parameters += "n";
                }
                var lat = event.latLng.lat();
                var lng = event.latLng.lng();
                var north;
                var south;
                var east;
                var west;
                for (var i = 0; i < rectangles.length; i++) {
                    north = rectangles[i].getBounds().getNorthEast().lat();
                    south = rectangles[i].getBounds().getSouthWest().lat();
                    east = rectangles[i].getBounds().getNorthEast().lng();
                    west = rectangles[i].getBounds().getSouthWest().lng();
                    if (lat < north && lat > south) {
                        if (lng < east && lng > west) {
                            if (i == selectedRectangle) {
                                HighlightRectangle(i, false);
                                DeleteAllSelectedRectangleMarkers();
                                selectedRectangle = -1;
                                document.getElementById("squareInfosDiv").hidden = true;
                            } else {
                                parameters += "&id=" + rectanglesId[i];
                                //document.getElementById("requestAdressResult").innerHTML = parameters;
                                HighlightRectangle(selectedRectangle, false);
                                DeleteAllSelectedRectangleMarkers();
                                selectedRectangle = i;
                                HighlightRectangle(i, true);
                                GetOneSquareRequest(parameters);
                            }
                            return;
                        }
                    }
                }
            }
            function RefreshSquares(xmlHttpReq) {
                var squares = xmlHttpReq.responseXML.getElementsByTagName("square");
                var firstTime = false;
                
                for (var i=0; i<squares.length; i++) {
                    var result = "";
                    rectanglesId[i] = xmlHttpReq.responseXML.getElementsByTagName("id")[i].childNodes[0].nodeValue;
                    var long = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("long")[i].childNodes[0].nodeValue);
                    var lat = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("lat")[i].childNodes[0].nodeValue);
                    var score = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("score")[i].childNodes[0].nodeValue);
      
                    if(rectangles.length != squares.length) {
                        firstTime = true;
                        rectangles[i] = new google.maps.Rectangle({
                            strokeOpacity: 0,
                            fillOpacity: 0,
                            strokeWeight: 1,
                            map: map,
                            clickable: true,
                            bounds: {
                                north: lat + hauteur / 2,
                                south: lat - hauteur / 2,
                                east: long + largeur / 2,
                                west: long - largeur / 2
                            }
                        });
                        //map.event.addListener(rectangles[i], 'click', ClickSquare);
                        rectangles[i].addListener('click', ClickSquare);
                        //animationTab[i] = false;
                    }
                    fillOpacity = opacity;
                    strokeOpacity = opacity + 0.05;
                    fillColor = GetColorFromScore(score);
                    strokeColor = GetColorFromScore(score);
                    rectangles[i].setOptions({
                        strokeColor: strokeColor,
                        strokeOpacity: strokeOpacity,
                        fillColor: fillColor,
                        fillOpacity: fillOpacity
                    });
                }
                if(firstTime) {
                    setTimeout(function(){ 
                        document.getElementById("loadingSquare").hidden = true; 
                        document.getElementById("searchButton").disabled = false;
                    }, 600);
                } else {
                    setTimeout(function(){ 
                        document.getElementById("searchButton").disabled = false;
                        document.getElementById("loadingSquare").hidden = true; 
                    }, 300);
                }
                
            }
            function LaunchRemoteInterval(score, i) {
                intervals[i] = setInterval(ChangeSquare, 1, score, i);
            }
            function RefreshSquareInfos(xmlHttpReq) {
                document.getElementById("squareInfosDiv").hidden = false;
                var walkTime;
                var driveTime;
                var result;
                var carChecked;
                var score;
                var lati;
                var long;
                var icon;
                
                if(markersSquareSelected[0] != null) {
                    markersSquareSelected[0].setMap(null);
                    markersSquareSelected[0] = null;    
                }
                if (critAddress) {
                    document.getElementById("adressResultDiv").hidden = false;
                    if(!critCar) result = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("adress")[0].childNodes[0].childNodes[3].childNodes[0].nodeValue);
                    else {
                        driveTime = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("adress")[0].childNodes[1].childNodes[3].childNodes[0].nodeValue);
                        walkTime = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("adress")[0].childNodes[0].childNodes[3].childNodes[0].nodeValue);
                        result = (walkTime > driveTime ? driveTime : walkTime) ;
                    }
                    result = Math.round(result/60) ;
                    document.getElementById("adressResultTime").innerHTML = result + " min";
                    score = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("adress")[0].childNodes[2].childNodes[0].nodeValue);
                    icon = (score > 0 ? 'url(img/icon_adress.png)' : 'url(img/icon_adress_black.png)');
                    document.getElementById("pastilleAdress").style.backgroundImage = icon;
                    document.getElementById("pastilleAdress").style.backgroundColor = GetColorFromScore(score);
                    lati = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("adress")[0].childNodes[0].childNodes[1].childNodes[0].nodeValue);
                    long = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("adress")[0].childNodes[0].childNodes[2].childNodes[0].nodeValue);
                    markersSquareSelected[0] = new google.maps.Marker({
                        position: new google.maps.LatLng(lati, long),
                        map: map
                    });
                } else {
                    document.getElementById("adressResultDiv").hidden = true;
                }
                
                
                if(!critCar) result = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("supermarket")[0].childNodes[0].childNodes[3].childNodes[0].nodeValue);
                else {
                    driveTime = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("supermarket")[0].childNodes[1].childNodes[3].childNodes[0].nodeValue);
                    walkTime = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("supermarket")[0].childNodes[0].childNodes[3].childNodes[0].nodeValue);
                    result = (walkTime > driveTime ? driveTime : walkTime);
                }
                result = Math.round(result / 60);
                document.getElementById("supermarkerResultTime").innerHTML = result + " min";
                score = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("supermarket")[0].childNodes[2].childNodes[0].nodeValue);
                icon = (score > 0 ? 'url(img/icon_supermarket.png)' : 'url(img/icon_supermarket_black.png)');
                document.getElementById("pastilleSupermarket").style.backgroundImage = icon;
                document.getElementById("pastilleSupermarket").style.backgroundColor = GetColorFromScore(score);
                lati = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("supermarket")[0].childNodes[0].childNodes[1].childNodes[0].nodeValue);
                long = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("supermarket")[0].childNodes[0].childNodes[2].childNodes[0].nodeValue);
                if(markersSquareSelected[1] != null) {
                    markersSquareSelected[1].setMap(null);
                    markersSquareSelected[1] = null;    
                }
                markersSquareSelected[1] = new google.maps.Marker({
                    position: new google.maps.LatLng(lati, long),
                    map: map,
                    icon: 'http://maps.google.com/mapfiles/ms/icons/convienancestore.png'
                });
                if (!critCar)
                    result = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("atm")[0].childNodes[0].childNodes[3].childNodes[0].nodeValue);
                else {
                    driveTime = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("atm")[0].childNodes[1].childNodes[3].childNodes[0].nodeValue);
                    walkTime = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("atm")[0].childNodes[0].childNodes[3].childNodes[0].nodeValue);
                    result = (walkTime > driveTime ? driveTime : walkTime);
                }
                result = Math.round(result / 60);
                document.getElementById("atmResultTime").innerHTML = result + " min";
                score = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("atm")[0].childNodes[2].childNodes[0].nodeValue);
                icon = (score > 0 ? 'url(img/icon_atm.png)' : 'url(img/icon_atm_black.png)');
                document.getElementById("pastilleAtm").style.backgroundImage = icon;
                document.getElementById("pastilleAtm").style.backgroundColor = GetColorFromScore(score);
                lati = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("atm")[0].childNodes[0].childNodes[1].childNodes[0].nodeValue);
                long = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("atm")[0].childNodes[0].childNodes[2].childNodes[0].nodeValue);
                if(markersSquareSelected[2] != null) {
                    markersSquareSelected[2].setMap(null);
                    markersSquareSelected[2] = null;    
                }
                markersSquareSelected[2] = new google.maps.Marker({
                    position: new google.maps.LatLng(lati, long),
                    map: map,
                    icon: 'http://maps.google.com/mapfiles/ms/micons/euro.png'
                });
            }
            function DeleteAllSelectedRectangleMarkers() {
                if (markersSquareSelected != null) {
                    for (var k = 0; k < markersSquareSelected.length; k++) {
                        if (markersSquareSelected[k] != null) {
                            markersSquareSelected[k].setMap(null);
                            markersSquareSelected[k] = null;
                        }
                    }
                }
            }
            function DeleteAllSquares() {
                for (var k = 0; k < rectangles.length; k++) {
                    rectangles[k].setMap(null);
                    rectangles[k] = null;
                }
                rectangles = new Array;
            }
            function HighlightRectangle(i, todo) {
                var fillColor;
                var strokeColor;
                var strokeWeight;
                var strokeOpacity;
                var zIndex;
                if (i != -1) {
                    if (todo) {
                        strokeWeight = 4;
                        strokeOpacity = 1;
                        fillColor = "#FFFFFF";
                        strokeColor = "#FFFF00";
                        selectedRectangleFillColor = rectangles[i].fillColor;
                        selectedRectangleStrokeColor = rectangles[i].strokeColor;
                        zIndex = 5;
                    } else {
                        strokeWeight = 1;
                        strokeOpacity = opacity + 0.05;
                        fillColor = selectedRectangleFillColor;
                        strokeColor = selectedRectangleStrokeColor;
                        zIndex = 0;
                    }
                    rectangles[i].setOptions({
                        strokeColor: strokeColor,
                        fillColor: fillColor,
                        strokeOpacity: strokeOpacity,
                        strokeWeight: strokeWeight,
                        zIndex: zIndex
                    });
                }
            }
            
        </script>
        <script>
            $(document).ready(function(){
                $("#myBtn").click(function(){
                    $("#myModal").modal();
                });
            });
        </script>
        
        <script>
            $(document).ready(function() {
    // Lorsque je soumets le formulaire
            $('#addOfferForm').on('submit', function(e) {
                e.preventDefault(); // J'empêche le comportement par défaut du navigateur, c-à-d de soumettre le formulaire
                var $form = $(this); // L'objet jQuery du formulaire
                // Je récupère les valeurs
                var formdata = (window.FormData) ? new FormData($form[0]) : null;
                var data = (formdata !== null) ? formdata : $form.serialize();
                var address = $('#address').val();
                var price = $('#price').val();
                var type = $('#type').val();
                var link = $('#link').val();
                 
                // Je vérifie une première fois pour ne pas lancer la requête HTTP
                // si je sais que mon PHP renverra une erreur
                if(address === '' || price === '' || link === '' || type === '') {
                    alert('Les champs doivent êtres remplis');
                    return;
                } 
                else {
                    // Envoi de la requête HTTP en mode asynchrone
                    $.ajax({
                        url: $form.attr('action'),
                        type: $form.attr('method'),
                        contentType: false, // obligatoire pour de l'upload
                        processData: false, // obligatoire pour de l'upload
                        dataType: 'json', // selon le retour attendu
                        data: data,
                        success: function (response) {
                         }
                    });
                }
                alert("L'offre a bien été crée");
                $('.modal.in').modal('hide');
            });
        });
            
            
            
        </script>
        
        
        
        <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog">
          <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
              <div class="modal-header" style="padding:35px 50px;">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4><span class="glyphicon glyphicon-list-alt"></span> Ajouter une offre</h4>
              </div>
              <div class="modal-body" style="padding:40px 50px;">
                <form id="addOfferForm" role="form" action="addOffer" method="post" enctype="multipart/form-data">
                  <div class="form-group">
                    <p><span class="glyphicon glyphicon-home"></span> Adresse : </p>
                    <input type="text" class="form-control" id="address" name="address" placeholder="Enter correct address">
                  </div>
                  <div class="form-group">
                    <p><span class="glyphicon glyphicon-link"></span> Lien vers l'offre : </p>
                    <input type="text" class="form-control" id="link" name="link" placeholder="Enter link">
                  </div>
                  <div class="form-group">
                    <p><span class="glyphicon glyphicon-euro"></span> Prix : </p>
                    <input type="text" class="form-control" id="price" name="price" placeholder="Enter price">
                  </div>
                  <div class="form-group">
                    <p><span class="glyphicon glyphicon-transfer"></span> Type de contrat : </p>
                    <input type="text" class="form-control" id="type" name="type" placeholder="Enter type (location, buy)">
                  </div>
                  <div class="form-group">
                    <p><span class="glyphicon glyphicon-file"></span> Image : </p>
                    <input type="file" class="form-control" id="file" name="file" placeholder="Enter file to upload">
                  </div>
                    <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-plus"></span> Ajouter</button>
                </form>
              </div>
            </div>

          </div>
        </div>
    </body>
</html>