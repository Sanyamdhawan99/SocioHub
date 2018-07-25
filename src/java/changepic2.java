/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.*;
import DB.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author hp
 */
@WebServlet(urlPatterns = {"/changepic2"})
public class changepic2 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
             HttpSession ss = request.getSession();
            String uid = (String)ss.getAttribute("userid");
            
            DiskFileItemFactory factory = new DiskFileItemFactory();
            factory.setSizeThreshold(4096);
            
            ServletFileUpload s = new ServletFileUpload(factory);
            s.setFileSizeMax(8000000); // 8MB
            
            List ls = s.parseRequest(request);
            Iterator itr = ls.iterator();
            FileItem f1 = (FileItem)itr.next();
            
            String nm = "/"+uid+"_"+f1.getName();
            // assets/images/folder/nm
            //out.println(nm);
            //out.println("<br>");
            ServletContext sc = request.getServletContext();
            String root = sc.getRealPath("/"+"/assets/images");
            //out.println(root);
            //out.println("<br>");
            File path = new File(root + "/" + uid);
            //out.println(path);
            //out.println("<br>");
            if(!path.exists()) {
                path.mkdirs();
            }
            
            File f = new File(path+File.separator+nm);
            //out.println(f);
            //out.println("<br>");
            f1.write(f);
            String effpath = "assets/images/"+uid+nm;
            //out.println(effpath);
            //out.println("<br>");
            String qry = "update tbuser set userimg='"+effpath+"' where userid='"+uid+"'";
            new Global().update(qry);
            ss.setAttribute("userimg", effpath);
            response.sendRedirect("home.jsp?id="+uid);
            //out.println("File uploaded");
            
        }
        catch(Exception e) {
            System.out.println(e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
