using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageExample
{
    public partial class seconnecter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            e.Authenticated = authenticate(Login1.UserName, Login1.Password);
        }

      

        private bool authenticate(string userName, string password)
        {
            DCDataContext dc = new DCDataContext();

            Session["login"] = userName;
            client user = dc.client.Where(c => c.login.Equals(userName) && c.pass.Equals(password)).FirstOrDefault();
            // return userName == "ali" && password == "123";
            return user != null;
        }
    }
}