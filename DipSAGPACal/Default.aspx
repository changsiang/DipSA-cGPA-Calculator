<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DipSAGPACal.Default" %>

<!DOCTYPE html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GPA Calculator for Graduate Diploma in System Analysis</title>
</head>
<body>
    <form id="form1" runat="server">

        <div class="w3-container w3-content w3-padding-64" style="max-width: 800px" id="contact">
            <table style="width: 100%">
                <tr>
                    <td colspan="2">
                        <div class="w3-center">
                            <p class="w3-xlarge w3-serif">
                                <i>"Enjoy your short break before the AD Project..."</i>
                            </p>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="w3-center">
                        <h1>NUS-ISS Diploma in System Analysis cGPA calculator</h1>
                    </td>
                </tr>
                <tr>
                    <td><b>Module:</b></td>
                    <td><b>Grade</b></td>
                </tr>
                <tr>
                    <td>SA4101: System Analysis and Design:</td>
                    <td>
                        <asp:DropDownList ID="Ddl4101" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td>SA4102: Programming and .NET Development:</td>
                    <td>
                        <asp:DropDownList ID="Ddl4102" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td>SA4104: Software Engineering:</td>
                    <td>
                        <asp:DropDownList ID="Ddl4104" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td>SA4105: Web Application Development:</td>
                    <td>
                        <asp:DropDownList ID="Ddl4105" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td>SA4108: Mobile Application Development</td>
                    <td>
                        <asp:DropDownList ID="Ddl4108" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td>Application Development Project:</td>
                    <td>
                        <asp:DropDownList ID="DdlAd" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td>Internship:</td>
                    <td>
                        <asp:DropDownList ID="DdlIntern" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Compute" OnClick="Button1_Click" /></td>
                    <td>
                        <asp:Label ID="LblGPA" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <h4><b>Some good reading material:</b></h4>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><a href="http://cs.stanford.edu/people/karpathy/advice.html">Do Well for Your Course</a> by <a href="http://cs.stanford.edu/people/karpathy/">Andrej Karpathy</a></td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>

