using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ObjetosDeNegocio;

namespace BLL
{
    public class AplicacionBLL
    {
        public static int insertTabla(Tabla tablaAInsertar)
        {
            var res = 0;
            res = DAL.AplicacionDAL.addTabla(tablaAInsertar);
            return res;
        }

        public static List<Tabla> getTabla(int idtabla)
        {
            var res = new List<Tabla>();
            res = DAL.AplicacionDAL.getTabla(idtabla);
            return res;
        }
    }
}
