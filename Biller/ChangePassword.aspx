﻿<%@ Page Title="ChangePassword ~Manager" Language="C#" MasterPageFile="~/Biller/BillerMasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Biller_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../Content/defaultLogin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h5 class="display-5">Change Password</h5>
    <hr />
    <div class="container  mt-5 ">
        <div class="row d-flex justify-content-center">
            <div class="col-md-5">
                <div class="card px-5 py-5" id="form1">
                    <div class="form-data">
                        <div class="forms-inputs mb-4">
                            <span>Enter New Password</span>
                            <asp:TextBox ID="txtPassword1" runat="server" CssClass="w-100" TextMode="Password" required></asp:TextBox>
                            <ajaxToolkit:PasswordStrength ID="txtPassword1_PasswordStrength" runat="server" BehaviorID="txtPassword1_PasswordStrength" MinimumLowerCaseCharacters="1" MinimumNumericCharacters="1" MinimumSymbolCharacters="1" MinimumUpperCaseCharacters="1" PreferredPasswordLength="8" TargetControlID="txtPassword1" />
                        </div>
                        <div class="forms-inputs mb-4">
                            <span>Confirm New Password</span>
                            <asp:TextBox ID="txtPassword2" runat="server" CssClass="w-100" TextMode="Password" required></asp:TextBox>
                            <ajaxToolkit:PasswordStrength ID="txtPassword2_PasswordStrength" runat="server" BehaviorID="txtPassword2_PasswordStrength" MinimumLowerCaseCharacters="1" MinimumNumericCharacters="1" MinimumSymbolCharacters="1" MinimumUpperCaseCharacters="1" PreferredPasswordLength="8" TargetControlID="txtPassword2" />
                        </div>
                        <div class="mb-3">
                            <asp:Button ID="btnUpdate" runat="server" Text="Update Password" CssClass="btn btn-dark w-100" OnClick="btnUpdate_Click" />
                        </div>
                        <div id="divError" visible="false" runat="server" class="alert alert-danger d-flex align-items-center" role="alert">
                            <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
                                <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
                                    <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
                                </symbol>
                            </svg>
                            <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:">
                                <use xlink:href="#exclamation-triangle-fill" />
                            </svg>
                            <div>
                                <asp:Label ID="lblError" runat="server"></asp:Label>
                            </div>
                        </div>
                        <div id="divSucess" visible="false" runat="server" class="alert alert-success d-flex align-items-center" role="alert">
                            <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
                                <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
                                    <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z" />
                                </symbol>
                            </svg>
                            <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:">
                                <use xlink:href="#check-circle-fill" />
                            </svg>
                            <div>
                                <asp:Label ID="lblSucess" runat="server"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

