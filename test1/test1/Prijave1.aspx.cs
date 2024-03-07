using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Diagnostics;

namespace test1
{
    public partial class Prijave1 : System.Web.UI.Page
    {
        DataProvider provider = new DataProvider();
        private static string connectionString = "Server=localhost;Database=student_servis;Uid=root;Pwd=root;Charset=utf8mb4;";
        MySqlConnection con = new MySqlConnection(connectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            //Page.MaintainScrollPositionOnPostBack = false;
            if (!IsPostBack)
            {
                /*try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("prikazi_sve_fakultete",con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    //GridView2.DataSource = dt;
                    //GridView2.DataBind();
                    con.Close();
                }
                catch (Exception ex)
                {

                    throw new Exception(ex.Message);
                }*/

                DataTable dt = provider.PrikaziSveFakultete();
                GridView2.DataSource = dt;
                GridView2.DataBind();

                int brojStudenata = provider.BrojStudenataNaFakultetu(1);
                Label4.Text = brojStudenata.ToString();

                decimal prosecnaOcena;
                int ukupanBrojOcena = 0;
                provider.PrikaziOceneStudenta(1, out prosecnaOcena, ref ukupanBrojOcena);
                Label5.Text = prosecnaOcena.ToString();
                Label6.Text = ukupanBrojOcena.ToString();

                DataTable dt2 = provider.PrikaziBrojStudenataPoOdseku();
                GridView3.DataSource = dt2;
                GridView3.DataBind();

                DataTable dt3 = provider.PrikaziBrojPrijavaPoIspitu();
                GridView4.DataSource = dt3;
                GridView4.DataBind();

                DropDownList4.DataSource = provider.UcitajNazivePredmeta();
                DropDownList4.DataTextField = "Naziv";
                DropDownList4.DataValueField = "Id";
                DropDownList4.DataBind();

                

                GridView1.DataSource = provider.UcitajPrijave();
                GridView1.DataBind();

                LoadStudentIds();
                //LoadPredmetIds();

                DropDownList1.SelectedIndexChanged += DropDownList1_SelectedIndexChanged;
                //DropDownList3.SelectedIndexChanged += DropDownList3_SelectedIndexChanged;
                
            }
        }

        private void LoadStudentIds()
        {
            using (MySqlConnection con = new MySqlConnection(connectionString))
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT id, ime, prezime FROM studenti", con))
                {
                    con.Open();

                    using (MySqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            int studentId = Convert.ToInt32(reader["id"]);
                            string studentName = $"{reader["ime"]} {reader["prezime"]}";
                            DropDownList1.Items.Add(new ListItem(studentName, studentId.ToString()));
                        }
                    }
                }
            }
        }

        private void LoadPredmetIds(int studentId)
        {
                using (MySqlCommand cmd = new MySqlCommand("SELECT p.id, p.naziv FROM predmeti p inner join studenti s on p.fakultet_id = s.fakultet_id where s.id = @studentId;", con))
                {
                    cmd.Parameters.AddWithValue("@studentId", studentId);
                    con.Open();

                    using (MySqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            int predmetId = Convert.ToInt32(reader["id"]);

                            string predmetNaziv = $"{reader["naziv"]}";
                            DropDownList3.Items.Add(new ListItem(predmetNaziv, predmetId.ToString()));
                    
                        }
                    }
                }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                int studentId = Convert.ToInt32(DropDownList1.SelectedValue);
                int predmetId = Convert.ToInt32(DropDownList3.SelectedValue);
                string labVezbe;
                string ocena = txtAdresa.Text;
                string kol1 = txtAdresa0.Text;
                string kol2 = txtAdresa1.Text;
                DateTime datumPrijave = Calendar1.SelectedDate;
            if (CheckBox1.Checked)
            {
                labVezbe = "Ima";
            }
            else if (CheckBox2.Checked)
            {
                labVezbe = "Nema";
            }
            else
            {
                labVezbe = "Nije definisano";
            }

                // Pozivanje metode za dodavanje prijave u bazu
                DodajPrijavu(studentId, predmetId, labVezbe, ocena, kol1, kol2, datumPrijave);

                GridView1.DataSource = provider.UcitajPrijave();
                GridView1.DataBind();
                //provider.UcitajPrijave();

                Label3.Visible = true;
            
        }
        private DataTable GetPredmetiZaStudenta(int studentId)
        {
            DataTable dt = new DataTable();

            using (MySqlConnection con = new MySqlConnection(connectionString))
            {
                string query = "select p.id from studenti s inner join predmeti p on s.fakultet_id = p.fakultet_id where s.id = @studentId;";

                using (MySqlCommand cmd = new MySqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@StudentID", studentId);
                    using (MySqlDataAdapter da = new MySqlDataAdapter(cmd))
                    {
                        da.Fill(dt);
                    }
                }
            }

            return dt;
        }
        protected void DodajPrijavu(int studentId, int predmetId, string labVezbe, string ocena, string kol1, string kol2, DateTime datumPrijave)
        {
            try
            {
                using (MySqlConnection con = new MySqlConnection(connectionString))
                {
                    con.Open();

                    // SQL upit za dodavanje prijave
                    string query = "INSERT INTO prijave (student_id, predmet_id, labVezbe, ocena, kol_1, kol_2, datumPrijave) VALUES (@studentId, @predmetId, @labVezbe, @ocena, @kol1, @kol2, @datumPrijave);";
                    using (MySqlCommand cmd = new MySqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@studentId", studentId);
                        cmd.Parameters.AddWithValue("@predmetId", predmetId);
                        cmd.Parameters.AddWithValue("@labVezbe", labVezbe);
                        cmd.Parameters.AddWithValue("@ocena", ocena);
                        cmd.Parameters.AddWithValue("@kol1", kol1);
                        cmd.Parameters.AddWithValue("@kol2", kol2);
                        cmd.Parameters.AddWithValue("@datumPrijave", datumPrijave);

                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                // Obrada grešaka (npr. ispis ili logovanje)
                Response.Write("Greška pri dodavanju prijave: " + ex.Message);
            }
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            Debug.WriteLine("SelectedIndexChanged event fired.");
            int selectedPredmetId = Convert.ToInt32(DropDownList3.SelectedValue);

            // Prikaz detalja o predmetu
            List<string> predmetDetails = provider.GetPredmetDetailsById(selectedPredmetId);
            ListBox2.Items.Clear();
            foreach (string detail in predmetDetails)
            {
                ListBox2.Items.Add(detail);
            }
            Label2.Visible = true;
            ListBox2.Visible = true;

        }

        protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Debug.WriteLine("SelectedIndexChanged event fired.");
            int selectedStudentId = Convert.ToInt32(DropDownList1.SelectedValue);

            // Prikaz detalja o studentu
            List<string> studentDetails = provider.GetStudentDetailsById(selectedStudentId);
            ListBox1.Items.Clear();
            foreach (string detail in studentDetails)
            {
                ListBox1.Items.Add(detail);
            }
            Label1.Visible = true;
            ListBox1.Visible = true;

            // Očisti postojeće stavke u drugom DropDownList-u
            DropDownList3.Items.Clear();

            // Prikaz predmeta za odabranog studenta
            LoadPredmetIds(selectedStudentId);

            // Očisti postojeće stavke u trećem DropDownList-u i ListBox-u
            ListBox2.Items.Clear();
            Label2.Visible = false;
            ListBox2.Visible = false;
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                // Dobijanje selektovanog predmeta
                string selectedPredmet = DropDownList4.SelectedItem.Text;
                Debug.WriteLine($"Selected predmet: {selectedPredmet}");

                // Poziv funkcije iz providera
                string rezultat = provider.PozoviFunkcijuStudentiKojiSuPoloziliPredmet(selectedPredmet);

                // Ažuriranje ListBox-a
                ListBox3.Items.Clear();

                if (string.IsNullOrEmpty(rezultat))
                {
                    // Ako nema rezultata, ispisati poruku
                    ListBox3.Items.Add("Niko još uvek nije položio predmet.");
                }
                else
                {
                    // Ako ima rezultata, dodati ih u ListBox
                    ListBox3.Items.Add(new ListItem(rezultat));
                }

                ListBox3.Visible = true;
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Greška prilikom izvršavanja funkcije: {ex.Message}");
                // Obrada greške, ako je potrebno
            }

        }
    }
}