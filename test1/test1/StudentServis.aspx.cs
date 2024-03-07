using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace test1
{
    public partial class StudentServis : System.Web.UI.Page
    {
        DataProvider provider = new DataProvider();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.AppendDataBoundItems = true;
                DropDownList2.AppendDataBoundItems = true;
                DropDownList3.AppendDataBoundItems = true;

                DropDownList1.DataSource = provider.UcitajNazive();
                DropDownList1.DataTextField = "Naziv";
                DropDownList1.DataValueField = "Id";
                DropDownList1.DataBind();

                DropDownList2.DataSource = provider.UcitajNazivePredmeta();
                DropDownList2.DataTextField = "Naziv";
                DropDownList2.DataValueField = "Id";
                DropDownList2.DataBind();

                DropDownList3.DataSource = provider.UcitajBrojeveIndeksa();
                DropDownList3.DataTextField = "BrInd";
                DropDownList3.DataValueField = "Id";
                DropDownList3.DataBind();

                GridFakulteti.DataSource = provider.UcitajFakultete();
                GridFakulteti.DataBind();

                GridView1.DataSource = provider.UcitajPredmete();
                GridView1.DataBind();

                GridView2.DataSource = provider.UcitajStudente();
                GridView2.DataBind();

                int fakultetId = 0; // Postavite odgovarajući ID fakulteta
                /*int brojStudenata = provider.BrojStudenataUFakultetu(fakultetId);
                Label1.Text = brojStudenata.ToString();*/

                int studentId = 0;
                double prosecnaOcena = provider.ProsecnaOcenaSvihStudenata(studentId);
                Label2.Text = prosecnaOcena.ToString();

                int ukupanBrojOcena = provider.UkupanBrojOcena(studentId);
                Label3.Text = ukupanBrojOcena.ToString();

                DataTable rezultati = provider.BrojStudenataPoOdseku();
                //rezultati.Columns.Add("Naziv", typeof(string)); // Dodajte kolonu 'Naziv' u DataTable
                GridView3.DataSource = rezultati;
                GridView3.DataBind();

                DataTable rezultati1 = provider.BrojPrijavaPoStudentu();
                GridView4.DataSource = rezultati1;
                GridView4.DataBind();
            }
        }

        protected void GridFakulteti_RowEditing(object sender, GridViewEditEventArgs e)
        {
            var red = GridFakulteti.Rows[e.NewEditIndex];
            Fakulteti fakulteti = new Fakulteti
            {
                Id = Convert.ToInt32(red.Cells[0].Text),
                Naziv = red.Cells[1].Text,
                Odsek = red.Cells[2].Text,
                Adresa = red.Cells[3].Text,

            };
            Session["Fakulteti"] = fakulteti;

            Response.Redirect("StudentServis.aspx");
            //fixing error code CS0012 - installing library/reference Microsoft.AspNet.WebApi.Client
        }

        protected void btnTrazi_Click(object sender, EventArgs e)
        {

        }

        protected void GridFakulteti_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnPretraga_Click(object sender, EventArgs e)
        {
            string id = txtID.Text;
            string naziv = DropDownList1.SelectedItem.Text;
            string odsek = txtOdsek.Text;
            string adresa = txtAdresa.Text;

            //Console.WriteLine("id: " + id);
            //Console.WriteLine("naziv: " + naziv);
            //Console.WriteLine("odsek: " + odsek);
            //Console.WriteLine("adresa: " + adresa);


            var FakultetiLista = provider.UcitajFakultete_Pretraga(id, naziv, odsek, adresa);

            GridFakulteti.DataSource = FakultetiLista;

            GridFakulteti.DataBind();

        }
        
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            var red1 = GridView1.Rows[e.NewEditIndex];
            Predmeti predmeti = new Predmeti
            {
                Id = Convert.ToInt32(red1.Cells[0].Text),
                Naziv = red1.Cells[1].Text,
                Profesor = red1.Cells[2].Text,
            };
            Session["Predmeti"] = predmeti;

            Response.Redirect("StudentServis.aspx");
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            var red2 = GridView2.Rows[e.NewEditIndex];
            Studenti studenti = new Studenti
            {
                Id = Convert.ToInt32(red2.Cells[0].Text),
                Ime = red2.Cells[1].Text,
                Prezime = red2.Cells[2].Text,
                BrInd = red2.Cells[3].Text,
                DatumRodj = Convert.ToDateTime(red2.Cells[4].Text),
            };
            Session["Studenti"] = studenti;

            Response.Redirect("StudentServis.aspx");
        }

        protected void btnPretraga2_Click(object sender, EventArgs e)
        {
            string id = TextBox1.Text;
            string naziv = DropDownList2.SelectedItem.Text;
            string profesor = TextBox2.Text;

            var PredmetiLista = provider.UcitajPredmete_Pretraga(id, naziv, profesor);

            GridView1.DataSource = PredmetiLista;
            GridView1.DataBind();
        }

        protected void btnPretraga3_Click(object sender, EventArgs e)
        {
            string id = txtID2.Text;
            string ime = txtIme.Text;
            string prezime = txtPrezime.Text;
            string brind = DropDownList3.SelectedItem.Text;

            var StudentiLista = provider.UcitajStudente_Pretraga(id, ime, prezime, brind);

            GridView2.DataSource = StudentiLista;
            GridView2.DataBind();
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx"); 
        }
    }
}