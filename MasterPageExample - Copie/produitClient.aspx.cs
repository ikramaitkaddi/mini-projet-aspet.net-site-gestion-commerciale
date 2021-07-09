using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MasterPageExample
{
      
    public partial class produitClient : System.Web.UI.Page
    {

        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            DCDataContext dc = new DCDataContext();
            Object login = Session["login"];

            if (login == null)
            {
                Response.Redirect("seconnecter.aspx");
            }
            
            else 
            {
                grd1.DataSource = dc.panier.ToList();
                grd1.DataBind();
                if (!Page.IsPostBack)
                {
                    if (ViewState["Records"] == null)
                    {
                        dt.Columns.Add("Nom de L'article");
                        dt.Columns.Add("Prix unitaire");
                        dt.Columns.Add("Quantité");
                        dt.Columns.Add("Categorie");
                        ViewState["Records"] = dt;
                    }
                }
            }
        }
        DCDataContext dc = new DCDataContext();
        panier panier = new panier();
        protected void btnAjoute_Click(object sender, EventArgs e)
        {
            
            articles articles = (from ob in dc.articles
                                 where ob.nom_article == "viande"
                                 select ob).First();

           
          
            panier.nom_article = articles.nom_article;
            panier.prix_unitaire = articles.prix_unitaire;
            panier.nom_categorie = "nouriture";
            dc.panier.InsertOnSubmit(panier);
            dc.SubmitChanges();
            LoadData();
        }
        protected void btnAjoute2_Click(object sender, EventArgs e)
        {

            articles articles = (from ob in dc.articles
                                 where ob.nom_article == "orange"
                                 select ob).First();



            panier.nom_article = articles.nom_article;
            panier.prix_unitaire = articles.prix_unitaire;
            panier.nom_categorie = "nouriture";
            dc.panier.InsertOnSubmit(panier);
            dc.SubmitChanges();
            LoadData();
        }
        void LoadData()
        {
          
            var st = from s in dc.panier select s;
            grd1.DataSource = st;
            grd1.DataBind();
        }

      

       
      
        protected void btn_save_Click(object sender, EventArgs e)
        {
            Object login = Session["login"];
            client client = (from ob in dc.client
                                 where ob.login == login.ToString()
                                 select ob).First();
           
           
            panier panier = new panier();


            for (int i = 0; i < grd1.Rows.Count; i++)
            {
                commande_client cmdCli = new commande_client();
                cmdCli.id_client = client.Id;

                articles article = (from ob in dc.articles
                                    where ob.nom_article == grd1.Rows[i].Cells[1].Text.ToString()
                                    select ob).First();
                cmdCli.id_article = article.Id;
                cmdCli.Num_banque = Convert.ToInt32(TextNum.Text);
                dc.commande_client.InsertOnSubmit(cmdCli);
                dc.SubmitChanges();
            }
                afficher_facture();
            // afficher le total
                int total = 0;
                for (int k = 0; k < table.Rows.Count; k++)
                {
                    int qntt = 0;
                    int prixA = 0;
                   qntt = Convert.ToInt32(table.Rows[k].Cells[1].Text);
                   prixA = Convert.ToInt32(table.Rows[k].Cells[2].Text);
                   total += qntt * prixA;
              
                totale.Text = "le totale à pier est :      "+ total.ToString()+ "    DH";
                }
                   // vider le panier
                var paniers =  from ob in dc.panier select ob;

                foreach (var pan in paniers)
                {
                    dc.panier.DeleteOnSubmit(pan);
                }
                    dc.SubmitChanges();
                    LoadData();
        }

        void afficher_facture()
        {
            date.Text = "votre facture :                      le " + DateTime.Now;
            dt = (DataTable)ViewState["Records"];
          
            for(int i=0; i<grd1.Rows.Count; i++)
            {
                string nom_article = grd1.Rows[i].Cells[1].Text.ToString();
                string categorie = grd1.Rows[i].Cells[3].Text.ToString();
                string prix = grd1.Rows[i].Cells[2].Text.ToString();
                int qnt = 0;
                for (int j = 0; j < grd1.Rows.Count; j++)
                {
                    if (grd1.Rows[j].Cells[1].Text.ToString() == grd1.Rows[i].Cells[1].Text.ToString())
                    {
                        qnt++;
                    }  
                }
                bool kayen = false;
                for (int k = 0; k < table.Rows.Count; k++)
                {
                    if(grd1.Rows[i].Cells[1].Text.ToString() == table.Rows[k].Cells[0].Text.ToString())
                    {
                        kayen = true;
                    }
                }

                if(kayen == false)
                {
                    dt.Rows.Add(nom_article, prix, qnt, categorie);
                    table.DataSource = dt;
                    table.DataBind();
                }
            }
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            articles articles = (from ob in dc.articles
                                 where ob.nom_article == "pain"
                                 select ob).First();



            panier.nom_article = articles.nom_article;
            panier.prix_unitaire = articles.prix_unitaire;
            panier.nom_categorie = "nouriture";
            dc.panier.InsertOnSubmit(panier);
            dc.SubmitChanges();
            LoadData();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            articles articles = (from ob in dc.articles
                                 where ob.nom_article == "carotte"
                                 select ob).First();



            panier.nom_article = articles.nom_article;
            panier.prix_unitaire = articles.prix_unitaire;
            panier.nom_categorie = "nouriture";
            dc.panier.InsertOnSubmit(panier);
            dc.SubmitChanges();
            LoadData();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            articles articles = (from ob in dc.articles
                                 where ob.nom_article == "pantalon"
                                 select ob).First();



            panier.nom_article = articles.nom_article;
            panier.prix_unitaire = articles.prix_unitaire;
            panier.nom_categorie = "vetements";
            dc.panier.InsertOnSubmit(panier);
            dc.SubmitChanges();
            LoadData();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            articles articles = (from ob in dc.articles
                                 where ob.nom_article == "chaussure"
                                 select ob).First();

            panier.nom_article = articles.nom_article;
            panier.prix_unitaire = articles.prix_unitaire;
            panier.nom_categorie = "vetements";
            dc.panier.InsertOnSubmit(panier);
            dc.SubmitChanges();
            LoadData();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            articles articles = (from ob in dc.articles
                                 where ob.nom_article == "robe"
                                 select ob).First();



            panier.nom_article = articles.nom_article;
            panier.prix_unitaire = articles.prix_unitaire;
            panier.nom_categorie = "vetements";
            dc.panier.InsertOnSubmit(panier);
            dc.SubmitChanges();
            LoadData();
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            articles articles = (from ob in dc.articles
                                 where ob.nom_article == "montre"
                                 select ob).First();



            panier.nom_article = articles.nom_article;
            panier.prix_unitaire = articles.prix_unitaire;
            panier.nom_categorie = "vetements";
            dc.panier.InsertOnSubmit(panier);
            dc.SubmitChanges();
            LoadData();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            articles articles = (from ob in dc.articles
                                 where ob.nom_article == "tricot"
                                 select ob).First();



            panier.nom_article = articles.nom_article;
            panier.prix_unitaire = articles.prix_unitaire;
            panier.nom_categorie = "vetements";
            dc.panier.InsertOnSubmit(panier);
            dc.SubmitChanges();
            LoadData();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            articles articles = (from ob in dc.articles
                                 where ob.nom_article == "lait"
                                 select ob).First();



            panier.nom_article = articles.nom_article;
            panier.prix_unitaire = articles.prix_unitaire;
            panier.nom_categorie = "nouriture";
            dc.panier.InsertOnSubmit(panier);
            dc.SubmitChanges();
            LoadData();
        }


        protected void btn_delete_Click1(object sender, EventArgs e)
        {
            panier pn = (from ob in dc.panier
                         where ob.Id == Convert.ToInt32(TextId.Text)
                         select ob).First();
            dc.panier.DeleteOnSubmit(pn);
            dc.SubmitChanges();
            LoadData();

            TextId.Text = "";
        }

        protected void table_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}