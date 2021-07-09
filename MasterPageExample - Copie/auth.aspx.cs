using IdentityServer4.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageExample
{
    public partial class auth : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {      
            DCDataContext dc = new DCDataContext();
            if (login.Text == "" || mail.Text == "" || adr.Text == "" || adr.Text == "")
            {
                Response.Redirect("auth.aspx");
                lbl.Text = "veuillez remplir les champs obligatoires";
            }
            Session["login"] = login.Text;

            client client = new client();
            client.Id = 0;
            client.login = login.Text;
            client.e_mail = mail.Text;
            client.adresse = adr.Text;
            client.pass = mdp1.Text;
       

            dc.client.InsertOnSubmit(client);
            dc.SubmitChanges();
            lbl.Text = "inscreption réussite";
            Response.Redirect("produitClient.aspx");

        }
    }
}