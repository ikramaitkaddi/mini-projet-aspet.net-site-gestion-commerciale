<%@ Page Title="" Language="C#" MasterPageFile="~/SiteExample.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MasterPageExample.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            margin-left: 51px;
            margin-bottom: 3px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style43">
        &nbsp;</p>
<p class="auto-style41">
    

    <table align="center" class="auto-style24">
        <tr>
            <td class="auto-style52">
     <asp:Label ID="Label5" runat="server" Text="">Numero de l'article</asp:Label>
            </td>
            <td class="auto-style53">
    <asp:TextBox ID="TextId" runat="server" CssClass="auto-style36" OnTextChanged="TextBox1_TextChanged" Width="328px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style44">
     <asp:Label ID="Label2" runat="server" Text="">Nom </asp:Label>
            </td>
            <td class="auto-style45">
    <asp:TextBox ID="TextName" runat="server" CssClass="auto-style23" OnTextChanged="TextBox1_TextChanged" Width="330px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style50">
     <asp:Label ID="Label3" runat="server" Text="">Prix</asp:Label>
            </td>
            <td class="auto-style51">
    <asp:TextBox ID="TextPrix" runat="server" CssClass="auto-style10" OnTextChanged="TextBox1_TextChanged" Width="325px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style30">
     <asp:Label ID="Label4" runat="server" Text="">Description</asp:Label>
            </td>
            <td class="auto-style39">
    <asp:TextBox ID="TextDesc" runat="server" CssClass="auto-style36" OnTextChanged="TextBox1_TextChanged" Width="328px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style42">
                catégorie</td>
            <td class="auto-style46">
                <asp:DropDownList ID="id_categorie" runat="server" AutoPostBack="True" CssClass="auto-style35" Width="333px">
                </asp:DropDownList>
            </td>
        </tr>
           <tr>
            <td class="auto-style49">
    <asp:Label ID="lblAlert" runat="server" Text=""></asp:Label>
            </td>
            <td class="auto-style48">
           <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick =  "btnSearch_Click" CssClass="auto-style9" Height="28px" Width="126px" BackColor="#0033CC" style="margin-top: 0px"/>
      <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick =  "btnDelete_Click" CssClass="auto-style32" Height="27px" Width="145px" style="margin-top: 0px; margin-right: 0px;" BackColor="#CC0000"/>
      <asp:Button ID="btnUpdate" runat="server" Text="Edite" OnClick = "btnUpdate_Click" CssClass="auto-style27" Height="24px" Width="132px" BackColor="#FFCC00"/>
     <asp:Button ID="btnSubmit" runat="server" Text="Save" OnClick =  "btnSubmit_Click" CssClass="auto-style47" Height="27px" Width="128px" BackColor="#009900"/>
            </td>
        </tr>
     </table>

    <br />
    <div class="auto-style43">
    <asp:GridView ID="grd" runat="server" CssClass="auto-style33" Height="262px" Width="596px">
    </asp:GridView>
       
     
    </div>
       
     
</p>
<p>
   
    &nbsp;</p>
<p>
    &nbsp;</p>
     <br />
        <br />
   <!-- <form id ="form1">
   <div align ="center">
        <table border ="1" style="box-shadow:1px 1px 6px; font-size: 18pt; text-align:center" class="auto-style14">
            <asp:HiddenField ID="hdnID" runat="server" />
            <tr>
                   <td class="auto-style19">ID<td class="auto-style16"> 
           <td class="auto-style16"> <asp:TextBox ID= "txtId" runat="server" CssClass="auto-style17" OnTextChanged="TextBox1_TextChanged" Width="362px"></asp:TextBox></td>
             </tr>
        <tr>
              <td class="auto-style20">Name<td> 
  <td> <asp:TextBox ID="txtName" runat="server" CssClass="auto-style17" OnTextChanged="TextBox1_TextChanged" Width="362px"></asp:TextBox></td>
      </tr>
          <tr>
               <td class="auto-style20">Prix<td> 
    <td class="auto-style15"><asp:TextBox ID="txtPrix" runat="server" CssClass="auto-style18" OnTextChanged="TextBox1_TextChanged" Width="362px"></asp:TextBox></td>
      </tr>
      <tr>
           <td class="auto-style20">Desc<td> 
    <td><asp:TextBox ID="txtDesc" runat="server" CssClass="auto-style18" OnTextChanged="TextBox1_TextChanged" Width="362px"></asp:TextBox></td>
          </tr>
     
             <tr>
     <td class="auto-style20"><asp:Button ID="btnuepdate" runat="server" Text="modifier" OnClick =  "btnUpdate_Click" CssClass="auto-style9" Height="27px" Width="210px"/></td>
     </tr>

      </asp:HiddenField>
       </table>
      
</div>
         </form>-->
<p>
    &nbsp;</p>


<p>
</p>
<p>
</p>
<p>
</p>
    <script>
    </script>
    <style>
            /* <div align ="center">
    <table border ="1" style="border:1px solid !important; width:20%; font-size: 18pt; text-align:center">
        <asp:Repeater runat="server" ID="rptData">
            <ItemTemplate>
        <tr>
            <td><asp:Label ID="lblID" runat="server" Text='<%# Eval("Id") %>'></asp:Label></td>
            <td><asp:Label ID="lblName" runat="server" Text='<%# Eval("nom_article") %>'></asp:Label></td>
                   <td><asp:Label ID="lblPrix" runat="server" Text='<%# Eval("prix_unitaire") %>'></asp:Label></td>
                   <td><asp:Label ID="lblDesc" runat="server" Text='<%# Eval("description") %>'></asp:Label></td>
            <td><asp:Button ID="btnEdite" runat="server" Text="Edite"   CssClass="auto-style9" Height="27px" Width="210px" ></asp:Button></td>
           
        </tr>
         </ItemTemplate>
        </asp:Repeater>
    </table>
         </div>  
                */
        .auto-style23 {
            margin-left: 48px;
            margin-bottom: 3px;
        }
        .auto-style24 {
            width: 96%;
        height: 519px;
    }
        .auto-style27 {
            margin-right: 0px;
            margin-top: 0px;
            margin-bottom: 0px;
        }
        .auto-style30 {
            height: 26px;
            width: 533px;
            text-align: center;
        }
        .auto-style33 {
            margin-left: 135px;
        margin-right: 0px;
        font-size: x-large;
    }
        .auto-style35 {
        margin-left: 51px;
    }
    .auto-style36 {
        margin-left: 50px;
        margin-bottom: 3px;
    }
    .auto-style39 {
        height: 26px;
        width: 640px;
        text-align: left;
    }
    .auto-style41 {
        width: 766px;
    }
    .auto-style42 {
        height: 45px;
        width: 533px;
        text-align: center;
    }
    .auto-style43 {
        text-align: center;
    }
    .auto-style44 {
        width: 533px;
        text-align: center;
        height: 32px;
    }
    .auto-style45 {
        width: 640px;
        text-align: left;
        height: 32px;
    }
    .auto-style46 {
        height: 45px;
        width: 640px;
        text-align: left;
    }
        .auto-style47 {
            margin-left: 2px;
            margin-right: 0px;
        }
        .auto-style48 {
            width: 640px;
        }
        .auto-style49 {
            margin-top: 0px;
            width: 533px;
        }
        .auto-style50 {
            width: 533px;
            text-align: center;
            height: 50px;
        }
        .auto-style51 {
            width: 640px;
            text-align: left;
            height: 50px;
        }
    .auto-style52 {
        height: 39px;
        width: 533px;
        text-align: center;
    }
    .auto-style53 {
        height: 39px;
        width: 640px;
        text-align: left;
    }
    </style>
</asp:Content>
