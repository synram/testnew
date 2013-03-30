$(document).ready(function () {
   
});

var http;
function GetXmlHttpObject() {
var http = null;
try { 
http = new XMLHttpRequest(); }
catch (e) {
    try { 
        http = new ActiveXObject("Msxml2.XMLHTTP"); }
    catch (e1) {
        try { 
            http = new ActiveXObject("Microsoft.XMLHTTP"); }
        catch (e2) { 
            http = null; }
            }
    }
    return http;
}

function FillTournamentList() {
    $("#errorTournament").html('');
    var year = $("#listYear").val();
    var month =$("#listMonth").val();
    var day = $("#listDay").val();
    if (parseInt(year) > 0 && parseInt(month) > 0 && parseInt(day) > 0) {
        var date = day + "/" + month + "/" + year;
        var country = $("#listCountry").val();
        http = GetXmlHttpObject();
        if (http == null) { alert("Your browser does not support AJAX!"); return; }
        var url = "AsyncAction.aspx?GetTournaments=true&date=" + date + "&country=" + country;
        url = url + "&random=" + Math.random();
        http.open("GET", url, true);
        http.onreadystatechange = function () {
            if (http.readyState == 4) {
                var data = escape(http.responseText);
                $("#divResult").html('');
                $("#divResult").html(http.responseText);
                if ($("#divAsyncResult") != null) {
                    var result = $("#divAsyncResult").html();
                    var OptionText = '';
                    if (result != '') {
                        var items = result.split(':');
                        if (items.length > 1) {
                            for (var i = 0; i < items.length - 1; i++) {
                                if (items[i] != '') {
                                    var options = items[i].split(',');
                                    OptionText += '<option value="' + options[0] + '">' + options[1] + '</option>';
                                }
                            }
                            $('#listTournaments').html(OptionText);
                        }
                        else {
                            $('#listTournaments').html('<option value="0">vælg</option>');
                        }
                    }
                }
            }
        }       
    }
    else {
        $("#errorTournament").html('Please select a valid date.');
    }
    http.send(null);
    url = "";
}

function GoToValidationPinPage() {
    var year = $("#listYear").val();
    var month =$("#listMonth").val();
    var day = $("#listDay").val();
    if (parseInt(year) > 0 && parseInt(month) > 0 && parseInt(day) > 0) {
        $("#errorTournament").html('');
        var ID = parseInt($('#listTournaments').val());
        if (ID > 0) {
            window.location.href = 'VerifyPin.aspx?tid=' + ID;
        }
        else {
            $("#errorTournament").html('Please Select Tournament.');
        }
    }
    else {
        $("#errorTournament").html('Please select a valid date.');
    }
}

function ValidatePlayerPins() {
    var pin1 = $("#txtPin1").val();
    var pin2 = $("#txtPin2").val();
    var pin3 = $("#txtPin3").val();
    var pin4 = $("#txtPin4").val();
    var tid = $("#hfTournamentID").val();
    $("#errorValidatePin").html('');
    var invalid = false;
    if (pin1 == "Pin 1") {
        pin1 = "";       
    }
    if (pin2 == "Pin 2") {
        pin2 = "";
    }
    if (pin3 == "Pin 3") {
        pin3 = "";
    }
    if (pin4 == "Pin 4") {
        pin4 = "";
    }

    if (pin1 == "" && pin2 == "" && pin3 == "" && pin4 == "") {
        invalid = true;
        $("#errorValidatePin").html('Please enter atleast one player pin.');
        return false;
    }
    var pins = pin1 + "," +  pin2 + "," +  pin3 + "," +  pin4;  
    http = GetXmlHttpObject();
    if (http == null) { alert("Your browser does not support AJAX!"); return; }
    var url = "AsyncAction.aspx?ValidatePins=true&tid=" + tid + "&pin1=" + pin1 + "&pin2=" + pin2 + "&pin3=" + pin3 + "&pin4=" + pin4;
    url = url + "&random=" + Math.random();   
    http.open("GET", url, true);
    http.onreadystatechange = function () {
        if (http.readyState == 4) {
            var data = escape(http.responseText);
            $("#divResult").html('');
            $("#divResult").html(http.responseText);
            if ($("#divAsyncResult") != null) {
                var result = $("#divAsyncResult").html();
                if (parseInt(result) > 0) {
                    window.location.href = 'Score.aspx?tid=' + tid + "&pins=" + pins;
                }
                else if (parseInt(result) == 0) {
                    $("#errorValidatePin").html('Invalid PINs entered.');
                }
            }
        }
    }
    http.send(null);
    url = "";
}

function showhidetext1(val) {
    if ($("#txtPin1").val() == val) {
        $("#txtPin1").val('');
    }
    else if ($("#txtPin1").val() == "") {
        $("#txtPin1").val(val);
    }
}
function showhidetext2(val) {
    if ($("#txtPin2").val() == val) {
        $("#txtPin2").val('');
    }
    else if ($("#txtPin2").val() == "") {
        $("#txtPin2").val(val);
    }
}
function showhidetext3(val) {
    if ($("#txtPin3").val() == val) {
        $("#txtPin3").val('');
    }
    else if ($("#txtPin3").val() == "") {
        $("#txtPin3").val(val);
    }
}
function showhidetext4(val) {
    if ($("#txtPin4").val() == val) {
        $("#txtPin4").val('');
    }
    else if ($("#txtPin4").val() == "") {
        $("#txtPin4").val(val);
    }
}

function listCountryChange() {
    if ($("#listCountry").val() != "0") {
        FillTournamentList();
    }
}
function listYearChange() {
    if ($("#listYear").val() != "0" && $("#listMonth").val() != "0" && $("#listDay").val() != "0" && $("#listCountry").val() != "0") {
        FillTournamentList();
    }
}
function listMonthChange() {
    if ($("#listYear").val() != "0" && $("#listMonth").val() != "0" && $("#listDay").val() != "0" && $("#listCountry").val() != "0") {
        FillTournamentList();
    }
}
function listDayChange() {
    if ($("#listYear").val() != "0" && $("#listMonth").val() != "0" && $("#listDay").val() != "0" && $("#listCountry").val() != "0") {
        FillTournamentList();
    }
}
