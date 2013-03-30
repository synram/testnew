<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DATourMobile._Default" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent"></asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="mid_but_two">        
        <button onclick="window.location.href='Tournament.aspx'; return false;">Scorekort</button>
        <button onclick="#">leaderboards</button> 
    </div>
</asp:Content>
