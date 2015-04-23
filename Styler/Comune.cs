using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CsvHelper.Configuration;
using CsvHelper.TypeConversion;

namespace vF3D
{
    public class Comune
    {
        public string CodiceIstat { get; set; }
        public string Denominazione { get; set; }
    }

    public sealed class ComuneMapping: CsvClassMap<Comune>
    {
        public ComuneMapping()
        {
            Map(m => m.CodiceIstat).Name("Codice Istat del Comune " + (char)10 + "(formato numerico)");
            Map(m => m.Denominazione).Name("Solo denominazione in italiano");
        }
    }
}
