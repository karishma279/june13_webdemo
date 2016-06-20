﻿<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        // find out city using cookie with name city 

        HttpCookie city = Request.Cookies["city"];
        if (city == null) // cookie not found 
            Response.Redirect("selectcity.aspx");
        else
            Response.Write("<h2>Movies in city [" + city.Value + "] </h2>");

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <a href="selectcity.aspx">Change City</a>
    </form>
</body>
</html>
