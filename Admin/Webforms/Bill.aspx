<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Webforms/AdminMaster.master" AutoEventWireup="true" CodeFile="Bill.aspx.cs" Inherits="Admin_Webforms_Bill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:Repeater id="repeater1" runat="server" DataSourceID="SqlDataSource1">
    <HeaderTemplate>
    <table class="text">
        <tr>
            <td style="width:150px;">
            </td>                   
            <td style="text-align:left; vertical-align:middle; width:150px;color:black;">
               UserName
            </td>
            <td style="text-align:left; vertical-align:middle; width:150px;color:black;">
               Quantity
            </td>
            <td style="text-align:left; vertical-align:middle; width:150px;color:black;">
               Price
            </td>
            <td style="text-align:left; vertical-align:middle; width:150px;color:black;">
               Discount
            </td>
            <td style="text-align:left; vertical-align:middle; width:150px;color:black;">
               Amount
            </td>
        </tr>
    </table>       
    </HeaderTemplate>
    
    <ItemTemplate>
    <table class="text">
    <tr>
        <td style="width:150px;">
        </td>                   
        <td style="text-align:left; vertical-align:middle; width:150px;color:mediumvioletred;">
            <%--The following lines will be executed as many times as the number of rows in the Table.--%>
    	    <%# DataBinder.Eval(Container.DataItem, "buser")%> &nbsp;&nbsp;
                
        </td>
        <td style="text-align:left; vertical-align:middle; width:150px;color:mediumvioletred;">
            <%# DataBinder.Eval(Container.DataItem, "bqty")%> <br />
        </td>
        <td style="text-align:left; vertical-align:middle; width:150px;color:mediumvioletred;">
            <%# DataBinder.Eval(Container.DataItem, "bprice")%> <br />
        </td>
        <td style="text-align:left; vertical-align:middle; width:150px;color:mediumvioletred;">
            <%# DataBinder.Eval(Container.DataItem, "bdisc")%> <br />
        </td>
        <td style="text-align:left; vertical-align:middle; width:150px;color:mediumvioletred;">
            <%# DataBinder.Eval(Container.DataItem, "pamt")%> <br />
        </td>
    </tr>
    </table>    			
    </ItemTemplate>
</asp:Repeater>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|CASS.mdf;Integrated Security=True"
        SelectCommand="Select [buser],[bqty],[bprice],[bdisc],[pamt] from bill"></asp:SqlDataSource>





</asp:Content>

