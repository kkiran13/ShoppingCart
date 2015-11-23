package shopping.cart;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddToCartServlet extends HttpServlet {
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    public Map <String, Float> cartMap ;
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
         HttpSession session = request.getSession();
         String removeItem = request.getParameter("remove");
        cartMap = (HashMap<String,Float>) session.getAttribute("cartMap");
        cartMap.remove(removeItem);
        session.setAttribute("cartMap", cartMap);
        response.sendRedirect("ViewCart.jsp");  
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
       
        String name = request.getParameter("items");
        
        HttpSession session = request.getSession();
        
        if((Map)session.getAttribute("cartMap")!=null)
        {   
             cartMap = (HashMap<String,Float>) session.getAttribute("cartMap");
        }
        else
        {
            cartMap = new HashMap<String, Float>();
        }
        
        CartAddition(name,cartMap,request);
         session.setAttribute("cartMap", cartMap);
        RequestDispatcher rd = request.getRequestDispatcher("Success.jsp");
        rd.forward(request, response);   
    }
    
    public  void CartAddition(String name,Map<String, Float> cartMap,HttpServletRequest request ){          
        String [] cat = request.getParameterValues(name); 
        for(String a : cat)
        {
            String name_1 = a.substring(0, a.indexOf("[") - 1);
            String name_2 = a.substring(a.indexOf("[") + 1, a.indexOf("]"));
            float price = Float.parseFloat(name_2);
            cartMap.put(name_1, price);     
        }
    }
}

