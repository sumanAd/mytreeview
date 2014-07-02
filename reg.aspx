<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style3
        {
            height: 21px;
        }
        .style4
        {
            width: 344px;
        }
        .style5
        {
            height: 57px;
        }
        .style6
        {
            width: 344px;
            height: 57px;
        }
    </style>
</head>
<body>
    
    
    <form id="form1" runat="server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td align="center" colspan="2" class="style3">
                                Sign Up for Your New Account</td>
                        </tr>
                        <tr>
                            <td align="right" class="style5">
                                <asp:Label ID="lname" runat="server" AssociatedControlID="name">Name:</asp:Label>
                            </td>
                            <td class="style6">
                                <asp:TextBox ID="tbname" runat="server" Width="123px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="NameRequired" runat="server" 
                                    ControlToValidate="name" ErrorMessage="Name is required." 
                                    ToolTip="Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lpassword" runat="server" AssociatedControlID="password">Password:</asp:Label>
                            </td>
                            <td class="style4">
                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                    ControlToValidate="password" ErrorMessage="Password is required." 
                                    ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lconformpassword" runat="server" 
                                    AssociatedControlID="confirmpassword">Confirm Password:</asp:Label>
                            </td>
                            <td class="style4">
                                <asp:TextBox ID="tbconfirmpassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                    ControlToValidate="confirmpassword" 
                                    ErrorMessage="Confirm Password is required." 
                                    ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lemail" runat="server" AssociatedControlID="email">E-mail:</asp:Label>
                            </td>
                            <td class="style4">
                                <asp:TextBox ID="tbemail" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                                    ControlToValidate="email" ErrorMessage="E-mail is required." 
                                    ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                    ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                    Display="Dynamic" 
                                    ErrorMessage="The Password and Confirmation Password must match." 
                                    ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color:Red;">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>
    </form>
    
    
 </body>
</html>
