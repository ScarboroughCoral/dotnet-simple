<%@ Page Language="C#" AutoEventWireup="true" CodeFile="retirement.aspx.cs" Inherits="retirement" %>

<%@ Register src="header.ascx" tagname="header" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            text-align: left;
            font-size: x-large;
        }
        .style2
        {
            text-align: center;
            font-size: x-large;
            font-weight: bold;
        }
    </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div class="style1">
    
        <uc1:header ID="header1" runat="server" />
    
    </div>
    <p>
        &nbsp;</p>
    <p class="style2">
        Retirement</p>
    <p>
        <asp:GridView ID="retirementGridView" runat="server" 
            AutoGenerateColumns="False" BorderColor="White" BorderStyle="Groove" 
            CellPadding="4" ForeColor="#333333" GridLines="None" style="text-align: center">
            <footerstyle backcolor="#1C5E55" font-bold="True" forecolor="White" />
            <rowstyle backcolor="#E3EAEB" />
            <columns>
                <asp:boundfield DataField="name" HeaderText="Name"></asp:boundfield>
                <asp:hyperlinkfield DataNavigateUrlFields="Prospectus" 
                    DataNavigateUrlFormatString="prospectus.aspx?ProspID={0}" 
                    HeaderText="Link to  prospectus" Text="Prospectus"></asp:hyperlinkfield>
            </columns>
            <pagerstyle backcolor="#666666" forecolor="White" horizontalalign="Center" />
            <emptydatatemplate>
                Name
            </emptydatatemplate>
            <selectedrowstyle backcolor="#C5BBAF" font-bold="True" forecolor="#333333" />
            <headerstyle backcolor="#1C5E55" font-bold="True" forecolor="White" />
            <editrowstyle backcolor="#7C6F57" />
            <alternatingrowstyle backcolor="White" />
        </asp:GridView>
    </p>
    </form>
</body>
</html>
