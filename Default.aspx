<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="dbsfinalq2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student and Course Registration</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Student and Course Registration</h2>
        <table>
            <tr>
                <td>Student ID:</td>
                <td>
                    <asp:TextBox ID="StudentIDText" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Student Name:</td>
                <td>
                    <asp:TextBox ID="StudentNameText" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Course ID:</td>
                <td>
                    <asp:TextBox ID="CourseIDText" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Course Name:</td>
                <td>
                    <asp:TextBox ID="CourseNameText" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Instructor:</td>
                <td>
                    <asp:TextBox ID="InstructorText" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Department:</td>
                <td>
                    <asp:TextBox ID="DepartmentText" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Credit Hours:</td>
                <td>
                    <asp:TextBox ID="CreditHoursText" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="lblMessage" runat="server" Text="" Style="color: green"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
