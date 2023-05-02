 <%@ Page Title="" Language="C#" MasterPageFile="~/Client/Webforms/ClientMaster.master" AutoEventWireup="true" CodeFile="Bill.aspx.cs" Inherits="Client_Webforms_Bill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="txt" style="width:100%;">
        <tr>
            <td>
            <table style="width:100%">
                <tr>
                    <td style="width:20%"></td>
                    <td>
               

            
            <table style="width:100%;border-style:solid;">
        <tr>
            <td style="text-align:center">
                The amount to be paid is 
            </td>
            <td style="text-align:center">
                :
            </td>
            <td style="text-align:center">
                <asp:Label ID="lblErrMsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align:center">
                <asp:Label ID="lblErrMsg2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
    
                <asp:Button ID="Button1" runat="server" Text="Confirm" CssClass="btn" OnClick="btnconfirm_Click" style="margin-left: 425px"/>
            </td>
        
        
            <td>
    
                <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="btn" OnClick="btncancel_Click"/>
            </td>
        </tr>
                </table>
                </td>
            </tr>
             </table>

            </td>

        </tr>
    </table>
</asp:Content>

