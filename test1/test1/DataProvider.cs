using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Text;
//using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using System.Diagnostics;

namespace test1
{
    public class DataProvider
    {
        //string koji predstavlja putanju za konekciju sa bazom student_servis
        string connectionString = "Server=localhost;Database=student_servis;Uid=root;Pwd=root;";

        //metode za punjenje dropdown list-a iz MySql baze student_servis
        public List<Nazivi> UcitajNazive()
        {
            List<Nazivi> listaNaziva = new List<Nazivi>();
            Nazivi nazivi = new Nazivi
            {
                Naziv = ""
            };
            listaNaziva.Add(nazivi);
            try
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    MySqlCommand cmd = new MySqlCommand();
                    cmd.Connection = connection;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "SELECT distinct naziv FROM fakulteti";

                    connection.Open();

                    MySqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        nazivi = new Nazivi
                        {
                            Naziv = dr["Naziv"].ToString()
                        };
                        listaNaziva.Add(nazivi);
                    }
                    dr.Close();
                    return listaNaziva;

                }
            }
            catch (Exception ex)
            {

                return null;
            }
            return listaNaziva;
        }
        public List<NazivPredmeta> UcitajNazivePredmeta()
        {
            List<NazivPredmeta> listaNazivaPredmeta = new List<NazivPredmeta>();
            NazivPredmeta naziviPredmeta = new NazivPredmeta
            {
                Id = 0,
                Naziv = ""
            };
            listaNazivaPredmeta.Add(naziviPredmeta);
            try
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    MySqlCommand cmd = new MySqlCommand();
                    cmd.Connection = connection;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "SELECT distinct id, naziv FROM predmeti";

                    connection.Open();

                    MySqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        naziviPredmeta = new NazivPredmeta
                        {
                            Id = (int)dr["Id"],
                            Naziv = dr["Naziv"].ToString()
                        };
                        listaNazivaPredmeta.Add(naziviPredmeta);
                    }
                    dr.Close();
                    return listaNazivaPredmeta;
                }
            }
            catch (Exception ex)
            {

                return null;
            }
        }
        public List<BrojeviIndeksa> UcitajBrojeveIndeksa()
        {
            List<BrojeviIndeksa> listaBrojevaIndeksa = new List<BrojeviIndeksa>();
            BrojeviIndeksa brojeviIndeksa = new BrojeviIndeksa
            {
                Id = 0,
                BrInd = ""
            };
            listaBrojevaIndeksa.Add(brojeviIndeksa);
            try
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    MySqlCommand cmd = new MySqlCommand();
                    cmd.Connection = connection;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "SELECT distinct id, brind FROM studenti";

                    connection.Open();

                    MySqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        brojeviIndeksa = new BrojeviIndeksa()
                        {
                            Id = (int)dr["Id"],
                            BrInd = dr["BrInd"].ToString()
                        };
                        listaBrojevaIndeksa.Add(brojeviIndeksa);
                    }
                    dr.Close();
                    return listaBrojevaIndeksa;

                }
            }
            catch (Exception ex)
            {

                return null;
            }
        }

        public List<Imena> UcitajImena()
        {
            List<Imena> listaImena = new List<Imena>();
            Imena imena = new Imena
            {
                Id = 0,
                Ime = ""
            };
            listaImena.Add(imena);
            try
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    MySqlCommand cmd = new MySqlCommand();
                    cmd.Connection = connection;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "select distinct id, ime from studenti";

                    connection.Open();

                    MySqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        imena = new Imena 
                        {
                            Id = (int)dr["Id"],
                            Ime = dr["Ime"].ToString()
                        };
                        listaImena.Add(imena);
                    }
                    dr.Close();
                    return listaImena;

                }
            }
            catch (Exception ex)
            {

                return null;
            }
        }
        public List<Prezimena> UcitajPrezimena()
        {
            List<Prezimena> listaPrezimena = new List<Prezimena>();
            Prezimena prezimena = new Prezimena
            {
                Id = 0,
                Prezime = ""
            };
            listaPrezimena.Add(prezimena);


            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = connection;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select distinct id, prezime from studenti";

                connection.Open();

                MySqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    prezimena = new Prezimena 
                    {
                        Id = (int)dr["Id"],
                        Prezime = dr["Prezime"].ToString()
                    };
                    listaPrezimena.Add(prezimena);
                }
                dr.Close();
                return listaPrezimena;
            }
        }


        //metode za punjenje gridview-a iz MySql baze student_servis
        public List<Fakulteti> UcitajFakultete()
        {
            List<Fakulteti> listaFakulteta = new List<Fakulteti>();
            try
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    MySqlCommand cmd = new MySqlCommand();
                    cmd.Connection = connection;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "SELECT * FROM fakulteti";

                    connection.Open();

                    DataTable table = new DataTable();
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    da.Fill(table);

                    foreach (DataRow row in table.Rows)
                    {
                        Fakulteti fakulteti = new Fakulteti
                        {
                            Id = (int)row["id"],
                            Naziv = row["naziv"].ToString(),
                            Odsek = row["odsek"].ToString(),
                            Adresa = row["adresa"].ToString()
                        };
                        listaFakulteta.Add(fakulteti);
                    }
                }
                return listaFakulteta;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
        public List<Predmeti> UcitajPredmete()
        {
            List<Predmeti> listaPredmeta = new List<Predmeti>();
            try
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    MySqlCommand cmd = new MySqlCommand();
                    cmd.Connection = connection;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "SELECT id, naziv, profesor FROM predmeti";

                    connection.Open();

                    DataTable table = new DataTable();
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    da.Fill(table);

                    foreach (DataRow row in table.Rows)
                    {
                        Predmeti predmeti = new Predmeti
                        {
                            Id = (int)row["id"],
                            Naziv = row["naziv"].ToString(),
                            Profesor = row["profesor"].ToString()
                        };
                        listaPredmeta.Add(predmeti);
                    }
                }
            }
            catch (Exception ex)
            {

                return null;
            }
            return listaPredmeta;
        }
        public List<Studenti> UcitajStudente()
        {
            List<Studenti> listaStudenata = new List<Studenti>();
            try
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    MySqlCommand cmd = new MySqlCommand();
                    cmd.Connection = connection;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "SELECT id, ime, prezime, brInd, datumRodj FROM studenti";

                    connection.Open();

                    DataTable table = new DataTable();
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    da.Fill(table);

                    foreach (DataRow row in table.Rows)
                    {
                        Studenti studenti = new Studenti
                        {
                            Id = (int)row["id"],
                            Ime = row["ime"].ToString(),
                            Prezime = row["prezime"].ToString(),
                            BrInd = row["brInd"].ToString(),
                            DatumRodj = (DateTime)row["datumRodj"]
                        };
                        listaStudenata.Add(studenti);
                    }
                }
            }
            catch (Exception ex)
            {

                return null;
            }

            return listaStudenata;
        }
        public List<Prijave> UcitajPrijave()
        {
            List<Prijave> listaPrijava = new List<Prijave>();
            try
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    MySqlCommand cmd = new MySqlCommand();
                    cmd.Connection = connection;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "SELECT pr.naziv, p.id, p.ocena, p.labvezbe, p.kol_1, p.kol_2, p.datumPrijave, s.ime, s.prezime, s.brInd FROM prijave p LEFT JOIN predmeti pr ON p.predmet_id = pr.id LEFT JOIN studenti s ON p.student_id = s.id ";

                    connection.Open();

                    DataTable table = new DataTable();
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    da.Fill(table);

                    foreach (DataRow row in table.Rows)
                    {
                        string naziv = row["naziv"].ToString();
                        int ocena;
                        int.TryParse(row["ocena"].ToString(), out ocena);
                        string labVezbe = row["labvezbe"].ToString();
                        int kol1;
                        int.TryParse(row["kol_1"].ToString(), out kol1);
                        int kol2;
                        int.TryParse(row["kol_2"].ToString(), out kol2);
                        DateTime datumPrijave;
                        DateTime.TryParse(row["datumPrijave"].ToString(), out datumPrijave);
                        string ime = row["ime"].ToString();
                        string prezime = row["prezime"].ToString();
                        string brInd = row["brInd"].ToString();

                        Prijave prijave = new Prijave
                        {
                            Naziv = naziv,
                            Ocena = ocena,
                            LabVezbe = labVezbe,
                            Kol1 = kol1,
                            Kol2 = kol2,
                            DatumPrijave = datumPrijave,
                            Ime = ime,
                            Prezime = prezime,
                            BrInd = brInd
                        };
                        listaPrijava.Add(prijave);
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Greska: ", ex.Message);
                return null;
            }
            return listaPrijava;
        }
        //metode za pretragu Fakulteta/Predmeta/Studenata
        public List<Fakulteti> UcitajFakultete_Pretraga(
            string id = null,
            string naziv = null,
            string odsek = null,
            string adresa = null
            )
        {
            List<Fakulteti> FakultetiLista = new List<Fakulteti>();
            try
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();

                    // Kreiranje SQL upita sa dinamičkim parametrima
                    //string sql = "SELECT Id, Naziv, Odsek, Adresa FROM Fakulteti WHERE 1=1";
                    string sql = "SELECT * FROM Fakulteti WHERE 1=1";

                    if (!string.IsNullOrWhiteSpace(id))
                    {
                        sql += " AND Id = @id";
                    }
                    if (!string.IsNullOrWhiteSpace(naziv))
                    {
                        sql += " AND Naziv LIKE @naziv";
                    }
                    if (!string.IsNullOrWhiteSpace(odsek))
                    {
                        sql += " AND Odsek LIKE @odsek";
                    }
                    if (!string.IsNullOrWhiteSpace(adresa))
                    {
                        sql += " AND Adresa LIKE @adresa";
                    }

                    MySqlCommand cmd = new MySqlCommand(sql, connection);

                    // Dodavanje parametara u SQL upit
                    if (!string.IsNullOrWhiteSpace(id))
                    {
                        cmd.Parameters.AddWithValue("@id", id);
                    }
                    if (!string.IsNullOrWhiteSpace(naziv))
                    {
                        cmd.Parameters.AddWithValue("@naziv", "%" + naziv + "%");
                    }
                    if (!string.IsNullOrWhiteSpace(odsek))
                    {
                        cmd.Parameters.AddWithValue("@odsek", "%" + odsek + "%");
                    }
                    if (!string.IsNullOrWhiteSpace(adresa))
                    {
                        cmd.Parameters.AddWithValue("@adresa", "%" + adresa + "%");
                    }

                    //Console.WriteLine("Izvršava se SQL upit: " + sql); // Dodajte ovu liniju za debagiranje

                    using (MySqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            //Console.WriteLine("Učitani red iz baze"); // Dodajte ovu liniju za debagiranje

                            Fakulteti fakulteti = new Fakulteti
                            {
                                Id = reader.GetInt32("Id"),
                                Naziv = reader.IsDBNull(reader.GetOrdinal("Naziv")) ? string.Empty : reader.GetString("Naziv"),
                                Odsek = reader.IsDBNull(reader.GetOrdinal("Odsek")) ? string.Empty : reader.GetString("Odsek"),
                                Adresa = reader.IsDBNull(reader.GetOrdinal("Adresa")) ? string.Empty : reader.GetString("Adresa")
                            };
                            FakultetiLista.Add(fakulteti);
                        }
                    }
                }
                return FakultetiLista;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Greška prilikom izvršavanja upita: " + ex.Message);
                return null;
            }
        }
        public List<Predmeti> UcitajPredmete_Pretraga(
            string id = null,
            string naziv = null,
            string profesor = null)
        {
            List<Predmeti> PredmetiLista = new List<Predmeti>();
            try
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();

                    string sql = "SELECT * FROM Predmeti WHERE 1=1";

                    if (!string.IsNullOrWhiteSpace(id))
                    {
                        sql += " AND Id = @id";
                    }
                    if (!string.IsNullOrWhiteSpace(naziv))
                    {
                        sql += " AND Naziv LIKE @naziv";
                    }
                    if (!string.IsNullOrWhiteSpace(profesor))
                    {
                        sql += " AND Profesor LIKE @profesor";
                    }

                    MySqlCommand cmd = new MySqlCommand(sql,connection);

                    if (!string.IsNullOrWhiteSpace(id))
                    {
                        cmd.Parameters.AddWithValue("@id", id);
                    }
                    if (!string.IsNullOrWhiteSpace(naziv))
                    {
                        cmd.Parameters.AddWithValue("@naziv", "%" + naziv + "%");
                    }
                    if (!string.IsNullOrWhiteSpace(profesor))
                    {
                        cmd.Parameters.AddWithValue("@profesor", "%" + profesor + "%");
                    }

                    using (MySqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Predmeti predmeti = new Predmeti
                            {
                                Id = reader.GetInt32("Id"),
                                Naziv = reader.IsDBNull(reader.GetOrdinal("Naziv")) ? string.Empty : reader.GetString("Naziv"),
                                Profesor = reader.IsDBNull(reader.GetOrdinal("Profesor")) ? string.Empty : reader.GetString("Profesor")
                            };
                            PredmetiLista.Add(predmeti);
                        }
                    }
                }
                return PredmetiLista;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Greška prilikom izvršavanja upita: " + ex.Message);
                return null;
            }
        }

        public List<Studenti> UcitajStudente_Pretraga(
            string id = null,
            string ime = null,
            string prezime = null,
            string brInd = null
            )
        {
            List<Studenti> StudentiLista = new List<Studenti>();
            try
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();

                    string sql = "SELECT * FROM Studenti WHERE 1=1";

                    if (!string.IsNullOrWhiteSpace(id))
                    {
                        sql += " AND Id = @id";
                    }
                    if (!string.IsNullOrWhiteSpace(ime))
                    {
                        sql += " AND Ime LIKE @ime";
                    }
                    if (!string.IsNullOrWhiteSpace(prezime))
                    {
                        sql += " AND Prezime LIKE @prezime";
                    }
                    if (!string.IsNullOrWhiteSpace(brInd))
                    {
                        sql += " AND brInd LIKE @brind";
                    }

                    MySqlCommand cmd = new MySqlCommand(sql, connection);

                    // Dodavanje parametara u SQL upit
                    if (!string.IsNullOrWhiteSpace(id))
                    {
                        cmd.Parameters.AddWithValue("@id", id);
                    }
                    if (!string.IsNullOrWhiteSpace(ime))
                    {
                        cmd.Parameters.AddWithValue("@ime", "%" + ime + "%");
                    }
                    if (!string.IsNullOrWhiteSpace(prezime))
                    {
                        cmd.Parameters.AddWithValue("@prezime", "%" + prezime + "%");
                    }
                    if (!string.IsNullOrWhiteSpace(brInd))
                    {
                        cmd.Parameters.AddWithValue("@brind", "%" + brInd + "%");
                    }

                    using (MySqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Studenti studenti = new Studenti
                            {
                                Id = reader.GetInt32("Id"),
                                Ime = reader.IsDBNull(reader.GetOrdinal("Ime")) ? string.Empty : reader.GetString("Ime"),
                                Prezime = reader.IsDBNull(reader.GetOrdinal("Prezime")) ? string.Empty : reader.GetString("Prezime"),
                                BrInd = reader.IsDBNull(reader.GetOrdinal("BrInd")) ? string.Empty : reader.GetString("BrInd"),
                                DatumRodj = reader.IsDBNull(reader.GetOrdinal("DatumRodj")) ? DateTime.MinValue : reader.GetDateTime("DatumRodj")
                            };

                            StudentiLista.Add(studenti);
                        }
                        
                    }
                }
                return StudentiLista;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Greška prilikom izvršavanja upita: " + ex.Message);
                return null;
            }
        }
        public List<Prijave> UcitajPrijave_Pretraga(string ime, string brInd)
        {
            List<Prijave> listaPrijava = new List<Prijave>();
            try
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();

                    StringBuilder queryBuilder = new StringBuilder();
                    queryBuilder.Append("SELECT pr.naziv, p.id, p.ocena, p.labvezbe, p.kol_1, p.kol_2, p.datumPrijave, s.ime, s.prezime, s.brInd ");
                    queryBuilder.Append("FROM prijave p ");
                    queryBuilder.Append("LEFT JOIN predmeti pr ON p.predmet_id = pr.id ");
                    queryBuilder.Append("LEFT JOIN studenti s ON p.student_id = s.id ");
                    queryBuilder.Append("WHERE 1 = 1 "); // Ovo je uvodni uslov koji će biti uvek ispunjen

                    if (!string.IsNullOrEmpty(ime))
                    {
                        queryBuilder.Append("AND s.ime = @ime ");
                    }

                    if (!string.IsNullOrEmpty(brInd))
                    {
                        queryBuilder.Append("AND s.brInd = @brInd ");
                    }

                    MySqlCommand cmd = new MySqlCommand(queryBuilder.ToString(), connection);

                    if (!string.IsNullOrEmpty(ime))
                    {
                        cmd.Parameters.AddWithValue("@ime", ime);
                    }

                    if (!string.IsNullOrEmpty(brInd))
                    {
                        cmd.Parameters.AddWithValue("@brInd", brInd);
                    }

                    // Izvršite upit
                    using (MySqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            // Popunite objekat Prijava i dodajte ga u listu
                            Prijave prijave = new Prijave
                            {
                                Naziv = reader.IsDBNull(reader.GetOrdinal("naziv")) ? null : reader["naziv"].ToString(),
                                Ocena = reader.IsDBNull(reader.GetOrdinal("ocena")) ? 0 : Convert.ToInt32(reader["ocena"]),
                                LabVezbe = reader.IsDBNull(reader.GetOrdinal("labvezbe")) ? null : reader["labvezbe"].ToString(),
                                Kol1 = reader.IsDBNull(reader.GetOrdinal("kol_1")) ? 0 : Convert.ToInt32(reader["kol_1"]),
                                Kol2 = reader.IsDBNull(reader.GetOrdinal("kol_2")) ? 0 : Convert.ToInt32(reader["kol_2"]),
                                DatumPrijave = reader.IsDBNull(reader.GetOrdinal("datumPrijave")) ? DateTime.MinValue : Convert.ToDateTime(reader["datumPrijave"]),
                                Ime = reader.IsDBNull(reader.GetOrdinal("ime")) ? null : reader["ime"].ToString(),
                                Prezime = reader.IsDBNull(reader.GetOrdinal("prezime")) ? null : reader["prezime"].ToString(),
                                BrInd = reader.IsDBNull(reader.GetOrdinal("brInd")) ? null : reader["brInd"].ToString()
                            };

                            listaPrijava.Add(prijave);
                        }
                        return listaPrijava;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Greška prilikom izvršavanja upita: " + ex.Message);
                return null;
            }
        }

        //metode za popunjavanje ostalih podataka
        //- Label-ovi za Br. studenata na fakultetu/Prosecnu ocenu svih studenata/Ukupan broj ocena
        //- GridView-i za Ukupan broj ocena i Broj studenata po odseku
        /*public int BrojStudenataUFakultetu(int fakultetId)
        {
            string query = "SELECT COUNT(*) as TrenutniBrojStudenata FROM Studenti WHERE fakultet_id is not null";
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@fakultet_id", fakultetId);

                object result = cmd.ExecuteScalar();

                if (result != null)
                {
                    int brojStudenata;
                    if (int.TryParse(result.ToString(), out brojStudenata))
                    {
                        return brojStudenata;
                    }
                }

                // ako ne konvertuje ili je rezultat NULL, vratice neku podrazumevanu vrednost ili -1 kao gresku
                return -1;
            }
        }*/
        public double ProsecnaOcenaSvihStudenata(int odabraniStudentId)
        {
            string query = "SELECT AVG(ocena) as prosecna_ocena_svih_studenata FROM Prijave WHERE student_id is not null AND ocena IS NOT NULL; ";
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@student_id", odabraniStudentId);

                object result = cmd.ExecuteScalar();

                if (result != null && result != DBNull.Value)
                {
                    return Convert.ToDouble(result);
                }
                else
                {
                    // Ako nema podataka ili je prosecna ocena NULL, vraca neku drugu vrednost(ili gresku)
                    return 0.0;
                }
            }
        }
        public int UkupanBrojOcena(int studentId)
        {
            string query = "SELECT COUNT(*) as ukupan_broj_svih_ocena FROM Prijave WHERE student_id is not null";

            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@student_id", studentId);

                object result = cmd.ExecuteScalar();

                if (result != null)
                {
                    return Convert.ToInt32(result);
                }
                else
                {
                    // Ako upit ne vrati rezultat, vraćamo nulu ili neku drugu vrednost(gresku)
                    return 0;
                }
            }
        }
        public DataTable BrojStudenataPoOdseku()
        {
            string query = "SELECT Naziv, f.id AS ID, f.odsek AS Odsek, COUNT(*) AS BrojStudenataPoOdseku FROM Fakulteti f INNER JOIN Studenti s ON f.id = s.fakultet_id GROUP BY Naziv, f.id, f.odsek";

            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                MySqlCommand cmd = new MySqlCommand(query, connection);

                using (MySqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable dt = new DataTable();
                    dt.Load(reader);

                    return dt;
                }
            }
        }
        public DataTable BrojPrijavaPoStudentu()
        {
            DataTable dt = new DataTable();

            string query = "SELECT s.id as ID, CONCAT(s.ime, ' ', s.prezime) AS ImeIPrezime, COUNT(*) AS BrojPrijava FROM Studenti s INNER JOIN Prijave pr ON s.id = pr.student_id GROUP BY s.id, CONCAT(s.ime, ' ', s.prezime)";

            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                MySqlCommand cmd = new MySqlCommand(query, connection);

                using (MySqlDataReader reader = cmd.ExecuteReader())
                {
                    dt.Load(reader);
                }
            }

            return dt;
        }

        public void DodajPodatkeUBazu(string naziv, int ocena, string labVezbe, int kol1, int kol2, DateTime datumPrijave, string ime, string prezime, string brInd)
        {
            try
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();

                    // Počinjemo transakciju kako bismo bili sigurni da će se podaci u svim tabelama ažurirati zajedno.
                    using (MySqlTransaction transaction = connection.BeginTransaction())
                    {
                        // Prvo unesemo podatke u tabelu "studenti"

                        string studentInsertQuery = "INSERT INTO studenti (ime, prezime, brInd) VALUES (@ime, @prezime, @brInd)";
                        using (MySqlCommand studentCmd = new MySqlCommand(studentInsertQuery, connection))
                        {
                            studentCmd.Parameters.AddWithValue("@ime", ime);
                            studentCmd.Parameters.AddWithValue("@prezime", prezime);
                            studentCmd.Parameters.AddWithValue("@brInd", brInd);
                            studentCmd.ExecuteNonQuery();
                        }

                        // Zatim unesemo podatke u tabelu "predmeti"
                        string predmetInsertQuery = "INSERT INTO predmeti (naziv) VALUES (@naziv)";
                        using (MySqlCommand predmetCmd = new MySqlCommand(predmetInsertQuery, connection))
                        {
                            predmetCmd.Parameters.AddWithValue("@naziv", naziv);
                            predmetCmd.ExecuteNonQuery();
                        }

                        // Naposletku, unesemo podatke u tabelu "prijave"
                        string prijaveInsertQuery = "INSERT INTO prijave (student_id, predmet_id, ocena, labVezbe, kol_1, kol_2, datumPrijave) " +
                                                    "VALUES (@student_id, @predmet_id, @ocena, @labVezbe, @kol1, @kol2, @datumPrijave)";
                        using (MySqlCommand prijaveCmd = new MySqlCommand(prijaveInsertQuery, connection))
                        {
                            prijaveCmd.Parameters.AddWithValue("@ocena", ocena);
                            prijaveCmd.Parameters.AddWithValue("@labVezbe", labVezbe);
                            prijaveCmd.Parameters.AddWithValue("@kol1", kol1);
                            prijaveCmd.Parameters.AddWithValue("@kol2", kol2);
                            prijaveCmd.Parameters.AddWithValue("@datumPrijave", datumPrijave);
                            prijaveCmd.ExecuteNonQuery();
                        }

                        transaction.Commit();
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Greška pri unosu podataka u bazu: " + ex.Message);
                Console.WriteLine("Stack trace: " + ex.StackTrace);
            }
        }

        public List<string> GetPredmetDetailsById(int predmetId)
        {
            List<string> details = new List<string>();

            using (MySqlConnection con = new MySqlConnection(connectionString))
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM predmeti WHERE id = @predmetId", con))
                {
                    cmd.Parameters.AddWithValue("@predmetId", predmetId);

                    con.Open();

                    using (MySqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            details.Add($"ID: {reader["id"]}");
                            details.Add($"Naziv: {reader["naziv"]}");
                            details.Add($"Profesor: {reader["profesor"]}");
                            // Dodajte ostale detalje prema potrebi
                        }
                        else
                        {
                            Debug.WriteLine("No data found for the selected Predmet ID.");
                        }
                            
                    }
                }
            }

            return details;
        }
        public List<string> GetStudentDetailsById(int studentId)
        {
            List<string> details = new List<string>();

            using (MySqlConnection con = new MySqlConnection(connectionString))
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM studenti WHERE id = @studentId", con))
                {
                    cmd.Parameters.AddWithValue("@studentId", studentId);

                    con.Open();

                    using (MySqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            details.Add($"ID: {reader["id"]}");
                            details.Add($"Ime: {reader["ime"]}");
                            details.Add($"Prezime: {reader["prezime"]}");
                            details.Add($"Broj Indeksa: {reader["brInd"]}");
                            // Dodajte ostale detalje prema potrebi
                        }
                        else
                        {
                            Debug.WriteLine("No data found for the selected Predmet ID.");
                        }

                    }
                }
            }

            return details;
        }
        public DataTable PrikaziSveFakultete()
        {
            try
            {
                using (MySqlConnection con = new MySqlConnection(connectionString))
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("prikazi_sve_fakultete", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    con.Close();

                    return dt;
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Greška prilikom prikazivanja fakulteta: " + ex.Message);
            }
        }
        public int BrojStudenataNaFakultetu(int fakultetId)
        {
            try
            {
                using (MySqlConnection con = new MySqlConnection(connectionString))
                {
                    con.Open();

                    using (MySqlCommand cmd = new MySqlCommand("broj_studenata_na_fakultetu2", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        // Dodajte ulazni parametar
                        cmd.Parameters.AddWithValue("@fakultet_id", fakultetId);

                        // Dodajte izlazni parametar
                        MySqlParameter outParam = new MySqlParameter("@broj_studenata", MySqlDbType.Int32);
                        outParam.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(outParam);

                        cmd.ExecuteNonQuery();

                        // Dobijanje vrednosti izlaznog parametra
                        int brojStudenata = Convert.ToInt32(cmd.Parameters["@broj_studenata"].Value);

                        return brojStudenata;
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Greška prilikom izvršavanja stored procedure: " + ex.Message);
            }
        }
        public void PrikaziOceneStudenta(int studentId, out decimal prosecnaOcena, ref int ukupanBrojOcena)
        {
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();

                using (MySqlCommand cmd = new MySqlCommand("prikazi_ocene_studenta", connection))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    // Dodajte parametre stored procedure
                    cmd.Parameters.AddWithValue("@student_id", studentId);
                    cmd.Parameters.Add("@prosecna_ocena", MySqlDbType.Decimal).Direction = ParameterDirection.Output;
                    cmd.Parameters.Add("@ukupan_broj_ocena", MySqlDbType.Int32).Direction = ParameterDirection.InputOutput;

                    // Izvršite stored proceduru
                    cmd.ExecuteNonQuery();

                    // Dobijanje rezultata stored procedure
                    prosecnaOcena = Convert.ToDecimal(cmd.Parameters["@prosecna_ocena"].Value);
                    ukupanBrojOcena = Convert.ToInt32(cmd.Parameters["@ukupan_broj_ocena"].Value);
                }
            }
        }

        public DataTable PrikaziBrojStudenataPoOdseku()
        {
            DataTable resultTable = new DataTable();

            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();

                using (MySqlCommand command = new MySqlCommand("SELECT * FROM BrojStudenataPoOdseku", connection))
                {
                    using (MySqlDataAdapter adapter = new MySqlDataAdapter(command))
                    {
                        adapter.Fill(resultTable);
                    }
                }
            }

            return resultTable;
        }
        public DataTable PrikaziBrojPrijavaPoIspitu()
        {
            DataTable resultTable = new DataTable();

            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();

                using (MySqlCommand command = new MySqlCommand("SELECT * FROM brojprijavapostudentu", connection))
                {
                    using (MySqlDataAdapter adapter = new MySqlDataAdapter(command))
                    {
                        adapter.Fill(resultTable);
                    }
                }
            }

            return resultTable;
        }
        public string PozoviFunkcijuStudentiKojiSuPoloziliPredmet(string nazivPredmeta)
        {
            string rezultat = string.Empty;

            // Kreiraj SQL upit sa pozivom funkcije
            string sqlUpit = $"SELECT studenti_koji_su_polozili_predmet('{nazivPredmeta}')";

            // Kreiraj SqlConnection i SqlCommand
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                using (MySqlCommand command = new MySqlCommand(sqlUpit, connection))
                {
                    try
                    {
                        // Otvori konekciju
                        connection.Open();

                        // Izvrši SQL upit
                        object result = command.ExecuteScalar();

                        // Ako postoji rezultat, konvertuj ga u string
                        if (result != null)
                        {
                            rezultat = result.ToString();
                        }
                    }
                    catch (Exception ex)
                    {
                        // Obradi greške ako se pojave
                        Console.WriteLine($"Greška prilikom izvršavanja SQL upita: {ex.Message}");
                    }
                }
            }

            return rezultat;
        }
    }
}










