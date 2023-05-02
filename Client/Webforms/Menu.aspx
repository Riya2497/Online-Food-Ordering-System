<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Webforms/ClientMaster.master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Client_Webforms_Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%" class="txt">
        <tr>
            <td>
            <table style="width:100%">
                <tr>
                    <td colspan="2">
                        Burger
                    </td>
                </tr>
                <tr>
                    <td rowspan="2" style="width:140px;">
                        <asp:Image ID="mim1" runat="server" Width="200px" Height="103px" ImageUrl="~/Client/Images/burger 1.jpg" />
                    </td>
                    <td style="text-align:left">
                        price : 20
                    </td>
                </tr>
                <%--<tr>
                    <td style="text-align:left">
                        <asp:Label ID="lbl1" runat="server" Text="Quantity : 10"></asp:Label>
                    </td>
                </tr>--%>
                <tr>
                    <td>
                       qty: <asp:textbox  ID="txtbx1" runat="server" Text="1" ></asp:textbox>                      
                    </td>
                    <td style="text-align:left">
                    <%--<asp:Button ID="btn1" runat="server" Text="Add to Cart" OnClick="btn1_Click"/>--%>
                        <asp:CheckBox ID="Ck1" runat="server" OnCheckedChanged="Ck1_CheckedChanged" />
                        <asp:Label ID="lbl11" runat="server" Text="order"></asp:Label> 
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">
                        <asp:Label ID="lbler1" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
                </td>
         <td>
            <table style="width:100%">
                <tr>
                    <td colspan="2">
                        Chole
                    </td>
                    </tr>
                <tr>
                    <td rowspan="2" style="width:140px;">
                        <asp:Image ID="mimg2" runat="server" Width="200px" Height="100px" ImageUrl="~/Client/Images/chole 1.jpg" />
                    </td>
                    <td style="text-align:left">
                        price : 30
                    </td>
                </tr>
                <%--<tr>
                    <td>
                        <asp:Label ID="lbl2" runat="server" Text="Quantity : 10"></asp:Label>
                    </td>
                </tr>--%>
                <tr>
                    <td>
                       qty: <asp:textbox  ID="txtbx2" runat="server" Text="1" ></asp:textbox>                      
                    </td>
                    <td style="text-align:left">
                    <asp:CheckBox ID="Ck2" runat="server" OnCheckedChanged="Ck2_CheckedChanged" />
                        <asp:Label ID="lbl22" runat="server" Text="order"></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td colspan="2" style="text-align:center">
                        <asp:Label ID="lbler2" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
                </td>
        </tr>


         <tr>
            <td>
            <table style="width:100%">
                <tr>
                    <td colspan="2">
                        Dabeli
                    </td>
                    </tr>
                <tr>
                    <td rowspan="2" style="width:140px;">
                        <asp:Image ID="mimg3" runat="server" Width="200px" Height="100px" ImageUrl="~/Client/Images/dabeli 2.jpg" />
                    </td>
                    <td style="text-align:left">
                        price : 20
                    </td>
                </tr>
                <%--<tr>
                    <td style="text-align:left">
                        <asp:Label ID="lbl3" runat="server" Text="Quantity : 10"></asp:Label>
                    </td>
                </tr>--%>
                <tr>
                    <td>
                       qty: <asp:textbox  ID="txtbx3" runat="server" Text="1" ></asp:textbox>                      
                    </td>
                    <td style="text-align:left">
                    <%--<asp:Button ID="btn1" runat="server" Text="Add to Cart" OnClick="btn1_Click"/>--%>
                        <asp:CheckBox ID="Ck3" runat="server" />
                        <asp:Label ID="Label33" runat="server" Text="order"></asp:Label> 
                    </td>
                </tr>
                 <tr>
                    <td colspan="2" style="text-align:center">
                        <asp:Label ID="lbler3" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
                </td>
         <td>
            <table style="width:100%">
                <tr>
                    <td colspan="2">
                        Frankie
                    </td>
                    </tr>
                <tr>
                    <td rowspan="2" style="width:140px;">
                        <asp:Image ID="mimg4" runat="server" Width="200px" Height="100px" ImageUrl="~/Client/Images/frankie 1.jpg" />
                    </td>
                    <td style="text-align:left">
                        price : 40
                    </td>
                </tr>
                <%--<tr>
                    <td>
                        <asp:Label ID="lbl4" runat="server" Text="Quantity : 10"></asp:Label>
                    </td>
                </tr>--%>
                <tr>
                    <td>
                       qty: <asp:textbox  ID="txtbx4" runat="server" Text="1" ></asp:textbox>                      
                    </td>
                    <td style="text-align:left">
                    <asp:CheckBox ID="Ck4" runat="server" OnCheckedChanged="Ck2_CheckedChanged" />
                        <asp:Label ID="lbl44" runat="server" Text="order"></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td colspan="2" style="text-align:center">
                        <asp:Label ID="lbler4" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
                </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:left">
                Enter Time:<asp:textbox  ID="txtbxtime" runat="server" ></asp:textbox> 
            </td>
        </tr>
        <tr>
            
            <td colspan="2" style="text-align:right">
                <asp:Button ID="btnGBill" runat="server" Text="Generate Bill" OnClick="btnGBill_Click" CssClass="btn" Width="200px" />
            </td>
        </tr>
    </table>
</asp:Content>

