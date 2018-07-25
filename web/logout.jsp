<%
    HttpSession ss = request.getSession();
    if(ss.getAttribute("userid")==null) {
        response.sendRedirect("index.html");
    }
    session.invalidate(); 
    response.sendRedirect("index.html");
%>