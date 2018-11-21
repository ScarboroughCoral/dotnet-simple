<%@ Page Language="C#"   Debug="true" AutoEventWireup="true" CodeFile="medical.aspx.cs" Inherits="medical" %>

<%@ Register src="header.ascx" tagname="header" tagprefix="uc1" %>

<%@ Register src="nameDate.ascx" tagname="nameDate" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 53%;
        }
        .style2
        {
            width: 346px;
        }
    </style>
</head>
<body style="font-family: Arial, Helvetica, sans-serif;font-size: small">
    <form id="form1" runat="server">
    <div>
    
        &nbsp;<uc1:header ID="header1" runat="server" />

        <br />
    
    </div>
    <table class="style1">
        <tr>
            <td class="style2">
                <uc2:nameDate ID="nameDate1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
            <br />
                <asp:Label ID="Label1" runat="server" Text="Primary Care Physician:"></asp:Label>
                <asp:TextBox ID="doctorTextBox" runat="server" Width="117px"></asp:TextBox>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="doctors.aspx">Select a doctor</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
            <br />
                <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" />
                <asp:Label ID="Label2" runat="server" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
    </form>
</body></html>
