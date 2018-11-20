<%@ Page Title="" Language="C#"   Debug="true" MasterPageFile="~/benefitsMaster.master" AutoEventWireup="true" CodeFile="life.aspx.cs" Inherits="life" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label5" runat="server" Font-Size="Larger" Text="Life Insurance Application"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label7" runat="server" Text="Name:"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameTextBox" ErrorMessage="name is required!" ForeColor="#FF5050"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Text="Proof of good health appointment"></asp:Label>
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
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Coverage:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="coverageTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="coverageTextBox" ErrorMessage="coverage is required" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="coverageTextBox" ErrorMessage="coverage is invalid" ForeColor="#FF9900" ValidationExpression="\d+(\.\d{2})?"></asp:RegularExpressionValidator>
            </td>
            <td rowspan="4">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="shortTermCheckBox" runat="server" Text="Short-term disability" />
            </td>
            <td>
                <asp:CheckBox ID="longTermCheckBox" runat="server" Text="Long-term disability" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF0066" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="On_Save_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:Label ID="pageValidatedInfo" runat="server"></asp:Label>
    <br />

</asp:Content>

