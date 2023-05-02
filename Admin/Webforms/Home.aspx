<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Webforms/AdminMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Admin_Webforms_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table style="width:100%">
        
        <tr style="background-color:darkturquoise;" >
            <td style="text-align:left; vertical-align:middle; color:blue; width:370px;" class="text">
                The Total Number of Vistors : 
            </td>
            <td class="text" style="text-align:left; vertical-align:middle;">
                <asp:Label ID="lblTotVisitors" runat="server" ForeColor="blue"></asp:Label>
            </td>
        </tr>
        <tr style="background-color:salmon;" >
            <td style="color:blue; width:370px;text-align:left; vertical-align:middle;" class="text">
                The Total Number of Active Visitors : 
            </td>
            <td style="text-align:left; vertical-align:middle;" class="text">
                <asp:Label ID="lblTotActUsers" runat="server" ForeColor="blue"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

