<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Webforms/AdminMaster.master" AutoEventWireup="true" CodeFile="UpdateMenu.aspx.cs" Inherits="Admin_Webforms_UpdateMenu" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table style="width:100%;">
        <tr>
            <td>
                <table>
                
                    <tr>
                        <td>
                            <asp:ListView ID="MenuDetailsListView" runat="server" DataKeyNames="iid" DataSourceID="SqlDataSource1"                             
                                InsertItemPosition="LastItem">
                           
                                <AlternatingItemTemplate>
                                <table>
                                    <tr style="background-color: #87CEFA; color: #284775;">
                                        <td style="width:100px;">
                                            <asp:Label ID="lbliid" runat="server" Text='<%# Eval("iid") %>' />
                                        </td>
                                        <td style="width:100px;">
                                            <asp:Label ID="lbliname" runat="server" Text='<%# Eval("iname") %>' />
                                        </td>
                                        <td style="width:100px;">
                                            <asp:Label ID="lbliprice" runat="server" Text='<%# Eval("iprice") %>' />
                                        </td>
                                        <td style="width:200px;">
                                            <asp:Label ID="lbliqty" runat="server" Text='<%# Eval("iqty") %>' />
                                        </td>
                                        
                                        <td style="width:100px;">
                                            <asp:LinkButton ID="lnkbtnEdit" runat="server" CommandName="Edit" ForeColor="Blue">Edit</asp:LinkButton>
                                        </td>
                                    </tr>
                                    </table>
                                </AlternatingItemTemplate>
                                <ItemTemplate>
                                <table>
                                    <tr style="background-color: #E0FFFF; color: #333333;">
                                        <td style="width:100px;">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("iid") %>' />
                                        </td>
                                        <td style="width:100px;">
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("iname") %>' />
                                        </td>
                                        <td style="width:100px;">
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("iprice") %>' />
                                        </td>
                                        <td style="width:200px;">
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("iqty") %>' />
                                        </td>
                                        
                                        <td style="width:100px;">
                                            <asp:LinkButton ID="lbkbtnEdit" runat="server" CommandName="Edit" ForeColor="BlueViolet">Edit</asp:LinkButton>
                                        </td>
                                    </tr>
                                    </table>
                                </ItemTemplate>
                                <InsertItemTemplate>
                                <table>
                                    <tr>
                                        <td style="width:100px;">
                                        </td>
                                        <td>
                                       
                                            <asp:TextBox ID="txtiname" Width="100px" runat="server" Text='<%# Bind("iname") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtiprice" Width="100px" runat="server" Text='<%# Bind("iprice") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtiqty" Width="200px" runat="server" Text='<%# Bind("iqty") %>' />
                                        </td>
                                        
                                        <td>
                                            <asp:Button ID="btnInsert" runat="server" CommandName="Insert" Text="Insert" ForeColor="Blue"/>
                                        </td>
                                    </tr>
                                    </table>
                                </InsertItemTemplate>
                                <EditItemTemplate>
                                <table>
                                    <tr style="background-color: darkblue;">
                                          <td style="width:100px;">
                                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("iid") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" Width="100px" runat="server" Text='<%# Bind("iname") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" Width="100px" runat="server" Text='<%# Bind("iprice") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" Width="200px" runat="server" Text='<%# Bind("iqty") %>' />
                                        </td>
                                        
                                       
                                        <td>
                                            <asp:LinkButton ID="lnkbtnUpdate" runat="server" CommandName="Update" ForeColor="WhiteSmoke">Update</asp:LinkButton>
                                            <asp:LinkButton ID="lnkbtnDelete" runat="server" CommandName="Delete" ForeColor="WhiteSmoke">Delete</asp:LinkButton>
                                            <asp:LinkButton ID="lnkbtnCancel" runat="server" CommandName="Cancel" ForeColor="WhiteSmoke">Cancel</asp:LinkButton>
                                        </td>
                                    </tr>
                                    </table>
                                </EditItemTemplate>
                            </asp:ListView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>


     
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|CASS.mdf;Integrated Security=True"
        SelectCommand="SELECT [iid], [iname], [iprice], [iqty] FROM [Menu]"
        DeleteCommand="Delete from [Menu] where [iid] = @iid"
        UpdateCommand="Update [Menu] Set [iname] = @iname, [iprice] = @iprice, [iqty] = @iqty where [iid] = @iid"
        InsertCommand="Insert into [Menu] ([iname],[iprice],[iqty]) Values (@iname,@iprice,@iqty)"  >      
    </asp:SqlDataSource>



</asp:Content>

