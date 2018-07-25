<%@page import="java.sql.*, DB.*" %>
<%
    try {
        String pass1 = request.getParameter("Password1");
        String userid = request.getParameter("uid");
        String qry = "update tbuser set userpwd='"+pass1+"' where userid='"+userid+"'";
        new Global().update(qry);
        out.println("pass updated" + userid + " "+ pass1);
    }
    catch(Exception e) {
        System.out.println(e);
    }
%>