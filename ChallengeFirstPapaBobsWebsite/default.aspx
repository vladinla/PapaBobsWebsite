<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ChallengeFirstPapaBobsWebsite._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Papa Bob's Pizza - Order Online</title>
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <link href="style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            color: #FF9900;
            font-size: large;
        }
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/PapaBob.png" />
        <strong><span class="auto-style2">Papa Bob&#39;s Pizza &amp; Software</span></strong><br />
        <br />
        <asp:RadioButton ID="sizeSRadioButton" runat="server" Checked="True" GroupName="size" Text="Baby Bob Size (10&quot;) - $10" />
        <br />
        <asp:RadioButton ID="sizeMRadioButton" runat="server" GroupName="size" Text="Mama Bob Size (13&quot;) - $13" />
        <br />
        <asp:RadioButton ID="sizeLRadioButton" runat="server" GroupName="size" Text="Papa Bob Size (13&quot;) - $16" />
        <br />
        <br />
        <asp:RadioButton ID="thincrustRadioButton" runat="server" Checked="True" GroupName="crust" Text="Thin Crust" />
        <br />
        <asp:RadioButton ID="deepdishRadioButton" runat="server" GroupName="crust" Text="Deep Dish (+$2)" />
        <br />
        <br />
        <asp:CheckBox ID="pepperoniCheckBox" runat="server" Text="Pepperoni (+$1.50)" />
        <br />
        <asp:CheckBox ID="onionsCheckBox" runat="server" Text="Onions (+$0.75)" />
        <br />
        <asp:CheckBox ID="greenpeppersCheckBox" runat="server" Text="Green Peppers (+$0.50)" />
        <br />
        <asp:CheckBox ID="redpeppersCheckBox" runat="server" Text="Red Peppers (+$0.75)" />
        <br />
        <asp:CheckBox ID="anchoviesCheckBox" runat="server" Text="Anchovies (+$2)" />
        <br />
        <br />
        <strong><span class="auto-style3">Papa Bob&#39;s </span><span class="auto-style1">Special Deal</span></strong><br />
        <br />
        Save $2 when you add Pepperoni, Green Peppers and Anchovies OR Pepperoni, Red Peppers and Onions.<br />
        <br />
        <asp:Button ID="resultButton" runat="server" OnClick="resultButton_Click" Text="Purchase" />
        <br />
        <br />
        Total: <asp:Label ID="resultLabel" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
