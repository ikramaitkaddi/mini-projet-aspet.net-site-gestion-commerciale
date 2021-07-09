<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="auth.aspx.cs" Inherits="MasterPageExample.auth" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

        <link rel="stylesheet" href="style.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <link rel="icon" type="logo/jpg" sizes="16x16" href="logo.jpg">
        <script src="https://code.jquery.com/jquery-3.6.0.js" 
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
        <script src="index.js"></script>
        <title>Shopp.my</title>
  
</head>
<body>
   
 <body>
        <div class="container-fluid">
           <header>
               <nav>
                   <img class="logo" src="logo2.jpg">
                   <div class="menu">
                       <ul>
                       <li><a href="WebForm4.aspx">Administration</a></li>
                        <li><a href="produit.aspx">Prouduits</a></li>
                         <li><a href="seconnecter">Se connecter</a></li>
                         <li><a href="auth.aspx">s'authentifier</a></li>
                       </ul>
                    </div>
               </nav>
                <h1>Bienvenue dans Shopp.my </h1>
                     <h2>Votre confort est notre priorité</h2>
           </header>
    <section>
      <div class="formulaire">
         
     <form  runat="server">
            <h1>Formulaire d'inscription</h1></br>
       
            <p id="cvlt">Civilité</p>
            <span class="error-message"></span>
             
            <div class="form-check" >
              <input class="form-check-input" type="radio" name="flexRadioDefault" id="cvlt1">
              <label class="form-check-label" for="flexRadioDefault1">
                Homme
              </label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="flexRadioDefault" id="cvlt2"  >
              <label class="form-check-label" for="flexRadioDefault2">
                femme
              </label>
            </div>
            <div class="row">
                <div class="col">
                  <p><br>Nom</p>
                  <input type="text"  id="nom" class="form-control" placeholder="Nom" aria-label="Nom" >
                  <span class="error-message"></span>
                </div>
                <div class="col">
                  <p><br>Prénom</p>
                  <input type="text" id="prenom" class="form-control" placeholder="Prénom" aria-label="Prénom" >
                  <span class="error-message"></span>
                </div>
              </div>
              <div>
                <p><br>Adresse</p>
              
                  <asp:TextBox  type="text" ID="adr"  class="form-control"  size="30" placeholder="nom@exemple.com"  runat="server" OnTextChanged="TextBox1_TextChanged"  ></asp:TextBox>
                <span class="error-message"></span>
              </div>
              <div>
              <label for="exampleFormControlInput1" class="form-label"><br>Email</label>
            
                  <asp:TextBox  type="email" ID="mail"  class="form-control"  size="30" placeholder="nom@exemple.com"  runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <span class="error-message"></span>
              </div>
              <div >
                <p><br>Login</p>
               
                   <asp:TextBox   ID="login"   runat="server" class="form-control" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <span class="error-message"></span>
              </div>
              <br>
              <div>
                <label for="inputPassword" class="form-label">Mot de passe</label>
                
           <asp:TextBox ID="mdp1"  type="password"  class="form-control"  minlegth="10" runat="server" OnTextChanged="TextBox1_TextChanged" ></asp:TextBox>
                  <span class="error-message"></span>
                </div>
                <br>
                <div>
                    <label for="inputPassword" class="form-label">Confirmer le mot de passe</label>
                      <input type="password" class="form-control" id="mdp2" minlegth="30">
                      <span class="error-message"></span>
                    </div>

                    <div class="row">
                        <div class="col">
                            <p><br>Pays de l'indicatif</p>
                            <select class="form-select" aria-label="Default select example"  >
                                <option selected>Maroc</option>
                                <optgroup label="Afrique">
                                    <option value="afriqueDuSud">Afrique Du Sud</option>
                                    <option value="algerie">Algérie</option>
                                    <option value="angola">Angola</option>
                                    <option value="benin">Bénin</option>
                                    <option value="botswana">Botswana</option>
                                    <option value="burkina">Burkina</option>
                                    <option value="burundi">Burundi</option>
                                    <option value="cameroun">Cameroun</option>
                                    <option value="capVert">Cap-Vert</option>
                                    <option value="republiqueCentre-Africaine">République Centre-Africaine</option>
                                    <option value="comores">Comores</option>
                                    <option value="republiqueDemocratiqueDuCongo">République Démocratique Du Congo</option>
                                    <option value="congo">Congo</option>
                                    <option value="coteIvoire">Côte d'Ivoire</option>
                                    <option value="djibouti">Djibouti</option>
                                    <option value="egypte">Égypte</option>
                                    <option value="ethiopie">Éthiopie</option>
                                    <option value="erythrée">Érythrée</option>
                                    <option value="gabon">Gabon</option>
                                    <option value="gambie">Gambie</option>
                                    <option value="ghana">Ghana</option>
                                    <option value="guinee">Guinée</option>
                                    <option value="guinee-Bisseau">Guinée-Bisseau</option>
                                    <option value="guineeEquatoriale">Guinée Équatoriale</option>
                                    <option value="kenya">Kenya</option>
                                    <option value="lesotho">Lesotho</option>
                                    <option value="liberia">Liberia</option>
                                    <option value="libye">Libye</option>
                                    <option value="madagascar">Madagascar</option>
                                    <option value="malawi">Malawi</option>
                                    <option value="mali">Mali</option>
                                    <option value="maroc">Maroc</option>
                                    <option value="maurice">Maurice</option>
                                    <option value="mauritanie">Mauritanie</option>
                                    <option value="mozambique">Mozambique</option>
                                    <option value="namibie">Namibie</option>
                                    <option value="niger">Niger</option>
                                    <option value="nigeria">Nigeria</option>
                                    <option value="ouganda">Ouganda</option>
                                    <option value="rwanda">Rwanda</option>
                                    <option value="saoTomeEtPrincipe">Sao Tomé-et-Principe</option>
                                    <option value="senegal">Séngal</option>
                                    <option value="seychelles">Seychelles</option>
                                    <option value="sierra">Sierra</option>
                                    <option value="somalie">Somalie</option>
                                    <option value="soudan">Soudan</option>
                                    <option value="swaziland">Swaziland</option>
                                    <option value="tanzanie">Tanzanie</option>
                                    <option value="tchad">Tchad</option>
                                    <option value="togo">Togo</option>
                                    <option value="tunisie">Tunisie</option>
                                    <option value="zambie">Zambie</option>
                                    <option value="zimbabwe">Zimbabwe</option>
                                    </optgroup>
                                    <optgroup label="Amérique">
                                    <option value="antiguaEtBarbuda">Antigua-et-Barbuda</option>
                                    <option value="argentine">Argentine</option>
                                    <option value="bahamas">Bahamas</option>
                                    <option value="barbade">Barbade</option>
                                    <option value="belize">Belize</option>
                                    <option value="bolivie">Bolivie</option>
                                    <option value="bresil">Brésil</option>
                                    <option value="canada">Canada</option>
                                    <option value="chili">Chili</option>
                                    <option value="colombie">Colombie</option>
                                    <option value="costaRica">Costa Rica</option>
                                    <option value="cuba">Cuba</option>
                                    <option value="republiqueDominicaine">République Dominicaine</option>
                                    <option value="dominique">Dominique</option>
                                    <option value="equateur">Équateur</option>
                                    <option value="etatsUnis">États Unis</option>
                                    <option value="grenade">Grenade</option>
                                    <option value="guatemala">Guatemala</option>
                                    <option value="guyana">Guyana</option>
                                    <option value="haiti">Haïti</option>
                                    <option value="honduras">Honduras</option>
                                    <option value="jamaique">Jamaïque</option>
                                    <option value="mexique">Mexique</option>
                                    <option value="nicaragua">Nicaragua</option>
                                    <option value="panama">Panama</option>
                                    <option value="paraguay">Paraguay</option>
                                    <option value="perou">Pérou</option>
                                    <option value="saintCristopheEtNieves">Saint-Cristophe-et-Niévès</option>
                                    <option value="sainteLucie">Sainte-Lucie</option>
                                    <option value="saintVincentEtLesGrenadines">Saint-Vincent-et-les-Grenadines</option>
                                    <option value="salvador">Salvador</option>
                                    <option value="suriname">Suriname</option>
                                    <option value="triniteEtTobago">Trinité-et-Tobago</option>
                                    <option value="uruguay">Uruguay</option>
                                    <option value="venezuela">Venezuela</option>
                                    </optgroup>
                                    <optgroup label="Asie">
                                    <option value="afghanistan">Afghanistan</option>
                                    <option value="arabieSaoudite">Arabie Saoudite</option>
                                    <option value="armenie">Arménie</option>
                                    <option value="azerbaidjan">Azerbaïdjan</option>
                                    <option value="bahrein">Bahreïn</option>
                                    <option value="bangladesh">Bangladesh</option>
                                    <option value="bhoutan">Bhoutan</option>
                                    <option value="birmanie">Birmanie</option>
                                    <option value="brunei">Brunéi</option>
                                    <option value="cambodge">Cambodge</option>
                                    <option value="chine">Chine</option>
                                    <option value="coreeDuSud">Corée Du Sud</option>
                                    <option value="coreeDuNord">Corée Du Nord</option>
                                    <option value="emiratsArabeUnis">Émirats Arabe Unis</option>
                                    <option value="georgie">Géorgie</option>
                                    <option value="inde">Inde</option>
                                    <option value="indonesie">Indonésie</option>
                                    <option value="iraq">Iraq</option>
                                    <option value="iran">Iran</option>
                                    <option value="israel">Israël</option>
                                    <option value="japon">Japon</option>
                                    <option value="jordanie">Jordanie</option>
                                    <option value="kazakhstan">Kazakhstan</option>
                                    <option value="kirghistan">Kirghistan</option>
                                    <option value="koweit">Koweït</option>
                                    <option value="laos">Laos</option>
                                    <option value="liban">Liban</option>
                                    <option value="malaisie">Malaisie</option>
                                    <option value="maldives">Maldives</option>
                                    <option value="mongolie">Mongolie</option>
                                    <option value="nepal">Népal</option>
                                    <option value="oman">Oman</option>
                                    <option value="ouzbekistan">Ouzbékistan</option>
                                    <option value="pakistan">Pakistan</option>
                                    <option value="philippines">Philippines</option>
                                    <option value="qatar">Qatar</option>
                                    <option value="singapour">Singapour</option>
                                    <option value="sriLanka">Sri Lanka</option>
                                    <option value="syrie">Syrie</option>
                                    <option value="tadjikistan">Tadjikistan</option>
                                    <option value="taiwan">Taïwan</option>
                                    <option value="thailande">Thaïlande</option>
                                    <option value="timorOriental">Timor oriental</option>
                                    <option value="turkmenistan">Turkménistan</option>
                                    <option value="turquie">Turquie</option>
                                    <option value="vietNam">Viêt Nam</option>
                                    <option value="yemen">Yemen</option>
                                    </optgroup>
                                    <optgroup label="Europe">
                                    <option value="allemagne">Allemagne</option>
                                    <option value="albanie">Albanie</option>
                                    <option value="andorre">Andorre</option>
                                    <option value="autriche">Autriche</option>
                                    <option value="bielorussie">Biélorussie</option>
                                    <option value="belgique">Belgique</option>
                                    <option value="bosnieHerzegovine">Bosnie-Herzégovine</option>
                                    <option value="bulgarie">Bulgarie</option>
                                    <option value="croatie">Croatie</option>
                                    <option value="danemark">Danemark</option>
                                    <option value="espagne">Espagne</option>
                                    <option value="estonie">Estonie</option>
                                    <option value="finlande">Finlande</option>
                                    <option value="france">France</option>
                                    <option value="grece">Grèce</option>
                                    <option value="hongrie">Hongrie</option>
                                    <option value="irlande">Irlande</option>
                                    <option value="islande">Islande</option>
                                    <option value="italie">Italie</option>
                                    <option value="lettonie">Lettonie</option>
                                    <option value="liechtenstein">Liechtenstein</option>
                                    <option value="lituanie">Lituanie</option>
                                    <option value="luxembourg">Luxembourg</option>
                                    <option value="exRepubliqueYougoslaveDeMacedoine">Ex-République Yougoslave de Macédoine</option>
                                    <option value="malte">Malte</option>
                                    <option value="moldavie">Moldavie</option>
                                    <option value="monaco">Monaco</option>
                                    <option value="norvege">Norvège</option>
                                    <option value="paysBas">Pays-Bas</option>
                                    <option value="pologne">Pologne</option>
                                    <option value="portugal">Portugal</option>
                                    <option value="roumanie">Roumanie</option>
                                    <option value="royaumeUni">Royaume-Uni</option>
                                    <option value="russie">Russie</option>
                                    <option value="saintMarin">Saint-Marin</option>
                                    <option value="serbieEtMontenegro">Serbie-et-Monténégro</option>
                                    <option value="slovaquie">Slovaquie</option>
                                    <option value="slovenie">Slovénie</option>
                                    <option value="suede">Suède</option>
                                    <option value="suisse">Suisse</option>
                                    <option value="republiqueTcheque">République Tchèque</option>
                                    <option value="ukraine">Ukraine</option>
                                    <option value="vatican">Vatican</option>
                                    </optgroup>
                                    <optgroup label="Océanie">
                                    <option value="australie">Australie</option>
                                    <option value="fidji">Fidji</option>
                                    <option value="kiribati">Kiribati</option>
                                    <option value="marshall">Marshall</option>
                                    <option value="micronesie">Micronésie</option>
                                    <option value="nauru">Nauru</option>
                                    <option value="nouvelleZelande">Nouvelle-Zélande</option>
                                    <option value="palaos">Palaos</option>
                                    <option value="papouasieNouvelleGuinee">Papouasie-Nouvelle-Guinée</option>
                                    <option value="salomon">Salomon</option>
                                    <option value="samoa">Samoa</option>
                                    <option value="tonga">Tonga</option>
                                    <option value="tuvalu">Tuvalu</option>
                                    <option value="vanuatu">Vanuatu</option>
                                    </optgroup>
                                    
                              </select>
                            
                        </div>
                        <div class="col">
                          <p><br> Numéro de téléphone</p>
                          <input class="form-control" type="text" id="tel" placeholder="Ex: +212 (maroc)" aria-label="Tel">
                          <span class="error-message"></span>
                        </div>
                      </div>

                      <p><br>Comment avez-vous connu Shopp.my?</p>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                <label class="form-check-label" for="flexCheckDefault">
                    Internet
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                <label class="form-check-label" for="flexCheckChecked">
                    Réseaux Sociaux
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                <label class="form-check-label" for="flexCheckDefault">
                    Newsletter
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                <label class="form-check-label" for="flexCheckChecked">
                    Presse
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                <label class="form-check-label" for="flexCheckDefault">
                    Amis / Collègues de travail
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                <label class="form-check-label" for="flexCheckChecked">
                    Autre
                </label>
              </div>
              <br>
              <p>Voulez-vous recevoir nos promotions par email</p>
          
            <div class="form-check">
              <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
              <label class="form-check-label" for="flexRadioDefault1">
                Oui
              </label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2"  >
              <label class="form-check-label" for="flexRadioDefault2">
                Non
              </label>
             </div>
             <br>
         <asp:Label ID="lbl" runat="server" ></asp:Label>
            <asp:Button ID="btnSubmit" class="btn btn-primary"  runat="server" Text="Sign in" OnClick =  "btnSubmit_Click" Height="40px" Width="128px"  href="produitClient.aspx"/>
              <br>
              
         </form>
    </div>
    </section>
            

           
           
  </div>
        
        <!--<script src="jquery-3.6.0.js"></script>-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
     </body> 
</html>
