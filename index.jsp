<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Criteri'Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
        <script type="text/javascript" 
            src="http://maps.google.com/maps/api/js?key=AIzaSyAjCKf6zCL0EwJegJ4sV1wBu3T3gQ3fENA&sensor=false">
        </script>
        
        <style type="text/css">
            @font-face { font-family: AR DESTINE; src: url('ARDESTINE.ttf'); }
            
            html {
                height:100%;
                display:block;
                width:100%;
            }
            body{
                height: 100%;
                display:block;
                width:100%;
            }
            #titleApp{
                vertical-align: top;
                text-align: center;
                font-family : AR DESTINE;
                font-size : 92px;
                margin: -10px 0px 0px -8px;
                padding: 0px;
                width: 102%;
                height: 100px;
                background-color: #A1C643;
                z-index: 2;
            }
            
            #mapContainer{
                margin-left: -8px;
                padding: 0px;
                width: 101%;
                height: 88%;
                z-index: 1;
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
                margin-right: 44.5%;
            }
            .boundMiddle{
                margin-right: 41%;
            }
            .boundMax{
            }
            
            input[type="checkbox"] {
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
            input[type="checkbox"]:checked {
                background-image:linear-gradient(60deg, #969696, #565656);
                border : solid 2px #5f5f5f;
            }
            input[type=checkbox]:focus {
                outline: none;
            }
            label {
                cursor: pointer;
                opacity: 0;
                content: '';
                width: 9px;
                height: 4px;
                top: auto;
                left: auto;
                margin-top: 2px;
                margin-left: -15px;
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
            input[type=checkbox]:hover + label {
                opacity: 0.5;
            }
            input[type=checkbox]:checked + label {
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
            input[type=range]:focus {
                outline: none;
            }
            
            .cursorDisabled {
                /*removes default webkit styles*/
                -webkit-appearance: none;
                /*fix for FF unable to apply focus style bug */
                border: 1px solid white;
                /*required for proper track sizing in FF*/
                width: 300px;
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
                margin : 6px 0px 10px 5px;
            }
            .themeCritereTitle {
                margin : 6px 0px 6px 5px;
            }
            
            .button {
                margin : 4px 0px 5px 0px;
                width : 100%;
                height : 50px;
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
                font-size : 12;
                text-align: center;
                background-color:#f8dcdc;
                margin-bottom : 2px;
            }
            
        </style>
    </head>
    <body onload="GetMap()">
        
        <div id="titleApp">Criteri'Home</div>
        
        <div id="mapContainer">
        </div>
        <div id="rechercheDiv">
            <div id="rechercheBord" class="commandBorder">
                <div id="rechercheInter" class="commandInner">
                    <div id="titleCritere">
                        <b>Critères de recherche :</b>
                        </br>
                    </div>
                    <div id="transportsCritDiv">
                        <div class="themeCritereTitle" id="transportsTitle">
                            Moyens de transport :
                        </div>
                        <div id="listTransportsDiv">
                            <div id="transport" class="modeTransportDiv" aria-label="En transports en commun">
                                <div class="iconDiv iconTransit">
                                </div>
                                <div class="checkTransportDiv">
                                    <input type="checkbox" id="transportCheck" onclick="EnableMode()"/><label for="transportCheck"></label>
                                </div>
                            </div>
                            <div id="car" class="modeTransportDiv" aria-label="En voiture">
                                <div class="iconDiv iconCar">
                                </div>
                                <div class="checkTransportDiv">
                                    <input type="checkbox" id="carCheck" onclick="EnableMode()"/><label for="carCheck"></label>
                                </div>
                            </div>
                            <div id="bike" class="modeTransportDiv" aria-label="À vélo">
                                <div class="iconDiv iconBike">
                                </div>
                                <div class="checkTransportDiv">
                                    <input type="checkbox" id="bikeCheck" onclick="EnableMode()"/><label for="bikeCheck"></label>
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
                            <input type="checkbox" id="critAdressCheck" onclick="EnableCritere(0)"/><label for="critAdressCheck"></label>
                            <a class="critereName">Adresse </a>
                            <input type="range" min="0" max="100" step="1" value="50" class="cursorDisabled" oninput="GrabCursor(0)" disabled>
                            <a class="value">0</a>
                            </br>
                            <input type="text" id="adressInput" class="inputText" onkeydown="EnterPressed(this)" disabled value="Adresse..."/>
                        </div>
                        <div id="supermarket" class="critereDiv">
                            <input type="checkbox" id="crit1Check" onclick="EnableCritere(1)"/><label for="crit1Check"></label>
                            <a class="critereName">Supermarché</a>
                            <input type="range" min="0" max="100" step="1" value="50" class="cursorDisabled" oninput="GrabCursor(1)" disabled>
                            <a class="value">0</a>
                        </div>
                        <div id="school" class="critereDiv" hidden>
                            <input type="checkbox" id="crit2Check" onclick="EnableCritere(2)"/><label for="crit2Check"></label>
                            <a class="critereName">École</a>
                            <input type="range" min="0" max="100" step="1" value="50" class="cursorDisabled" oninput="GrabCursor(2)" disabled>
                            <a class="value">0</a>
                        </div>
                        <div id="transport" class="critereDiv" hidden>
                            <input type="checkbox" id="crit3Check" onclick="EnableCritere(3)"/><label for="crit3Check"></label>
                            <a class="critereName">Station de transport</a>
                            <input type="range" min="0" max="100" step="1" value="50" class="cursorDisabled" oninput="GrabCursor(3)" disabled>
                            <a class="value">0</a>
                        </div>
                        <div id="atm" class="critereDiv">
                            <input type="checkbox" id="crit4Check" onclick="EnableCritere(4)"/><label for="crit4Check"></label>
                            <a class="critereName">Borne de retrait</a>
                            <input type="range" min="0" max="100" step="1" value="50" class="cursorDisabled" oninput="GrabCursor(4)" disabled>
                            <a class="value">0</a>
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
        <div id="squareInfosDiv" hidden>
            <div id="resultBord" class="commandBorder">
                <div id="resultInter" class="commandInner">
                    <div id="titleResult">
                        <b></b>
                    </div>
                    <div id="listInfosDiv">
                        <div id="adressResultDiv" class="critereDiv">

                            <a class="critereName"><span id="star1">&#9899;</span>Adresse </a>
                            <a id="adressResultTime"></a>

                        </div>
                        <div id="superMarketResultDiv" class="critereDiv">

                            <a class="critereName"><span id="star2">&#9899;</span>Supermarché</a>
                            <div id="supermarkerResultTime"></div>

                        </div>
                        <div id="schoolResultDiv" class="critereDiv">

                            <a class="critereName"><span id="star3">&#9899;</span>École</a>
                            <a id="schoolResultTime"></a>
                        </div>
                        <div id="transportResultDiv" class="critereDiv">

                            <a class="critereName"><span id="star4">&#9899;</span>Station de transport</a>
                            <a id="transportResultTime"></a>
                        </div>
                        <div id="atmResultDiv" class="critereDiv">

                            <a class="critereName"><span id="star5">&#9899;</span>Borne de retrait</a>
                            <a id="atmResultTime"></a>
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
        
        <div id="parameter">test</div>
        
        <script type="text/javascript">
            var rectanglesId = new Array;
            var rectangles = new Array;
            var animationTab = new Array;
            var intervals = new Array;
            
            function GetMap() {
                var origin = new google.maps.LatLng(45.760, 4.850);
                var myOptions = {
                   zoom: 13,
                   center: origin,
                   mapTypeId: google.maps.MapTypeId.ROADMAP,
                   disableDefaultUI: true
                };
                var container = document.getElementById("mapContainer");
                map = new google.maps.Map(container,myOptions);
                
                map.controls[google.maps.ControlPosition.LEFT_BOTTOM].push(rechercheDiv);
                
                var resultDiv = document.getElementById("squareInfosDiv");
                map.controls[google.maps.ControlPosition.RIGHT_BOTTOM].push(resultDiv);
                
                /*
                setIndicatorColor("star1", 1, 1);
                setIndicatorColor("star2", 1.4, 1);
                setIndicatorColor("star3", 1.8, 1);
                setIndicatorColor("star4", 2.2, 1);
                setIndicatorColor("star5", 2.6, 1);
                */
                GetOffers();
        
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
                var markers = [];
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
                    
                    var prev_infoWindow =false;
                    google.maps.event.addListener(markers[i], 'click', function () {
                        
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
                                    var price = xmlHttpReq.responseXML.getElementsByTagName("price")[i].childNodes[0].nodeValue;
                                    var link = xmlHttpReq.responseXML.getElementsByTagName("link")[i].childNodes[0].nodeValue;
                                    var infoWindow = new google.maps.InfoWindow({
                                        content: '<div class="popup_container">' +
                                                //'<IMG BORDER="0" ALIGN="Top" SRC="myimage.jpg" width="100" height="100" >' +
                                                '<br> <br> Address : ' + address + 
                                                '<br> Type : ' + type + 
                                                '<br> Price : &euro; ' + parseFloat(price).toFixed(2) + 
                                                '<br> <a href="' + link + '">' + 'Lien vers l annonce' +'</a>'+
                                                ' </div>',
                                        maxWidth: 300
                                    });
                                    
                                    if( prev_infoWindow ) {
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
            
            function setIndicatorColor(id, distance, distanceMax) {
                var r = (distance >= distanceMax) ? (distance >= 2*distanceMax) ? 255 : (distance-distanceMax)/distanceMax*255 : 0;
                var g = (distance >= 2*distanceMax) ? (distance >= 3*distanceMax) ? 0 : (1 - (distance-distanceMax)/(2*distanceMax))*255 : 255;
                var elem = document.getElementById(id);
		elem.style.color = rgbToHex(r, g, 0);
            }
            
            function getSquareColor(score) {
              //score = 1 - score;
              var r = (score >= 0.5) ? 131 + (1-score)*94 : 225;
              var g = (score >= 0.5) ? 198 : (2 * score) * 148 + 50;
              //var r = (score <= 0.5) ? (score)/0.5*255 : 255; 
              //var g = (score <= 0.5) ? 255 : (0.5 - score)/0.5*255;
	      return rgbToHex(r, g, 0);
            }
            
            function rgbToHex(r, g, b) {
                return "#" + ((1 << 24) + (r << 16) + (g << 8) + b).toString(16).slice(1);
	    }
           
           
            function EnableCritere(numCritere) {
                var nodes = document.getElementById('listCriteresDiv').children;
                for(var i=0; i<nodes.length; i+=1) {
                    if(i == numCritere) {
                        if(nodes[i].children[0].checked) {
                            nodes[i].children[3].className = "cursorEnabled";
                            nodes[i].children[3].disabled = false;
                            nodes[i].children[4].style="visibility: visible";
                            GrabCursor(numCritere);
                            if(i == 0) {
                                nodes[0].children[6].select();
                                nodes[0].children[6].disabled = false;
                                nodes[0].children[6].focus();
                            }
                        } else {
                            nodes[i].children[3].className = "cursorDisabled";
                            nodes[i].children[3].disabled = true;
                            nodes[i].children[4].style="visibility: hidden";
                            if(i == 0) {
                                nodes[i].children[6].disabled = true;
                            }
                        }
                    }
                }
                //document.getElementById('searchButton').disabled = false;
                
            }
            
            function GrabCursor(numCursor) {
                var nodes = document.getElementById('listCriteresDiv').children;
                for(var j=0; j<nodes.length; j+=1) {
                    if(j == numCursor) {
                        var value = nodes[j].children[3].value;
                        nodes[j].children[4].innerHTML = value;
                    }
                } 
            }
            
            function ClickSearchButton(button) {
                button.disabled = true;
                setTimeout(function(button){button.disabled = false;}, 1000, button);
                var parameters = "?";
                var triggerChecked = false;
                
                var nodes = document.getElementById('listCriteresDiv').children;
                for(var i=0; i<nodes.length; i+=1) {
                    if(!(parameters == "?")) parameters += "&";
                        
                    if(nodes[i].children[0].checked) {
                        triggerChecked = true;
                        parameters += nodes[i].id + "=" + nodes[i].children[3].value * 60;
                        if(nodes[i].id == "adress") {
                            parameters += "adressstring" + "=" + nodes[i].children[6].value;
                        }
                    } else {
                        parameters += nodes[i].id + "=null";
                        if(nodes[i].id == "adress") {
                            parameters += "adressstring=null";
                        }
                    }
                } 
                
                nodes = document.getElementById('listTransportsDiv').children;
                for(var i=0; i<nodes.length; i+=1) {
                    if(nodes[i].children[1].children[0].checked) {
                        parameters += "&" + nodes[i].id + "=y";
                    } else {
                        parameters += "&" + nodes[i].id + "=n";
                    }
                } 
                
                if (!triggerChecked) {
                    document.getElementById('searchAlert').innerHTML = "Aucun critère n'est sélectionné !";
                    DeleteAllSquares();
                } else {
                    document.getElementById('searchAlert').innerHTML = "";
                    GetSquaresRequest(parameters);
                    //alert(parameters);
                }
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
                xmlHttpReq.onreadystatechange = function() {
                    if (xmlHttpReq.readyState == 4) {
                        RefreshSquares(xmlHttpReq);
                    }
                }
                xmlHttpReq.send();
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
                xmlHttpReq.onreadystatechange = function() {
                    if (xmlHttpReq.readyState == 4) {
                        RefreshSquareInfos(xmlHttpReq);
                    }
                }
                xmlHttpReq.send();
            }
            
            function EnableMode() {
                //document.getElementById('searchButton').disabled = false;
            }
            
            function ClickSquare(event) {
                var lat = event.latLng.lat();
                var lng = event.latLng.lng();
                
                var north;
                var south;
                var east;
                var west;
                
                for(var i=0; i<rectangles.length; i++) {
                    north = rectangles[i].getBounds().getNorthEast().lat();
                    south = rectangles[i].getBounds().getSouthWest().lat();
                    east = rectangles[i].getBounds().getNorthEast().lng();
                    west = rectangles[i].getBounds().getSouthWest().lng();
                    if(lat < north && lat > south) {
                        if(lng < east && lng > west) {
                            var parameter = "?id=" + rectanglesId[i];
                            document.getElementById("parameter").innerHTML = parameter;
                            GetOneSquareRequest(parameter);
                            return;
                        }
                    }
                }
            }
            
            
            function RefreshSquares(xmlHttpReq) {
                var squares = xmlHttpReq.responseXML.getElementsByTagName("square");
                
                for (var i=0; i<squares.length; i++) {
                    var result = "";
                    rectanglesId[i] = xmlHttpReq.responseXML.getElementsByTagName("id")[i].childNodes[0].nodeValue;
                    var long = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("long")[i].childNodes[0].nodeValue);
                    var lat = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("lat")[i].childNodes[0].nodeValue);
                    var score = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("score")[i].childNodes[0].nodeValue);
                    
                    largeur = 0.0025;
                    
                    
                    if(rectangles.length != squares.length) {
                        rectangles[i] = new google.maps.Rectangle({
                            strokeOpacity: 0,
                            fillOpacity: 0,
                            strokeWeight: 1,
                            map: map,
                            clickable: true,
                            bounds: {
                                north: lat + largeur /2,
                                south: lat + largeur /2,
                                east: long + largeur,
                                west: long 
                            }
                        });
                        //map.event.addListener(rectangles[i], 'click', ClickSquare);
                        rectangles[i].addListener('click', ClickSquare);
                        animationTab[i] = 0;
                    } 
                        
                    if(i<50) {
                        intervals[i] = setInterval(ChangeSquare, 1, score, i);
                    } else {
                        var triggerTimeOutLaunched = false;
                        for(var coef=1; coef<10; coef++) {
                            if(i < 50 * (coef+1) && i >= 50 * coef) {
                                setTimeout(LaunchRemoteInterval, 140*coef, score, i);
                                triggerTimeOutLaunched = true;
                            }
                        }
                        if(triggerTimeOutLaunched == false) {
                            setTimeout(LaunchRemoteInterval, 140*11, score, i);
                        }
                    }
                }
            }
            
            
            function RefreshSquareInfos(xmlHttpReq) {
                //alert(xmlHttpReq.responseXML.getElementsByTagName("id")[0].childNodes[0].nodeValue);
                //setIndicatorColor("star1", 1, 1);
                
                var walkTime;
                var driveTime;
                var result;
                document.getElementById("squareInfosDiv").hidden = false;
                walkTime = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("supermarket")[0].childNodes[0].childNodes[3].childNodes[0].nodeValue);
                driveTime = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("supermarket")[0].childNodes[1].childNodes[3].childNodes[0].nodeValue);
                result = Math.round((walkTime > driveTime ? driveTime : walkTime) / 60 ) ;
                document.getElementById("supermarkerResultTime").innerHTML = result + " min";
                
                
                /*
                var long = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("long")[i].childNodes[0].nodeValue);
                var lat = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("lat")[i].childNodes[0].nodeValue);
                var score = parseFloat(xmlHttpReq.responseXML.getElementsByTagName("score")[i].childNodes[0].nodeValue);
                */
            }
            
            function LaunchRemoteInterval(score, i) {
                intervals[i] = setInterval(ChangeSquare, 1, score, i);
            }
            
            function ChangeSquare(score,i) {
                var north = rectangles[i].getBounds().getNorthEast().lat();
                var south = rectangles[i].getBounds().getSouthWest().lat();
                var east = rectangles[i].getBounds().getNorthEast().lng();
                var west = rectangles[i].getBounds().getSouthWest().lng();
                
                if(animationTab[i] == 0) {
                    north -= 0.0002;
                    south += 0.0002;
                    if(north > south) {
                        
                        rectangles[i].setOptions({
                            bounds: {
                                north:north,
                                south:south,
                                east:east,
                                west:west
                            }
                        });
                    } else {    
                        
                        var fillColor;
                        var strokeColor;
                        var fillOpacity;
                        var strokeOpacity;
                        
                        fillOpacity = 0.45;
                        strokeOpacity = 0.50;
                        fillColor = getSquareColor(score);
                        strokeColor = getSquareColor(score);
                        rectangles[i].setOptions({
                            strokeColor: strokeColor,
                            strokeOpacity: strokeOpacity,
                            fillColor: fillColor,
                            fillOpacity: fillOpacity
                        });
                        animationTab[i] = 1;
                    }
                } else {
                    north += 0.0002;
                    south -= 0.0002;
                    
                    var diff = (north-south) - (largeur);
                    if(diff >= 0) {
                        north -= diff/2;
                        south += diff/2;
                        
                        animationTab[i] = 0;
                        clearInterval(intervals[i]);
                    }
                    rectangles[i].setOptions({
                        bounds: {
                            north:north,
                            south:south,
                            east:east,
                            west:west
                        }
                    });
                }
            }
            
            function DeleteAllSquares() {
                for (var k=0; k<rectangles.length; k++) {
                    rectangle[k].setMap(null);
                    rectangle[k] = null;
                }
            }
            
        </script>
    </body>
</html>
