using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace BLL
{
    public static class Utils
    {
        
        public static int ConvertirEntero(string texto)
        {
            int valor = 0;

            int.TryParse(texto, out valor);

            return valor;
        }
        public static float ConvertiFloat(string texto)
        {
            float valor = 0;

            float.TryParse(texto, out valor);

            return valor;
        }
    }
}
