using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

namespace test1
{
    public partial class Login : System.Web.UI.Page
    {
        string connectionString = "Server=localhost;Database=student_servis;Uid=root;Pwd=root;";

        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                // Otvori vezu
                connection.Open();

                // SQL upit za proveru korisnika
                string query = "SELECT role FROM users WHERE username = @username AND password = @password";

                // Kreirajte komandu sa parametrima
                using (MySqlCommand cmd = new MySqlCommand(query, connection))
                {
                    // Postavi vrednosti parametara
                    cmd.Parameters.AddWithValue("@username", txtUsername.Value);
                    cmd.Parameters.AddWithValue("@password", txtPassword.Value);

                    // Izvrši upit i pročitaj rezultat
                    object result = cmd.ExecuteScalar();

                    // Proveri rezultat
                    if (result != null)
                    {
                        string role = result.ToString();

                        // Proveri ulogu korisnika
                        if (role == "admin")
                        {
                            // Ako je uloga admin, preusmeri na StudentServis.aspx
                            Response.Redirect("StudentServis.aspx");
                        }
                        else if (role =="student")
                        {
                            Response.Redirect("StudentServis-StudentMode.aspx");
                        }
                        // Dodajte ostale uslove za druge uloge ako ih imate

                        // Ako nema odgovarajuće uloge, možete prikazati poruku o grešci ili uraditi nešto drugo
                    }
                    else
                    {
                        // Prikaz poruke o neuspešnom logovanju
                        lblLoginError.Text = "Invalid username or password";
                    }
                }
            }
        }
    }
}