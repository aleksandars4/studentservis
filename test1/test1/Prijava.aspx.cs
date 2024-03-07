using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test1
{
    public partial class Prijava : System.Web.UI.Page
    {
        DataProvider provider = new DataProvider();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = provider.UcitajPrijave();
                GridView1.DataBind();

                DropDownList1.DataSource = provider.UcitajNazivePredmeta();
                DropDownList1.DataTextField = "Naziv";
                DropDownList1.DataValueField = "Id";
                DropDownList1.DataBind();

                DropDownList5.DataSource = provider.UcitajBrojeveIndeksa();
                DropDownList5.DataTextField = "BrInd";
                DropDownList5.DataValueField = "Id";
                DropDownList5.DataBind();

                DropDownList3.DataSource = provider.UcitajImena();
                DropDownList3.DataTextField = "Ime";
                DropDownList3.DataValueField = "Id";
                DropDownList3.DataBind();

                DropDownList4.DataSource = provider.UcitajPrezimena();
                DropDownList4.DataTextField = "Prezime";
                DropDownList4.DataValueField = "Id";
                DropDownList4.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string naziv = DropDownList1.SelectedItem.Text;
            int ocena = int.Parse(txtID0.Text);
            string labVezbe = txtID1.Text;
            int kol1 = int.Parse(txtAdresa.Text);
            int kol2 = int.Parse(txtAdresa0.Text);
            DateTime datumPrijave = Calendar1.SelectedDate;
            string ime = DropDownList3.SelectedItem.Text;
            string prezime = DropDownList4.SelectedItem.Text;
            string brInd = DropDownList5.SelectedItem.Text;

            // Pozivanje metode za dodavanje podataka u bazu
            provider.DodajPodatkeUBazu(naziv, ocena, labVezbe, kol1, kol2, datumPrijave, ime, prezime, brInd);

            // Osvežavanje prikaza podataka u GridView
            GridView1.DataSource = provider.UcitajPrijave();
            GridView1.DataBind();

            // Resetovanje polja
            txtID0.Text = "";
            txtID1.Text = "";
            txtAdresa.Text = "";
            txtAdresa0.Text = "";
            Calendar1.SelectedDate = DateTime.Today;
            DropDownList1.SelectedIndex = 0;
            DropDownList3.SelectedIndex = 0;
            DropDownList4.SelectedIndex = 0;
            DropDownList5.SelectedIndex = 0;
        }
    }
}