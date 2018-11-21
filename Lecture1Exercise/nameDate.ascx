<%@ Control Language="C#" AutoEventWireup="true" CodeFile="nameDate.ascx.cs" Inherits="nameDate" %>

<style type="text/css">
    .auto-style1{
        width:335px;
    }
</style>
<table class="auto-style1">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label7" runat="server" Text="Name:"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameTextBox" ErrorMessage="name is required!" ForeColor="#FF5050"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Birth Date:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="birthTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="birthTextBox" ErrorMessage="birth date is required" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="BirthCompareValidator" runat="server" ControlToValidate="birthTextBox" ErrorMessage="birth date is invalid" ForeColor="#FF9900" Operator="DataTypeCheck" Type="Date" ></asp:CompareValidator>
            </td>
        </tr>
    </table>