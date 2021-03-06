﻿<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SlienGames.Web.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <div class="row ">
        <div class="col-md-4 col-md-offset-4">
            <div class="block-cnt">
                <div class="cl">&nbsp;</div>
                <h2><%: Title %>.</h2>
                <div class="form-background">
                    <section id="loginForm">
                        <div class="form-horizontal">
                            <h3>Use a local account to log in.</h3>
                            <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                                <p class="text-danger">
                                    <asp:Literal runat="server" ID="FailureText" />
                                </p>
                            </asp:PlaceHolder>
                            <div class="form-group">
                                <div class="cl">&nbsp;</div>
                                <asp:Label runat="server" AssociatedControlID="TextBoxUsername" CssClass="col-md-2 control-label">Username</asp:Label>
                                <div class="col-md-10">
                                    <asp:TextBox runat="server" ID="TextBoxUsername" CssClass="form-control" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBoxUsername"
                                        CssClass="text-danger" ErrorMessage="The username field is required." />
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="TextBoxPassword" CssClass="col-md-2 control-label">Password</asp:Label>
                                <div class="col-md-10">
                                    <asp:TextBox runat="server" ID="TextBoxPassword" TextMode="Password" CssClass="form-control" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBoxPassword" CssClass="text-danger" ErrorMessage="The password field is required." />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-offset-2 col-md-10">
                                    <div class="checkbox">
                                        <asp:CheckBox runat="server" ID="CheckBoxRememberMe" />
                                        <asp:Label runat="server" AssociatedControlID="CheckBoxRememberMe">Remember me?</asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-offset-2 col-md-10">
                                    <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default" />
                                </div>
                            </div>
                        </div>
                        <p>
                            <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register as a new user</asp:HyperLink>
                        </p>
                    </section>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
