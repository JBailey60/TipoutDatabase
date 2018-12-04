<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TipoutDatabase.Login" %>

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
            <div class="container">             
                <div class="form-group row">
                    <div class="form-group col">
                        <asp:Calendar class="form-control" ID="Date" runat="server"></asp:Calendar>
                    </div>
                    <div class="form-group col">
                        <div class="form-group row">
                            <asp:DropDownList class="form-control" ID="InputName" runat="server" >

                            </asp:DropDownList>
                        </div>
                        <div class="form-group row">
                            <asp:RadioButtonList class="form-control" ID="ServerJob" runat="server">
                                <asp:ListItem value="value">Food Runner</asp:ListItem>
                                <asp:ListItem value="value">Bartender</asp:ListItem>
                                <asp:ListItem value="value">Server Assissant</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="form-group col-2">
                        <asp:Button class="btn btn-success form-control" ID="Continue" runat="server" Visible="true" Text="Continue" OnClick="Continue_Click" />
                    </div>
                </div>            
            </div>
     
            
        <div class="container" id="tipsRecieved" visible="false" runat="server">
            <div class="page-header" id="pageHeader"  runat="server">
                <h1>Tips Recieved</h1>
            </div>
            <div class="form-group row">
                <div class="form-group col-6">
                    <asp:Label ID="svrNameLbl" runat="server" Text="Sever Name"  >
                        <asp:DropDownList class="form-control" ID="svrName" runat="server" >

                        </asp:DropDownList>
                    </asp:Label>
                </div>
                <div class="form-group col-4">
                    <asp:Label ID="svrNumLbl" runat="server" Text="Sever Number" >
                        <asp:TextBox type="number" max="20" min="0" class="form-control" ID="svrNum" runat="server"  ></asp:TextBox>
                    </asp:Label>
                </div>    
            </div>
            <div class="form-group row">
                <div class="form-group col-6">
                    <asp:Label ID="totTipLbl" runat="server" Text="Total Tipout" >
                        <asp:TextBox type="money" class="form-control" ID="totTip" runat="server" ></asp:TextBox>
                    </asp:Label>
                </div>
                <div class="form-group col-2">
                    <asp:Button class="btn btn-danger form-control" ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click"  />
                </div>                
            </div>
        </div>

        <div class="container">
            <asp:Table class="col-12 table table-bordered table-striped form-control" ID="dataTable" visible="false" runat="server" >
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Server Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Server Number</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Total Tipout</asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
           
            <div class="form-group col-2">
                    <asp:Button class="btn btn-success form-control" ID="btnFsh" visible="false" runat="server" Text="Finish"  OnClick="btnFsh_Click" />
            </div>
        </div>
    </form>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
