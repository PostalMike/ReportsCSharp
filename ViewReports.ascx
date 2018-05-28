<%@ Control Language="C#" Inherits="DotNetNuke.Modules.Reports.ViewReports" AutoEventWireup="true" Explicit="True" CodeBehind="ViewReports.ascx.cs" %>
<asp:Panel ID="InfoPane" runat="server" Visible="false" EnableViewState="false">
    <h1>
        <asp:Literal ID="TitleLiteral" runat="server" Text="Title goes here" EnableViewState="false"/>
    </h1>
    <p class="NormalBold">
        <asp:Literal ID="DescriptionLiteral" runat="server" Text="Description goes here" EnableViewState="false"/>
    </p>
</asp:Panel>
<asp:PlaceHolder ID="ControlsPane" runat="server" Visible="false" EnableViewState="true">
 	<asp:Label ID="lblUserName" runat="server" AssociatedControlID="ddlUserName" Text="User Name: " />
	<asp:DropDownList ID="ddlUserName" runat="server" AutoPostBack="true">
		<asp:ListItem Value="0">All Users</asp:ListItem>
	</asp:DropDownList>
	<asp:Label ID="lblStartDate" runat="server" AssociatedControlID="txtStartDate" Text="Begin Date: " />
	<asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>
	<asp:Label ID="lblEndingDate" runat="server" AssociatedControlID="txtEndingDate" Text="End Date: " />
	<asp:TextBox ID="txtEndingDate" runat="server"></asp:TextBox>
   <p>
        <asp:LinkButton ID="RunReportButton" runat="server" ResourceKey="RunReportButton" CssClass="CommandButton" EnableViewState="false" OnClick="RunReportButton_Click"/>&nbsp;
        <asp:LinkButton ID="ClearReportButton" runat="server" ResourceKey="ClearReportButton" CssClass="CommandButton" Visible="false" EnableViewState="false" OnClick="ClearReportButton_Click"/>
    </p>
</asp:PlaceHolder>
<asp:PlaceHolder ID="VisualizerSection" runat="server"/>
<script type="text/javascript">
	$(function () {
		$("#<%= txtStartDate.ClientID %>").datepicker();
		$("#<%= txtEndingDate.ClientID %>").datepicker();
	});
</script>
