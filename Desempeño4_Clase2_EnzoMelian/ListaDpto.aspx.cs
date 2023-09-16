using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Desempeño4_Clase2_EnzoMelian
{
    public partial class ListaDpto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                StreamReader streamReader = new StreamReader(Server.MapPath(".") + "/departamentos.txt");
                string[] lines = (streamReader.ReadToEnd()).Split('\n');
                streamReader.Close();
                int lineCount = 0;
                int lineReg = 0;
                foreach (string line in lines)
                {
                    lineCount++;
                    if (lineCount % 8 == 0)
                    {
                        lineReg++;
                        ListItem item = new ListItem();
                        item.Text = lineReg.ToString();
                        item.Value = lineReg.ToString();
                        DropDownList1.Items.Add(item);
                    }
                }
                
            }
        }
    

        protected void btnLDAtras_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            LabelDptos.Text = string.Empty;
            StreamReader streamReader = new StreamReader(Server.MapPath(".") + "/departamentos.txt");
            string[] lines = (streamReader.ReadToEnd()).Split('\n');
            streamReader.Close();
            int opcion = int.Parse(DropDownList1.SelectedItem.Text);
            int lineCount = 0;
            foreach (string line in lines)
            {
                lineCount++;
                if (lineCount == (opcion * 8))
                {
                    LabelDptos.Text += $"{lines[lineCount - 8].ToString()} ";
                    LabelDptos.Text += $"{lines[lineCount - 7].ToString()} ";
                    LabelDptos.Text += $"{lines[lineCount - 6].ToString()} ";
                    LabelDptos.Text += $"{lines[lineCount - 5].ToString()} ";
                    LabelDptos.Text += $"{lines[lineCount - 4].ToString()} ";
                    LabelDptos.Text += $"{lines[lineCount - 3].ToString()} ";
                    LabelDptos.Text += $"{lines[lineCount - 2].ToString()} ";
                    LabelDptos.Text += $"{lines[lineCount - 1].ToString()} ";
                }
            }
        }
    }
}