using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test1
{
    public partial class Prijava_StudentMode : System.Web.UI.Page
    {
        DataProvider provider = new DataProvider();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = provider.UcitajPrijave();
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string ime = txtID2.Text;
                string brInd = txtID3.Text;

                var ListaPrijava = provider.UcitajPrijave_Pretraga(ime, brInd);
                GridView1.DataSource = ListaPrijava;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Greška prilikom izvršavanja upita: " + ex.Message);
            }
        }
    }
}