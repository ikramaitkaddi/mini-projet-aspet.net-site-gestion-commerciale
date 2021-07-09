<%@ Page Title="" Language="C#" MasterPageFile="~/SiteExample.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="MasterPageExample.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            height: 48px;
        }
    .auto-style10 {
        height: 48px;
        font-size: xx-large;
        color: #000000;
        text-decoration: underline;
        font-weight: bold;
        margin-top: 0px;
    }
    .auto-style11 {
        font-weight: bold;
        color: #000000;
        font-size: x-large;
        width: 284px;
    }
    .auto-style12 {
        height: 48px;
        font-size: x-large;
        color: #000000;
        font-weight: bold;
        width: 284px;
        margin-top: 0px;
    }
    .auto-style13 {
        text-align: center;
    }
    .auto-style14 {
        font-size: xx-large;
        color: #000000;
        text-decoration: underline;
        font-weight: bold;
        margin-left: 70px;
        margin-top: 0px;
    }
    .auto-style15 {
        font-size: xx-large;
        color: #FFFF00;
        text-decoration: underline;
        margin-left: 61px;
        margin-top: 0px;
    }
    .auto-style16 {
        font-size: xx-large;
        color: #000000;
        text-decoration: underline;
        font-weight: bold;
        margin-left: 65px;
        margin-top: 0px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <p>
       </p>
     <table align="center">
        <tr>
            <td class="auto-style12">
     <asp:Label ID="Label5" runat="server" Text="">Numero de la commande à supprimer</asp:Label>
            </td>
            <td class="auto-style8">
    <asp:TextBox ID= "TextId" runat="server" CssClass="auto-style15"  Width="335px" Height="21px"></asp:TextBox>
            </td>
        </tr>
         
    
        <tr>
            <td class="auto-style12">
    <asp:Label ID="lblAlert" runat="server" Text=""></asp:Label>
            </td>
            <td class="auto-style28">
      <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick =  "btnDelete_Click" CssClass="auto-style32" Height="27px" Width="210px" BackColor="Red"/>
            </td>
        </tr>
    </table>
    <p>

         <div class="auto-style13">

         <asp:GridView ID="grd" runat="server" CssClass="auto-style33" Height="262px" Width="833px">
    </asp:GridView>
         </div>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
