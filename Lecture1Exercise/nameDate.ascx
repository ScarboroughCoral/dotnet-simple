<%@ Control Language="C#" AutoEventWireup="true" CodeFile="nameDate.ascx.cs" Inherits="nameDate" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<style type="text/css">
    .auto-style1{
        width:335px;
    }
    .auto-style2 {
        height: 41px;
    }
</style>
<table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label7" runat="server" Text="Name:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameTextBox" ErrorMessage="name is required!" ForeColor="#FF5050"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Birth Date:"></asp:Label>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td>
                <asp:TextBox ID="birthTextBox" runat="server"></asp:TextBox>
                <cc1:CalendarExtender ID="birthTextBox_CalendarExtender" runat="server" Format="yy/MM/dd" OnClientShown="dobCalendarShown" TargetControlID="birthTextBox">
                </cc1:CalendarExtender>
                <script type="text/javascript" language="javascript">
                    function dobCalendarShown(sender,args) {
                        sender._switchMode("years", true);
                    }
                </script>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="birthTextBox" ErrorMessage="birth date is required" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="BirthCompareValidator" runat="server" ControlToValidate="birthTextBox" ErrorMessage="birth date is invalid" ForeColor="#FF9900" Operator="DataTypeCheck" Type="Date" ></asp:CompareValidator>
            </td>
        </tr>
    </table>