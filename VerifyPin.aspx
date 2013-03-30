<%@ Page Title="Validate Pins" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerifyPin.aspx.cs" Inherits="DATourMobile.VerifyPin" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent"></asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<div class="mid_cont_pan">
<div class="mobit_score-select">
<h2 class="head_pan_mobitt">Indtast turnerings pinkoder (spillere)</h2>
<span class="subhd_mobitt">Tryk på en turnering for at se leaderboard</span>
<div class="mobit_score_pinpanel">
<input type="hidden" id="hfTournamentID" value="<%= tournamentID %>" /><br />
<p><input type="text" id="txtPin1" value="Pin 1" class="allbordpin" onfocus="showhidetext1('Pin 1')" onfocusout="showhidetext1('Pin 1')" onblur="showhidetext1('Pin 1')" /></p>
<p><input type="text" id="txtPin2" value="Pin 2" class="allbordpin" onfocus="showhidetext2('Pin 2')" onfocusout="showhidetext2('Pin 2')" onblur="showhidetext2('Pin 2')" /></p>
<p><input type="text" id="txtPin3" value="Pin 3" class="allbordpin" onfocus="showhidetext3('Pin 3')" onfocusout="showhidetext3('Pin 3')" onblur="showhidetext3('Pin 3')" /></p>
<p><input type="text" id="txtPin4" value="Pin 4" class="allbordpin" onfocus="showhidetext4('Pin 4')" onfocusout="showhidetext4('Pin 4')" onblur="showhidetext4('Pin 4')" /></p>
<center>
    <div id="errorValidatePin" class="error"></div>
</center>
</div>
</div>
<div class="datourbt"><button onclick="ValidatePlayerPins(); return false;">Enter</button> </div>
</div>
</asp:Content>
