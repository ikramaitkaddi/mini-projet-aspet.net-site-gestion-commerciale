<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="seconnecter.aspx.cs" Inherits="MasterPageExample.seconnecter" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
     <link rel="icon" type="logo/jpg" sizes="16x16" href="logo.jpg">
    <title>my Shopy.ma</title>
    <style type="text/css">
           body{
        background-color:#fff7dc;
    }
           header{
   
    background-size:cover;
    background-position:center;
    height: 50vh;
    background-color: white;

}          nav {
     position: fixed;
     width:100%;
     line-height:60px;
}
nav ul {
    float: right;
    margin: 0;
    padding-right:42px;
}
nav ul li{
    display: inline-block;
    padding:16px 32px;
}
nav ul li a{
    text-decoration:none;
    color:rgb(255, 102, 0);
    font-size: 16px;
    font-weight: bold;
}
           .logo{
    height: 48px;
    float: left;
    margin :16px 48px;
}
  header h1 {
    font-size:48px;
    text-transform: uppercase;
    letter-spacing: 2px;
    font-weight: bold;
    text-align: center;
    padding-top:150px;
    color:	#4682B4;
}
 header h2{
    font-size:30px;
    font-weight: bold;
    letter-spacing: 2px;
    margin-inline-start :600px;
    color:orange;
}

        .auto-style1 {
            margin-left: 2px;
            font-size: large;
        }

        .auto-style2 {
            margin-left: 236px;
            margin-top: 47px;
        }

        }

    </style>
</head>

<body>
    <div class=" container-fluid"  runat="server">
            <form  runat="server">
                <div class="text-center">
        <header>
               <nav>
                   <img class="logo" src="logo2.jpg">
                   <div class="menu">
                       <ul>
                        <li><a href="WebForm4.aspx">Administration</a></li>
                        <li><a href="produit.aspx">Prouduits</a></li>
                         <li><a href="seconnecter.aspx">Se connecter</a></li>
                         <li><a href="auth.aspx">s'authentifier</a></li>
                       
                       </ul>
                   
               </nav>
                <h1>Bienvenue dans Shopp.my </h1>
                     <h2>Votre confort est notre priorité</h2>
           </header>
        <br />
        
           
        <div>
    
        <div class="auto-style2">
            <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style1" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="474px" OnAuthenticate="Login1_Authenticate" Width="996px" DestinationPageUrl="~/produitClient.aspx">
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                <TextBoxStyle Font-Size="0.8em" />
                <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
            </asp:Login>
        </div>
        <div>
        </div>
    </form>
           </div>
     </div>
</body>
</html>
