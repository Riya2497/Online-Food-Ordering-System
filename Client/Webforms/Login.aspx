<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Webforms/ClientMaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Client_Webforms_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
        function bkclryl(txtbox) {
            txtbox.style.background = "yellow";

        }
        function bkclrwt(txtbox) {
            txtbox.style.background = "white";
        }
    </script>
    <table style="width:100%; align-self:center;">
        <tr>
          <td>
              <table style="width:100%;">
                  <tr>
                      <td style="width:20%"></td>
                      <td>
                          <table class="txt">
                              <tr style="height:40px;">
                                  <td colspan="3" style="text-align:center; font-size:25px;
                                      background-color:blue; color:darksalmon;">
                                      Login Information
                                  </td>

                              </tr> 
                              <tr style="height:25px;">
                                  <td colspan="3">

                                  </td>

                              </tr>
                              <tr>
                                  <td style="text-align:left;">
                                      UserName
                                  </td>
                                  <td style="text-align:center;">
                                      :
                                  </td>
                                  <td style="text-align:left;">
                                      
                                      <asp:TextBox ID="txtUName" runat="server" CssClass="txtbx" onfocus="bkclryl(this)" onblur="bkclrwt(this)"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="rfvUname" runat="server" ErrorMessage="Please Enter User Name..." ControlToValidate="txtUName"
                                          ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                  </td>

                              </tr>
                              <tr>
                                  <td style="text-align:left">
                                      Password
                                  </td>
                                  <td style="text-align:center">
                                      :
                                  </td>
                                  <td style="text-align:left">
                                      
                                      <asp:TextBox ID="txtPasswd" runat="server" CssClass="txtbx" TextMode="Password" onfocus="bkclryl(this)" onblur="bkclrwt(this)"></asp:TextBox> 
                                      <asp:RequiredFieldValidator ID="rfvPasswd" runat="server" ErrorMessage="Please Enter Password..." ControlToValidate="txtPasswd"
                                          ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                  </td>
                              </tr>
                              <tr style="height:10px">
                                  <td colspan="3"></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td colspan="2" style="text-align:left;">
                                      <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click" /> &nbsp
                                      <asp:Button ID="btnSignup" runat="server" Text="Signup" CssClass="btn" PostBackUrl="~/Client/Webforms/SignUp.aspx" CausesValidation="false" />
                                   </td>
                              </tr>
                              <tr style="height:25px;">
                                  <td colspan="3"></td>
                              </tr>
                              <tr>
                                  <td colspan="3" style="text-align:left; background-color:blue;">
                                      <asp:Label ID="lblErrMsg" runat="server" ForeColor="Yellow"></asp:Label>
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

