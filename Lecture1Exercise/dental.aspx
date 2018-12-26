<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dental.aspx.cs" Inherits="dental" %>

<%@ Register src="header.ascx" tagname="header" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:header ID="header1" runat="server" />
    
    </div>
    <br />
    <br />
    <asp:Button ID="GetAllDentistsButton" runat="server" Text="Get All Dentists" 
        onclick="GetAllDentistsButton_Click" />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Postal Code:"></asp:Label>
&nbsp;<asp:TextBox ID="postalCodeTextBox" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="submitButton" runat="server" Text="Submit" 
        onclick="submitButton_Click" />
    <br />
    <br />
    <asp:GridView ID="dentistsGridView" runat="server">
    </asp:GridView>
    </form>
</body>
</html>
