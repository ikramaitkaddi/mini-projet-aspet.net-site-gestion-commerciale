using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageExample
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }




       
            private bool authenticate(string userName, string password)
        {
                     DCDataContext dc = new DCDataContext();

                     Session["nom"] = userName;
                  admin user = dc.admin.Where(u => u.username.Equals(userName) && u.pwd.Equals(password)).FirstOrDefault();
               
                return user != null;
            }

      

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            e.Authenticated = authenticate(Lgn1.UserName, Lgn1.Password);
        }
    }
    }
    
