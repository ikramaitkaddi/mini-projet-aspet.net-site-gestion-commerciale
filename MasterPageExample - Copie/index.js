$(document).ready(function(){

$(window).on("scroll", function(){
 if($(window).scrollTop()){
     $('nav').addClass('black')
 } else {
     $('nav').removeClass('black');
 }
 });

   //nom
  $('#envoyer').click(function(){
       valid=true;
       if($("#nom").val()=="")
       {   
        $("#nom").css("border-color","red");
        $("#nom").next(".error-message").fadeIn().text("  * Veuillez entrer votre nom !");
           valid =false;
       }else if(!$("#nom").val().match(/^[a-z]+$/i))
       {
        $("#nom").next(".error-message").fadeIn().text("  * Veuillez entrer un nom valide !");
        valid =false;  
       }
       else{
       $("#nom").next(".error-message").fadeOut();
       }
      return valid;
    })

    //prenom

    $('#envoyer').click(function(){
        valid=true;
        if($("#prenom").val()=="")
        {   
         $("#prenom").css("border-color","red");
         $("#prenom").next(".error-message").fadeIn().text("  * Veuillez entrer votre prénom !");
            valid =false;
        }else if(!$("#prenom").val().match(/^[a-z]+$/i))
        {
         $("#prenom").next(".error-message").fadeIn().text("  * Veuillez entrer un prénom valide !");
         valid =false;  
        }
        else{
        $("#prenom").next(".error-message").fadeOut();
        }
       return valid;
     });
     //adresse
     $('#envoyer').click(function(){
        valid=true;
        if($("#adr").val()=="")
        {   
         $("#adr").css("border-color","red");
         $("#adr").next(".error-message").fadeIn().text("  * Veuillez entrer votre adresse !");
            valid =false;
        }
        else{
        $("#adr").next(".error-message").fadeOut();
        }
       return valid;
       });

        //mot de passe
        $("#mdp1").keyup(function(){
            if(!$("#mdp1").val().match(/^[a-z0-9]{8,}$/i)){
            $("#mdp1").next(".error-message").show().text("  * Veuillez entrer un mot de passe valide !");
            }
            else
            {
                $("#mdp1").next(".error-message").hide().text("");
            }

        });

        $("#mdp2").keyup(function(){
            var mdp1= $("#mdp1").val();
            var mdp2= $("#mdp2").val();
            if( mdp1 !== mdp2){
                $("#mdp2").next(".error-message").show().text("  * Veuillez entrer le même mot de passe!");
            }else
            {
                $("#mdp2").next(".error-message").hide().text("");
            }
             
        });

        $('#envoyer').click(function(){
            valid=true;
            if($("#mdp1").val()=="")
            {   
             $("#mdp1").css("border-color","red");
             $("#mdp1").next(".error-message").fadeIn().text("  * Veuillez entrer le mot de passe !");
                valid =false;
            }
            else{
            $("#mdp1").next(".error-message").fadeOut();
            }
           return valid;
           });

           $('#envoyer').click(function(){
            valid=true;
            if($("#mdp2").val()=="")
            {   
             $("#mdp2").css("border-color","red");
             $("#mdp2").next(".error-message").fadeIn().text("  * Veuillez entrer le mot de passe !");
                valid =false;
            }
            else{
            $("#mdp2").next(".error-message").fadeOut();
            }
           return valid;
           });

        //email
        $("#mail").keyup(function(){
            if(!$("#mail").val().match(/^([\w-\.]+)@((?:[\w]+\.)+)([a-zA-Z]{2,4})/i)){
            $("#mail").next(".error-message").show().text("  * Veuillez entrer un email valide !");
            }
            else
            {
                $("#mail").next(".error-message").hide().text("");
            }

        })
        $('#envoyer').click(function(){
            valid=true;
            if($("#mail").val()=="")
            {   
             $("#mail").css("border-color","red");
             $("#mail").next(".error-message").fadeIn().text("  * Veuillez entrer votre email !");
                valid =false;
            }
            else{
            $("mail").next(".error-message").fadeOut();
            }
           return valid;
           });
    
             //civilité
             $('#envoyer').click(function(){
                valid=true;
                
                if($("input:radio").filter(":checked").length==0)
                  {   
                 $("p").next(".error-message").fadeIn().text("  * Veuilliez indiquer la civilité !");
                    valid =false;
                  }
                else{
                $("p").next(".error-message").fadeOut();
                 }
           
               return valid;
               
            });
            //login
            $('#envoyer').click(function(){
                valid=true;
                if($("#login").val()=="")
                {   
                 $("#login").css("border-color","red");
                 $("#login").next(".error-message").fadeIn().text("  * Veuillez entrer votre login !");
                    valid =false;
                }
                else{
                $("#login").next(".error-message").fadeOut();
                }
               return valid;
               });

               //tel
               $('#envoyer').click(function(){
                valid=true;
                if($("#tel").val()=="")
                {   
                 $("#tel").css("border-color","red");
                 $("#tel").next(".error-message").fadeIn().text("  * Veuillez entrer votre numéro de téléphone !");
                    valid =false;
                }
                else{
                $("#tel").next(".error-message").fadeOut();
                }
               return valid;
               });

               $("#tel").keyup(function(){
                if(!$("#tel").val().match(/(\+|00)(297|93|244|1264|358|355|376|971|54|374|1684|1268|61|43|994|257|32|229|226|880|359|973|1242|387|590|375|501|1441|591|55|1246|673|975|267|236|1|61|41|56|86|225|237|243|242|682|57|269|238|506|53|5999|61|1345|357|420|49|253|1767|45|1809|1829|1849|213|593|20|291|212|34|372|251|358|679|500|33|298|691|241|44|995|44|233|350|224|590|220|245|240|30|1473|299|502|594|1671|592|852|504|385|509|36|62|44|91|246|353|98|964|354|972|39|1876|44|962|81|76|77|254|996|855|686|1869|82|383|965|856|961|231|218|1758|423|94|266|370|352|371|853|590|212|377|373|261|960|52|692|389|223|356|95|382|976|1670|258|222|1664|596|230|265|60|262|264|687|227|672|234|505|683|31|47|977|674|64|968|92|507|64|51|63|680|675|48|1787|1939|850|351|595|970|689|974|262|40|7|250|966|249|221|65|500|4779|677|232|503|378|252|508|381|211|239|597|421|386|46|268|1721|248|963|1649|235|228|66|992|690|993|670|676|1868|216|90|688|886|255|256|380|598|1|998|3906698|379|1784|58|1284|1340|84|678|681|685|967|27|260|263)(9[976]\d|8[987530]\d|6[987]\d|5[90]\d|42\d|3[875]\d|2[98654321]\d|9[8543210]|8[6421]|6[6543210]|5[87654321]|4[987654310]|3[9643210]|2[70]|7|1)\d{4,20}$/))
                {
                $("#tel").next(".error-message").show().text("  * Veuillez entrer un numéro de téléphone  valide !");
                }
                else
                {
                    $("#tel").next(".error-message").hide().text("");
                }
    
            })



});