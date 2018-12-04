using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TipoutDatabase
{
    public partial class Login : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            // I want to know if this page is being rendered for the very first
            // time (not Page.IsPostBack), or if the page is simply being posted back
            // in response to something occuring with the form.

            List<ServersTable> servers = new List<ServersTable>();

            // If this is the first time the page is rendered then load the 
            // servers data from the database. We get all of the servers from the 
            // database and then save that data as a list to "session state."
            if (!Page.IsPostBack)
            {
                using (var db = new Tipout())
                {
                    var serversList = db.ServersTable
                        .OrderBy(q => q.NameLast)
                        .Select(q => new
                        {
                            Item = q.NameLast + ", " + q.NameFirst,
                            Value = q.ID
                        })
                        .ToList();

                    Session["servers"] = serversList;
                }
            }

            // Whether the page is being loaded for the very first time or any other
            // time after some response to a control on the form we need to reload
            // the drop down list control. We are going to reload it from 
            // session state.

            svrName.DataTextField = "Item";
            svrName.DataValueField = "Value";
            svrName.DataSource = Session["servers"];
            svrName.DataBind();
            svrName.SelectedIndex = -1;

            InputName.DataTextField = "Item";
            InputName.DataValueField = "Value";
            InputName.DataSource = Session["servers"];
            InputName.DataBind();
            InputName.SelectedIndex = -1;
        }

        protected void Continue_Click(object sender, EventArgs e)
        {
            tipsRecieved.Visible = true;
            Continue.Visible = false;
        }

        protected void btnFsh_Click(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            TableRow tRow = new TableRow();
            TableCell tCell = new TableCell();
            TableCell tCell1 = new TableCell();
            TableCell tCell2 = new TableCell();

            dataTable.Visible = true;
            btnFsh.Visible = true;

            tCell.Text = svrName.SelectedValue.ToString();
            tRow.Cells.Add(tCell);

            tCell1.Text = svrNum.Text;
            tRow.Cells.Add(tCell1);

            tCell2.Text = totTip.Text;
            tRow.Cells.Add(tCell2);

            dataTable.Rows.Add(tRow);

            totTip.Text = "";
            svrNum.Text = "";        }
    }
}