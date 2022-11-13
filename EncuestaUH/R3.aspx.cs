using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EncuestaUH
{
    public partial class R3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LlenarGrid();

        }

        protected void Salvar_Click(object sender, EventArgs e)
        {
            Persona.R3 = DropDownList1.SelectedValue;
            Label1.Text = "Cedula: " + Persona.cedula + "Nombre: " + Persona.nombre + "Genero: " + Persona.Genero + "R1: " + Persona.R1 + "R2: " + Persona.R2 + "R3: " + Persona.R3;
            salvar();
            Response.Redirect("R3.aspx");
        }

        protected void biniciar_Click(object sender, EventArgs e)
        {

            Response.Redirect("inicio.aspx");
        }

        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["EncuestasUHConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("select r.id, p.nombre, r.cedulaR, r.r1, r.r2, r.r3 " +
                                                       "from Respuestas r " +
                                                       "inner join Persona p on r.cedulaR = p.cedulaP"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }



        protected void salvar()
        {

            String s = System.Configuration.ConfigurationManager.ConnectionStrings["EncuestasUHConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand(" INSERT INTO Persona VALUES('" + Persona.cedula + "', '" + Persona.nombre + "', '" + Persona.Genero + "')", conexion);
            comando.ExecuteNonQuery();
            conexion.Close();


            conexion.Open();
            comando = new SqlCommand(" INSERT INTO Respuestas VALUES('" + Persona.R1 + "', '" + Persona.R2 + "', '" + Persona.R3 + "')", conexion);
            comando.ExecuteNonQuery();
            conexion.Close();



            LlenarGrid();
        }



    }

}