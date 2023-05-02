<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Webforms/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewOrders.aspx.cs" Inherits="Admin_Webforms_ViewOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table  style="width:100%;">
        <tr>
            <td>
                <table style="width:100%;" class="text">
                    <tr>
                        <td style="text-align:right;color:navy;font-size:20px;" colspan="2" >
                            Order Summary
                        </td>
                    </tr>
                    <tr style="height:10px;">
                        <td colspan="2" style="background-color:Blue;">                                            
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:center; vertical-align:middle;" colspan="2">
                           
                                <asp:GridView ID="grdAdmin" runat="server" AllowPaging="true" PageSize="7" AutoGenerateColumns="false" AllowSorting="true" GridLines="Vertical" 
                                Width="100%" DataKeyNames="did" DataSourceID="SqlDataSource1">
                                
                               
                                    <Columns>
                                        <asp:CommandField ButtonType="Button" ShowDeleteButton="true" ControlStyle-ForeColor="Black" />                              
                                        <asp:BoundField DataField="did" HeaderText="Order Id" Visible="true" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center"  ItemStyle-VerticalAlign="Middle"  SortExpression="did" />
                                        <asp:BoundField DataField="diname"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center"  ItemStyle-VerticalAlign="Middle" HeaderText="Item Name" SortExpression="diname" />
                                        <asp:BoundField DataField="diprice"  HeaderStyle-HorizontalAlign="Left" HeaderStyle-VerticalAlign="Middle" HeaderText="Price" SortExpression="diprice" />
                                        <asp:BoundField DataField="diqty"  HeaderStyle-HorizontalAlign="Left" HeaderStyle-VerticalAlign="Middle" HeaderText="Quantity" SortExpression="diqty" />
                                        <asp:BoundField DataField="ditime" HeaderText="Time" SortExpression="ditime"  Visible="false" />
                                        
                                    </Columns>
                                    <%--rowstyle will give backcolor and fore color to row--%>
                                    <RowStyle BackColor="White" ForeColor="LawnGreen" />
                                    <%--It works on even number of records only.--%>
                                     <AlternatingRowStyle BackColor="White" ForeColor="DarkMagenta" />
                                     <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="DarkOrange" />
                                    
                                   
                                    <PagerStyle BackColor="Black" ForeColor="White" HorizontalAlign="Center" />
                                   
                                </asp:GridView>
                           
                        </td>
                    </tr>
                     <tr style="height:10px;">
                        <td style="background-color:Blue;">                                            
                        </td>
                    </tr>                   
                </table>
            </td>
        </tr>
        
    </table>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|CASS.mdf;Integrated Security=True"
     ProviderName="System.Data.SqlClient"                                  
     DeleteCommand="Delete From [AdminView] Where [did] = @did"      
     SelectCommand = "Select * from [AdminView]" >
     
        <DeleteParameters>
            <asp:Parameter Name="did" Type="Int32" />
        </DeleteParameters>
        
    </asp:SqlDataSource>











</asp:Content>

