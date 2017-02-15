﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PlayedGame/PlayedGame.master" AutoEventWireup="true" CodeBehind="TicTacToe.aspx.cs" Inherits="SlienGames.Web.PlayedGame.TicTacToe" %>

<asp:Content ContentPlaceHolderID="GameScriptsPlaceholder" runat="server">
    <script src="../Scripts/jquery.signalR-2.2.1.js"></script>
    <script src="<%= ResolveUrl("~/signalr/hubs") %>" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="GamePlaceholder" runat="server">
    <asp:HiddenField ID="InputUsername" runat="server" />

    <input type="image" src="<%= ResolveUrl("~/Uploaded_Images/Covers/tic-tac-toe.png") %>" />
    <input id="find-opponent" type="button" value="Find Opponent" class="btn btn-default" />
    <div id="game"></div>
    <p id="messages"></p>

    <%-- TicTacToe game client logic --%>
    <script>
        $(function () {
            function initGame() {
                for (var i = 0; i < 9; i++) {

                }
            }

            var gameProxy = $.connection.ticTacToeHub;
            var playerName = $('#MainContent_GamePlaceholder_InputUsername').val();

            // Register client functions.
            gameProxy.client.noOpponentFound = function () {
                $("#messages").show();
                $("#messages").text("No opponent found. Please try again.");
            };

            gameProxy.client.playGame = function (opponentName) {
                $("#messages").show();
                $("#messages").text('Your opponent is ' + opponentName);
                initGameFiled();
            };

            // Start the connection with the server.
            $.connection.hub.start().done(function () {
                // Init player
                gameProxy.server.registerPlayer(playerName);

                $('#find-opponent').click(function () {
                    $("#messages").hide();
                    gameProxy.server.findOpponent();
                });
            });
        }());
    </script>
</asp:Content>
