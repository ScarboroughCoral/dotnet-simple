<%@ Page Language="C#" AutoEventWireup="true" CodeFile="doctors.aspx.cs" Inherits="doctors" %>

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
    <p>
        <asp:ScriptManager ID="doctorsScriptManager" runat="server">
        </asp:ScriptManager>
        <asp:Label ID="specialtiesLabel" runat="server" Text="Specialties"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="City"></asp:Label>
        <asp:DropDownList ID="citiesList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="City_Selected_Index_Changed">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="Submit_Clicked" />
    </p>
    <p>
        &nbsp;</p>
        <asp:UpdatePanel ID="specialtiesUpdatePanel" runat="server">
            <ContentTemplate>
                <asp:ListBox ID="specialtiesListBox" runat="server"></asp:ListBox>
            </ContentTemplate>
        </asp:UpdatePanel>
    <p>
        <asp:Label ID="Label2" runat="server" style="font-weight: 700;font-size: large" 
            Text="Doctors"></asp:Label>
    </p>
        <asp:UpdatePanel ID="doctorsUpdatePanel" runat="server">
            <ContentTemplate>
                <asp:GridView ID="doctorsGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="dr_id" EmptyDataText="没有可显示的数据记录。" AllowPaging="True" OnPageIndexChanged="Page_Index_Changed" OnPageIndexChanging="Page_Index_Changing" PageSize="5" EnablePersistedSelection="True" OnSelectedIndexChanged="Doctors_Selected_Index_Changed">
                    <Columns>
                        <asp:BoundField DataField="dr_id" HeaderText="dr_id" ReadOnly="True" SortExpression="dr_id" />
                        <asp:BoundField DataField="dr_lname" HeaderText="dr_lname" SortExpression="dr_lname" />
                        <asp:BoundField DataField="dr_fname" HeaderText="dr_fname" SortExpression="dr_fname" />
                        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                        <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                        <asp:BoundField DataField="zip" HeaderText="zip" SortExpression="zip" />
                        <asp:CommandField HeaderText="Select" ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:SqlDataSource ID="doctorsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:doctorsConnectionString1 %>" SelectCommand="SELECT * FROM [doctors]"></asp:SqlDataSource>
    </form>
</body>
</html>
