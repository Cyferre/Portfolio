using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ObjetosDeNegocio;


namespace Portfolio
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            using (AplicacionEntities contexto = new AplicacionEntities())
            {
                try { 
                contexto.Database.Connection.Open();                                     
                // Se crea una nueva instancia para cargar los datos.
                Tabla tabla = new Tabla();

                tabla.ID = int.Parse(TextBox1.Text);
                tabla.Nombre = TextBox2.Text;
                tabla.DNI = int.Parse(TextBox3.Text);
                tabla.Edad = byte.Parse(TextBox4.Text);

                // Se agregan los datos al contexto y se guardan los cambios.
                contexto.Tabla.Add(tabla);
                contexto.SaveChanges();
                }
                catch
                {
                    throw new Exception("Ha ocurrido un error, ID repetida");
                }
                finally
                {
                    try
                    {
                        contexto.Database.Connection.Close();
                    }
                    catch
                    {
                        throw new Exception("La coneccion esta cerrada");
                        
                    }
                }
            }

        }

    }
}