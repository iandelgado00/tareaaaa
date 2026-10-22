using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class inicio : System.Web.UI.Page
    {
        float num1 = 0;
        float num2 = 0;
        float resultado = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void menudesplegable()
        {
            // Validamos que los campos no estén vacíos antes de convertir
            if (float.TryParse(tn1.Text, out num1) && float.TryParse(tn2.Text, out num2))
            {
                switch (doperacion.SelectedIndex)
                {
                    case 0: // Suma
                        resultado = num1 + num2;
                        break;
                    case 1: // Resta
                        resultado = num1 - num2;
                        break;
                    case 2: // División
                        if (num2 != 0)
                        {
                            resultado = num1 / num2;
                        }
                        else
                        {
                            lresultado.Text = "Error: Div / 0";
                            return;
                        }
                        break;
                    case 3: // Multiplicación
                        resultado = num1 * num2;
                        break;
                    case 4: // Potencia 2 (num1 al cuadrado)
                        resultado = (float)Math.Pow(num1, 2);
                        break;
                    case 5: // Exponenciación (num1 elevado a num2)
                        resultado = (float)Math.Pow(num1, num2);
                        break;
                }

                lresultado.Text = resultado.ToString();
            }
            else
            {
                lresultado.Text = "Ingrese números válidos";
            }
        }

        protected void bresultado_Click(object sender, EventArgs e)
        {
            menudesplegable();
        }
    }
}