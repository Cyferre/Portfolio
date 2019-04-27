using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ObjetosDeNegocio;

namespace DAL
{
    public class AplicacionDAL
    {
        public static int addTabla(Tabla InsertarTabla)
        {
            var res = 0;
            var contexto = new AplicacionEntities();
            contexto.Tabla.Add(InsertarTabla);
            res = contexto.SaveChanges();

            return res;
            
        }

        public static List<Tabla> getTabla(int idtabla)
        {
            var res = new List<Tabla>();
            var contexto = new AplicacionEntities();
            res = contexto.Tabla.OrderBy(o => o.ID == idtabla).Take(idtabla).ToList();
            return res;
        }

    }
}
