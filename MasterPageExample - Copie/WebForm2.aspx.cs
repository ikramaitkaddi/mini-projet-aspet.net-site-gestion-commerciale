using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageExample
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DCDataContext dc = new DCDataContext();
            grd.DataSource = dc.commande_client.ToList();
            grd.DataBind();
            
        }

     

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        DCDataContext dc = new DCDataContext();

      
        void LoadData()
        {
            var st = from s in dc.commande_client select s;
            grd.DataSource = st;
            grd.DataBind();


        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

     



        protected void btnDelete_Click(object sender, EventArgs e)
        {
            commande_client commande = (from ob in dc.commande_client
                                   where ob.Id == Convert.ToInt32(TextId.Text)
                                   select ob).First();
            dc.commande_client.DeleteOnSubmit(commande);
            dc.SubmitChanges();
            LoadData();
            lblAlert.Text = "la commande à été supprimée avec succée";
            TextId.Text = "";
           
         
        }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}