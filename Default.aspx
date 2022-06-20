<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Associate_Software_Engineer___Seungbong_Lee._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Welcome to Cat Subway</h1>
        <p class="lead">Choose your sauce and bread.</p>
        <p class="lead">Sauce</p>
        <p class="lead">
            <asp:RadioButtonList ID="CategoryIdList" runat="server">
                <asp:ListItem Selected="True" Value="1">Ketchup</asp:ListItem>
                <asp:ListItem Value="2">Mayo</asp:ListItem>
                <asp:ListItem Value="4">Mustard</asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <p class="lead">&nbsp;</p>
        <p class="lead">Bread</p>
        <p class="lead">
            <asp:RadioButtonList ID="MimeTypeList" runat="server">
                <asp:ListItem Selected="True" Value="jpg">Italian Herbs and Cheese</asp:ListItem>
                <asp:ListItem Value="gif">Multi-grain Flatbread</asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <p class="lead">&nbsp;</p>
        <p class="lead">
            <asp:Button ID="GenerateImageButton" runat="server" OnClick="GenerateImageButton_Click" Text="Cheese and Toast it" />
        </p>
        <p>
            <asp:Image ID="CatImage" runat="server" Height="327px" Width="691px" />
        </p>
    </div>

</asp:Content>
