using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace test1
{
    public class Prijave
    {
        public string Naziv { get; set; }
        public int Ocena { get; set; }
        public string LabVezbe { get; set; }
        public int Kol1 { get; set; }
        public int Kol2 { get; set; }
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime DatumPrijave { get; set; }
        public string Ime { get; set; }
        public string Prezime { get; set; }
        public string BrInd { get; set; }
    }
}