<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TipoutDatabase.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">Tipout Database</h1>
            <hr class="my-2" />
            <p>And now we'll all know who dosen't tip</p>
        </div>
    </div>
    <form id="form1" runat="server">
        <div class="container-fluid">

            <div class="form-row">
                <div class="form-group col-4">
                    <label for="date">Date</label>
                    <input type="date" class="form-control" id="date" />
                </div>
                <div class="form-group col-4"> 
                    <label for="userName">Your Name</label>
                    <input type="text" class="form-control" id="userName" />
                </div>
                <div class="form-group col-4"> 
                    <label for="DropDownList1">Your Job</label>
                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                        <asp:ListItem Value=""></asp:ListItem>
                        <asp:ListItem Value="FoodRunner"> Food Runner </asp:ListItem>
                        <asp:ListItem Value="Bartender"> Bartender </asp:ListItem>
                        <asp:ListItem Value="Busser"> Table Busser </asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col-4">
                    <label for="serverName">Server Name</label>
                    <input type="text" class="form-control" id="serverName" />
                </div> 
                <div class="form-group col-4">
                    <label for="serverNumber">Server Number</label>
                    <input type="number" max="20" min="0" class="form-control" id="serverNumber" placeholder="Use 0 for Bar" />
                    <%--<small id="emailHelp" class="form-text text-muted">(Use "0" for Bar)</small>--%>
                </div>
                <div class="form-group col-4">
                    <label for="TextBox4">Tipout Total</label>
                    <input type="text" class="form-control" id="total" />
                </div>
            </div>

             <div class="form-row">
                <div class="form-group col-lg-1">
                    <asp:Button ID="BtnFinish" CssClass="form-control btn btn-info" runat="server" Text="Finish" />
                </div>
                <div class="form-group col-lg-1">
                    <asp:Button ID="BtnAdd" CssClass="form-control btn btn-success" runat="server" Text="Add" />
                </div>
            </div>


        </div>
    </form>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>