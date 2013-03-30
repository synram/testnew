<%@ Page Title="Find Tournament" Language="C#" AutoEventWireup="true" CodeBehind="Tournament.aspx.cs" Inherits="DATourMobile.Tournament" MasterPageFile="~/Site.master" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent"></asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
  <div class="mid_cont_pan">
  <div class="mobit_score-select">
    <h2 class="head_pan_mobitt">Vælg turnerings dato</h2>
    <div class="select_pan_score">
    <select id="listYear" style="width:81px;" onchange="listYearChange()">
        <option value="0">Ar</option>
        <option value="2013">2013</option>
        <option value="2014">2014</option>
        <option value="2015">2015</option>
        <option value="2016">2016</option>
        <option value="2017">2017</option>
        <option value="2018">2018</option>
        <option value="2019">2019</option>
        <option value="2020">2020</option>
    </select>
    <select id="listMonth" style="width:94px;" onchange="listMonthChange()">
        <option value="0">Måned</option>
        <option value="01">01</option>
        <option value="02">02</option>
        <option value="03">03</option>
        <option value="04">04</option>
        <option value="05">05</option>
        <option value="06">06</option>
        <option value="07">07</option>
        <option value="08">08</option>
        <option value="09">09</option>
        <option value="10">10</option>
        <option value="11">11</option>
        <option value="12">12</option>
    </select>
    <select id="listDay" class="borderrhtnone" style="width:75px;" onchange="listDayChange()">
        <option value="0">Dag</option>
        <option value="01">01</option>
        <option value="02">02</option>
        <option value="03">03</option>
        <option value="04">04</option>
        <option value="05">05</option>
        <option value="06">06</option>
        <option value="07">07</option>
        <option value="08">08</option>
        <option value="09">09</option>
        <option value="10">10</option>
        <option value="11">11</option>
        <option value="12">12</option>
        <option value="13">13</option>
        <option value="14">14</option>
        <option value="15">15</option>
        <option value="16">16</option>
        <option value="17">17</option>
        <option value="18">18</option>
        <option value="19">19</option>
        <option value="20">20</option>
        <option value="21">21</option>
        <option value="22">22</option>
        <option value="23">23</option>
        <option value="24">24</option>
        <option value="25">25</option>
        <option value="26">26</option>
        <option value="27">27</option>
        <option value="28">28</option>
        <option value="29">29</option>
        <option value="30">30</option>
        <option value="31">31</option>
    </select>
    </div>
    </div>
   <div class="mobit_score-select"> 
   <h2 class="head_pan_mobitt">Vælg land</h2>
   <div class="select_ps_land">
    <select id="listCountry" class="borderrhtnone" style="width:250px;" onchange="listCountryChange()">
        <option value="0">vælg</option>
        <option value="Danmark">Danmark</option>
    </select>
    </div>
    </div>
    <div class="mobit_score-select">
    <h2 class="head_pan_mobitt">Vælg turnering</h2>
    <div class="select_ps_land">
    <select id="listTournaments" class="borderrhtnone" style="width:250px;">
        <option value="0">vælg</option>
    </select>
    </div>
    <center>
        <div id="errorTournament" class="error"></div>
    </center>
    </div>  
   <div class="datourbt"><button onclick="GoToValidationPinPage(); return false;">Enter</button> </div>
</div>
</asp:Content>
