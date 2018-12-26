<%@ Page Language="C#" AutoEventWireup="true" CodeFile="nestedData.aspx.cs" Inherits="nestedData" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        The result will be in the file Output.xml...    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:doctorsConnectionString1 %>" 
        DeleteCommand="DELETE FROM [doctors] WHERE [dr_id] = @dr_id" 
        InsertCommand="INSERT INTO [doctors] ([dr_id], [dr_lname], [dr_fname], [phone], [address], [city], [state], [zip]) VALUES (@dr_id, @dr_lname, @dr_fname, @phone, @address, @city, @state, @zip)" 
        ProviderName="<%$ ConnectionStrings:doctorsConnectionString1.ProviderName %>" 
        SelectCommand="SELECT [dr_id], [dr_lname], [dr_fname], [phone], [address], [city], [state], [zip] FROM [doctors]" 
        UpdateCommand="UPDATE [doctors] SET [dr_lname] = @dr_lname, [dr_fname] = @dr_fname, [phone] = @phone, [address] = @address, [city] = @city, [state] = @state, [zip] = @zip WHERE [dr_id] = @dr_id">
        <DeleteParameters>
            <asp:parameter Name="dr_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:parameter Name="dr_id" Type="String" />
            <asp:parameter Name="dr_lname" Type="String" />
            <asp:parameter Name="dr_fname" Type="String" />
            <asp:parameter Name="phone" Type="String" />
            <asp:parameter Name="address" Type="String" />
            <asp:parameter Name="city" Type="String" />
            <asp:parameter Name="state" Type="String" />
            <asp:parameter Name="zip" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:parameter Name="dr_lname" Type="String" />
            <asp:parameter Name="dr_fname" Type="String" />
            <asp:parameter Name="phone" Type="String" />
            <asp:parameter Name="address" Type="String" />
            <asp:parameter Name="city" Type="String" />
            <asp:parameter Name="state" Type="String" />
            <asp:parameter Name="zip" Type="String" />
            <asp:parameter Name="dr_id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:doctorsConnectionString1 %>" 
        DeleteCommand="DELETE FROM [drspecialties] WHERE [dr_id] = @dr_id AND [specialty_id] = @specialty_id" 
        InsertCommand="INSERT INTO [drspecialties] ([dr_id], [specialty_id]) VALUES (@dr_id, @specialty_id)" 
        ProviderName="<%$ ConnectionStrings:doctorsConnectionString1.ProviderName %>" 
        SelectCommand="SELECT [dr_id], [specialty_id] FROM [drspecialties]">
        <DeleteParameters>
            <asp:parameter Name="dr_id" Type="String" />
            <asp:parameter Name="specialty_id" Type="Int16" />
        </DeleteParameters>
        <InsertParameters>
            <asp:parameter Name="dr_id" Type="String" />
            <asp:parameter Name="specialty_id" Type="Int16" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:doctorsConnectionString1 %>" 
        DeleteCommand="DELETE FROM [specialties] WHERE [spec_id] = @spec_id" 
        InsertCommand="INSERT INTO [specialties] ([spec_id], [specialty]) VALUES (@spec_id, @specialty)" 
        ProviderName="<%$ ConnectionStrings:doctorsConnectionString1.ProviderName %>" 
        SelectCommand="SELECT [spec_id], [specialty] FROM [specialties]" 
        UpdateCommand="UPDATE [specialties] SET [specialty] = @specialty WHERE [spec_id] = @spec_id">
        <DeleteParameters>
            <asp:parameter Name="spec_id" Type="Int16" />
        </DeleteParameters>
        <InsertParameters>
            <asp:parameter Name="spec_id" Type="Int16" />
            <asp:parameter Name="specialty" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:parameter Name="specialty" Type="String" />
            <asp:parameter Name="spec_id" Type="Int16" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
