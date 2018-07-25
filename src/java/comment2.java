/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import DB.Global;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hp
 */
@WebServlet(urlPatterns = {"/comment2"})
public class comment2 extends HttpServlet {

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
            String uid = (String) ss.getAttribute("userid");
   
            int tid = Integer.parseInt(request.getParameter("tid"));
            
            int gid = Integer.parseInt(request.getParameter("id"));
           
            Global obj = new Global();
            int cid = obj.GetSno6();
         
            Date obj2 = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yy");
            String dt = sdf.format(obj2);
            sdf = new SimpleDateFormat("hh:mm:ss");
            String time = sdf.format(obj2);
            String msg = request.getParameter("area1");
            String qry = "insert into tbcomment values(" + cid + ",'" + msg + "','" + dt + "','" + time + "','" + uid + "'," + tid + ")";
           
            obj.update(qry);
            response.sendRedirect("detail.jsp?id="+gid+"&tid="+tid);
      
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
