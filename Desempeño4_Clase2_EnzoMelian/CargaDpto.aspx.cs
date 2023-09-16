using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Desempeño4_Clase2_EnzoMelian
{
    public partial class CargaDpto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCDAtras_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void btnCDCarga_Click(object sender, EventArgs e)
        {
            StreamWriter streamWriter = new StreamWriter($"{Server.MapPath(".")}/departamentos.txt", true);
            streamWriter.WriteLine("Dirección: " + tBoxDir.Text);
            streamWriter.WriteLine(" - Planta: " + tBoxPln.Text);
            streamWriter.WriteLine(" - Número: " + tBoxNum.Text);
            streamWriter.WriteLine(" - Nombre del propietario: " + tBoxNomPr.Text);
            streamWriter.WriteLine(" - Apellido del propietario: " + tBoxApePr.Text);
            streamWriter.WriteLine(" - ¿Está alquilado? :" + rdBtnAlq.SelectedItem.Text);

            int alq;
            alq = rdBtnAlq.SelectedIndex;
            if (alq == 0)
            {
            tBoxNomInq.Text = ("");
            tBoxApeInq.Text = ("");
            streamWriter.WriteLine(tBoxNomInq.Text);
            streamWriter.WriteLine(tBoxApeInq.Text);
            }
            else 
            { 
            streamWriter.WriteLine(" - Nombre del inquilino: " + tBoxNomInq.Text);
            streamWriter.WriteLine(" - Apellido del inquilino: " + tBoxApeInq.Text);
            }

            streamWriter.Close();
            LabelCarga.Text = $"Agregado, ruta de departamentos.txt {Server.MapPath(".")}.";
        }

    }
}