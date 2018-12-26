<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prospectus.aspx.cs" Inherits="prospectus" %>
<%@ Register src="header.ascx" tagname="header" tagprefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <uc1:header ID="header1" runat="server" />
    <p>
        &nbsp;</p>
        <asp:Xml ID="prospectusXml" runat="server" TransformSource="~/prospectus_style.xsl"></asp:Xml>
        <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="retirement.aspx" 
        style="text-align: center">Back to retirement page</asp:HyperLink>
    </form>
</body>
</html>
