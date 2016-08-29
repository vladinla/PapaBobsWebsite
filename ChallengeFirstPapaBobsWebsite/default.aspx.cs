using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengeFirstPapaBobsWebsite
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void resultButton_Click(object sender, EventArgs e)
        {
            //SIZE
            double total = 0;

            if (sizeSRadioButton.Checked)
            {
                total += 10;
            }
            else if (sizeMRadioButton.Checked)
            {
                total += 13;
            }
            if (sizeLRadioButton.Checked)
            {
                total += 16;
            }

            //CRUST
            if (thincrustRadioButton.Checked)
            {
                total += 0;
            }
            if (deepdishRadioButton.Checked)
            {
                total += 2;
            }

            //TOPPINGS
            if (pepperoniCheckBox.Checked)
            {
                total += 1.50;
            }
            if (onionsCheckBox.Checked)
            {
                total += 0.75;
            }
            if (greenpeppersCheckBox.Checked)
            {
                total += 0.50;
            }
            if (redpeppersCheckBox.Checked)
            {
                total += 0.75;
            }
            if (anchoviesCheckBox.Checked)
            {
                total += 2;
            }

            //TOPPINGS Discount
            if (( pepperoniCheckBox.Checked && greenpeppersCheckBox.Checked && anchoviesCheckBox.Checked) || (pepperoniCheckBox.Checked && redpeppersCheckBox.Checked && onionsCheckBox.Checked))
            {
                total -= 2;
            }

            //TOTAL
            resultLabel.Text = "$" + total.ToString();
        }
    }
}