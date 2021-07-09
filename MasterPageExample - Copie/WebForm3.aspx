<%@ Page Title="" Language="C#" MasterPageFile="~/SiteExample.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="MasterPageExample.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 240px;
        }
        .auto-style9 {
            width: 240px;
            height: 29px;
        }
        .auto-style10 {
        height: 29px;
        font-size: x-large;
    }
    .auto-style11 {
        width: 240px;
        font-size: x-large;
        color: #000000;
        margin-top: 0px;
    }
    .auto-style12 {
        width: 240px;
        font-size: x-large;
        margin-top: 0px;
    }
    .auto-style13 {
        text-align: center;
    }
    </style>
   </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <table align="center" class="auto-style24">
        <tr>
            <td class="auto-style11">
     <asp:Label ID="Label5" runat="server" Text="">Numero du catégorie</asp:Label>
            </td>
            <td class="auto-style8">
    <asp:TextBox ID="TextId" runat="server" CssClass="auto-style12" Width="362px"></asp:TextBox>
            </td>
        </tr>
              <tr>
            <td class="auto-style11">
     <asp:Label ID="Label1" runat="server" Text="">Nom catégorie</asp:Label>
            </td>
            <td class="auto-style8">
    <asp:TextBox ID="TextName" runat="server" CssClass="auto-style10" Width="362px"></asp:TextBox>
            </td>
        </tr>
                  <tr>
            <td class="auto-style11">
     <asp:Label ID="lbl" runat="server" Text="">Descrption</asp:Label>
            </td>
            <td class="auto-style8">
    <asp:TextBox ID="TextDesc" runat="server" CssClass="auto-style10"  Width="362px"></asp:TextBox>
            </td>
        </tr>
    
       
    
        <tr>
            <td class="auto-style11">
    <asp:Label ID="lblAlert" runat="server" Text=""></asp:Label>
            </td>
            <td class="auto-style28">
      <asp:Button  type="button" class="btn btn-primary" ID="btnUpdate" runat="server" Text="Edite" OnClick = "btnUpdate_Click" CssClass="auto-style4" Height="27px" Width="210px" BackColor="#FFCC00"/>
     <asp:Button ID="btnSubmit" runat="server" Text="Save" OnClick = "btnSubmit_Click" CssClass="auto-style27" Height="27px" Width="210px" BackColor="#009900"/>
      <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick =  "btnDelete_Click" CssClass="auto-style32" Height="27px" Width="210px" BackColor="#CC0000"/>
         <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick =  "btnSearch_Click" CssClass="auto-style9" Height="27px" Width="210px" BackColor="#0033CC"/>
            </td>
        </tr>
    </table>
    <p>

         <div class="auto-style13">

         <asp:GridView ID="grd" runat="server" CssClass="auto-style33" Height="262px" Width="833px">
    </asp:GridView>


    
   
    

         </div>


    
   
    

    <br />
  
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
