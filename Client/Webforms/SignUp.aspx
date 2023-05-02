<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Webforms/ClientMaster.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="Client_Webforms_SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
        function bkclryl(txtbox) {
            txtbox.style.background = "yellow";

        }
        function bkclrwt(txtbox) {
            txtbox.style.background = "white";
        }
        
        
    </script>
    <table style="width:100%;">
        <tr>
            <td>
                <table style="width:100%" class="txt">
                    <tr style="height:40px">
                        <td colspan="3" style="font-family:'Arial Rounded MT'; font-size:30px; text-align:right;
                                color:white; background-color:hotpink;">
                            Sign UP Form
                        </td>
                    </tr>
                    <tr style="height:30px;">
                        <td colspan="3"></td>
                    </tr>
                    <tr style="height:30px;">
                        <td colspan="3" style="font-family:'Arial Rounded MT'; font-size:30px; text-align:left;
                            color:white; background-color:hotpink;">
                            Personal Information
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:left;">
                            First Name<span style="color:maroon">*</span>
                        </td>
                        <td style="text-align:center;">
                            :
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="txtFName" runat="server" CssClass="txtbx" onfocus="bkclryl(this)" onblur="bkclrwt(this)"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rvfFName" runat="server" ErrorMessage="enter Firstname"
                                ForeColor="red" ControlToValidate="txtFName" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:left;">
                            Last Name<span style="color:maroon">*</span>
                        </td>
                        <td style="text-align:center;">
                            :
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="txtLName" runat="server" CssClass="txtbx" onfocus="bkclryl(this)" onblur="bkclrwt(this)"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rvfLName" runat="server" ErrorMessage="enter Lastname"
                                ForeColor="red" ControlToValidate="txtLName" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                   
                    <tr style="height:50px">
                        <td style="text-align:left;">
                            Address<span style="color:maroon">*</span>
                        </td>
                        <td style="text-align:center;">
                            :
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="txtbx" TextMode="MultiLine"  onfocus="bkclryl(this)" onblur="bkclrwt(this)"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Enter Address"
                                ForeColor="red" ControlToValidate="txtAddress" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:left;">
                            Email<span style="color:maroon;">*</span>
                        </td>
                        <td style="text-align:center">
                            :
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="txtbx" onfocus="bkclryl(this)" onblur="bkclrwt(this)"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEMail"  ErrorMessage="enter valid EmailId" ForeColor="red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Enter Email-Id in Proper Format"
                              SetFocusOnError="true" ControlToValidate="txtEMail"  ForeColor="Green" Display="Dynamic"
                               ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                        </td>
                        
                    </tr>
                    <tr>
                         <td style="text-align:left;">
                            Phone<span style="color:maroon">*</span>
                        </td>
                        <td style="text-align:center;">
                            :
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="txtbx"   onfocus="bkclryl(this)" onblur="bkclrwt(this)"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ErrorMessage="Enter the phone Number"
                                ForeColor="red" ControlToValidate="txtPhone" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revPhone" runat="server" ErrorMessage="Enter Phone-Number in Proper Format"
                              SetFocusOnError="true" ControlToValidate="txtPhone"  ForeColor="Green" Display="Dynamic"
                               ValidationExpression="[0-9]{10}" ></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    
                    
                                

                    <tr style="height:30px;">
                        <td colspan="3"></td>
                    </tr>
                    <tr style="height:30px;">
                        <td colspan="3" style="text-align:left; color:white; background-color:hotpink;font-size:30px">
                            User Name & Password
                        </td>
                    </tr>
                    <tr style="height:30px;">
                        <td colspan="3"></td>
                    </tr>
                    <tr>
                        <td style="text-align:left;">
                            User Name<span style="color:maroon">*</span>
                        </td>
                        <td style="text-align:center;">
                            :
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="txtUName" runat="server" CssClass="txtbx" onfocus="bkclryl(this)" onblur="bkclrwt(this)"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rvfUName" runat="server" ErrorMessage="enter User name"
                                ForeColor="red" ControlToValidate="txtUName" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                    <td style="text-align:left;">
                            Password<span style="color:maroon">*</span>
                        </td>
                        <td style="text-align:center;">
                            :
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="txtPasswd" runat="server" CssClass="txtbx" TextMode="Password" onfocus="bkclryl(this)" onblur="bkclrwt(this)"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPasswd" runat="server" ErrorMessage="enter Password" Display="Dynamic"
                                ForeColor="red" ControlToValidate="txtPasswd" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </td>
                        </tr>
                    <tr>
                        <td style="text-align:left;">
                            Confirm Password<span style="color:maroon">*</span>
                        </td>
                        <td style="text-align:center;">
                            :
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="txtCPasswd" runat="server" TextMode="Password" CssClass="txtbx" onfocus="bkclryl(this)" onblur="bkclrwt(this)"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rvfCPasswd" runat="server" ErrorMessage="enter Password again" Display="Dynamic"
                                ForeColor="red" ControlToValidate="txtCPasswd" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvCPasswd" runat="server" ErrorMessage="Please Enter Confirm Password Mindfully" ForeColor="Green" SetFocusOnError="true" 
                           ControlToCompare="txtPasswd"  ControlToValidate="txtCPasswd" Display="Dynamic" ></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr style="height:15px;">
                        <td></td>
                        <td colspan="2">
                            <asp:Button ID="btnSignUp" runat="server" Text="SignUp" CssClass="btn" OnClick="btnSignUp_Click"  />
                            &nbsp;
                            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn" OnClientClick="this.form.reset(); return false;" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="text-align:left">
                            <asp:Label ID="lblErrMsg" runat="server" ForeColor="Maroon"></asp:Label>
                        </td>
                    </tr>
                </table>

            </td>
        </tr>
    </table>
</asp:Content>

