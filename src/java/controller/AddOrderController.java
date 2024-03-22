/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.CartItemDAO;
import dao.OrderDAO;
import dao.OrderDetailDAO;
import dao.SupplierDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.CartItem;
import model.Order;
import model.OrderDetail;
import model.SupplierDTO;
import model.User;

/**
 *
 * @author THevY
 */
public class AddOrderController extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        double total = Double.parseDouble(request.getParameter("total"));
        String doo = request.getParameter("doo");
        int supplierId = Integer.parseInt(request.getParameter("supplier"));
        SupplierDAO sDAO = new SupplierDAO();
        SupplierDTO supplier = sDAO.selectById(supplierId);
        OrderDAO odDAO = new OrderDAO();
        Cart c =(Cart) request.getSession().getAttribute("shoppingCart");
        User u = (User)request.getSession().getAttribute("user");
        Order od = odDAO.insert(c, u, total,Date.valueOf(doo),supplier);
         OrderDetailDAO o = new OrderDetailDAO();
                CartItemDAO ciDAO = new CartItemDAO();
                 ArrayList<CartItem> cartItem = ciDAO.selectAllByUserId(c.getCartId());
                 List<OrderDetail> odd = o.insert(cartItem, od.getOrderId());
                  new CartItemDAO().delete(c);
                  HttpSession session = request.getSession();
                  String supplierName = supplier.getName();
                  String supplierTel = supplier.getTelNum();
        session.setAttribute("order", od);
        session.setAttribute("orderdetail", odd);
        session.setAttribute("total", total);
        session.setAttribute("doo", doo);
        session.setAttribute("suppliername", supplierName);
        session.setAttribute("suppliertel", supplierTel);
                  response.sendRedirect("orderDetails.jsp");
        
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(AddOrderController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(AddOrderController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
