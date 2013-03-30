<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Score.aspx.cs" Inherits="DATourMobile.Score" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<div class="mid_cont_pan">
<div class="audi_usrdesc">
<div class="left_auto_ud">
<p class="user_line_spons"><%= holeText %></p>
<p class="user_line_spons mar_bot"><marquee><%= mobileText%></marquee></p>
</div>
<div class="rhtimage_auto"><asp:Image ID="imgLogo" runat="server" AlternateText="logo" Visible="false"/></div>
<div class="clear"></div>
</div>
</div>
<h2 class="head_pan_mobitt"><%= tournamentName %></h2>
<div class="topbot_border">
<!-- left panel -->
<div class="lftmobit_scret_txt">
<p>Vælg hul for score/ændring</p>
<p><%= holeIndexAndHCPText %></p>
</div>

<!-- right panel select panel -->
<div class="rhtselectnumber">
<div class="selectpro">
<asp:DropDownList ID="listHulNumber" runat="server" AutoPostBack="true"
        onselectedindexchanged="listHulNumber_SelectedIndexChanged">
<asp:ListItem  Text="1" Value="1"></asp:ListItem>
<asp:ListItem  Text="2" Value="2"></asp:ListItem>
<asp:ListItem  Text="3" Value="3"></asp:ListItem>
<asp:ListItem  Text="4" Value="4"></asp:ListItem>
<asp:ListItem  Text="5" Value="5"></asp:ListItem>
<asp:ListItem  Text="6" Value="6"></asp:ListItem>
<asp:ListItem  Text="7" Value="7"></asp:ListItem>
<asp:ListItem  Text="8" Value="8"></asp:ListItem>
<asp:ListItem  Text="9" Value="9"></asp:ListItem>
<asp:ListItem  Text="10" Value="10"></asp:ListItem>
<asp:ListItem  Text="11" Value="11"></asp:ListItem>
<asp:ListItem  Text="12" Value="12"></asp:ListItem>
<asp:ListItem  Text="13" Value="13"></asp:ListItem>
<asp:ListItem  Text="14" Value="14"></asp:ListItem>
<asp:ListItem  Text="15" Value="15"></asp:ListItem>
<asp:ListItem  Text="16" Value="16"></asp:ListItem>
<asp:ListItem  Text="17" Value="17"></asp:ListItem>
<asp:ListItem  Text="18" Value="18"></asp:ListItem>
</asp:DropDownList>
</div>
</div>
<div class="clear"></div>
</div>
<div class="checkboxpanelspillar">
   <%= playerHTML %> 
<div class="lightgraycolor datourbt"><button>Opdater</button></div>
</div>
<div class="clear"></div>
<h2 class="head_pan_mobitt"><%= tournamentName %></h2>
<div class="mobit_leader_gd">
<ul>
<li class="lightgraycolor" style="border-bottom:0;">
<p class="roundpanel paddinghdnon"><a href="">Elite</a></p> 
<p class="roundpanel paddinghdnon"><a href="">Mester</a></p>
<p class="roundpanel paddinghdnon"><a href="">A</a></p>
<p class="margin_rht_none roundpanel paddinghdnon"><a href="">B</a></p>
<div class="clear"></div>
</li>
<li class="lightgraycolor">
<p class="txtcenter widthmobitlead">Nr</p> 
<p class="widthbigchange">Navn</p>
<p class="txtcenter">Slagnetto/ <br />stableford</p>
<p class="mobilt_ld_lastcol">Hul</p>
<div class="clear"></div>
</li>

<li class="whitebgcolor">
<p class="txtcenter widthmobitlead">1</p> 
<p class="widthbigchange">Ole Jensen</p>
<p class="txtcenter">+1</p>
<p class="mobilt_ld_lastcol">4</p>
<div class="clear"></div>
</li>

<li class="lightgraycolor">
<p class="txtcenter widthmobitlead">2</p> 
<p class="widthbigchange">Peter Hansen</p>
<p class="txtcenter">+2</p>
<p class="mobilt_ld_lastcol">2</p>
<div class="clear"></div>
</li>

<li class="whitebgcolor">
<p class="txtcenter widthmobitlead">3</p> 
<p class="widthbigchange">Ole Jensen</p>
<p class="txtcenter">+1</p>
<p class="mobilt_ld_lastcol">4</p>
<div class="clear"></div>
</li>

<li class="lightgraycolor">
<p class="txtcenter widthmobitlead">4</p> 
<p class="widthbigchange">Peter Hansen</p>
<p class="txtcenter">+2</p>
<p class="mobilt_ld_lastcol">2</p>
<div class="clear"></div>
</li>

<li class="whitebgcolor">
<p class="txtcenter widthmobitlead">5</p> 
<p class="widthbigchange">Ole Jensen</p>
<p class="txtcenter">+1</p>
<p class="mobilt_ld_lastcol">4</p>
<div class="clear"></div>
</li>

<li class="lightgraycolor">
<p class="txtcenter widthmobitlead">6</p> 
<p class="widthbigchange">Peter Hansen</p>
<p class="txtcenter">+2</p>
<p class="mobilt_ld_lastcol">2</p>
<div class="clear"></div>
</li>

<li class="whitebgcolor">
<p class="txtcenter widthmobitlead">7</p> 
<p class="widthbigchange">Ole Jensen</p>
<p class="txtcenter">+1</p>
<p class="mobilt_ld_lastcol">4</p>
<div class="clear"></div>
</li>

<li class="lightgraycolor">
<p class="txtcenter widthmobitlead">8</p> 
<p class="widthbigchange">Peter Hansen</p>
<p class="txtcenter">+2</p>
<p class="mobilt_ld_lastcol">2</p>
<div class="clear"></div>
</li>

<li class="whitebgcolor">
<p class="txtcenter widthmobitlead">9</p> 
<p class="widthbigchange">Ole Jensen</p>
<p class="txtcenter">+1</p>
<p class="mobilt_ld_lastcol">4</p>
<div class="clear"></div>
</li>

<li class="lightgraycolor">
<p class="txtcenter widthmobitlead">10</p> 
<p class="widthbigchange">Peter Hansen</p>
<p class="txtcenter">+2</p>
<p class="mobilt_ld_lastcol">2</p>
<div class="clear"></div>
</li>
</ul>
</div>
</ContentTemplate>
 </asp:UpdatePanel>
</asp:Content>
