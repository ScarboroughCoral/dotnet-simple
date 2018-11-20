<%@ Page Language="C#" ValidateRequest="false"  Debug="true" Trace="false" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default"  %>

<%@ Register Src="~/header.ascx" TagPrefix="uc1" TagName="header" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:header runat="server" ID="header" />
            <asp:CheckBoxList ID="ListBenefitsCheckBoxList" runat="server">
            </asp:CheckBoxList>
            <br />
            <asp:Button ID="submitButton" runat="server" Text="Submit" OnClientClick="SubmitButton_Click" OnClick="SubmitButton_Click" />
            <br />
            <br />
            <asp:Label ID="sectionsLabel" runat="server" Text="Selected items"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
