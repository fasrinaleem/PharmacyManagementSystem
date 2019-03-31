package jdbc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/OrderServ")
public class OrderServ extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String id = request.getParameter("id");
			String orderID = request.getParameter("orderID");

			String item = request.getParameter("item");

			String quantity = request.getParameter("quantity");

			String date = request.getParameter("date");

			String orderStatus = request.getParameter("orderStatus");

			Order o = new Order();
			OrderUpdate o1 = new OrderUpdate();
			OrderDelete o2 = new OrderDelete();
			
			
			
			if(request.getParameter("btninsert") != null)
			{
			
				if(o.insertOrd(orderID,item,quantity,date,orderStatus)== true) {
					response.sendRedirect("ordSucc.html");
				}
				else
				{
					response.sendRedirect("ord.html");
	
				}
			}
			
			else if(request.getParameter("btnupdate") != null)
			{
				
				if(o1.updateOrd(orderID,item,quantity,date,orderStatus)== true) {
					response.sendRedirect("ordSucc.html");
				}
				else
				{
					response.sendRedirect("ord.html");
	
				}
				
			}
			
			else if(request.getParameter("btndelete") != null)
			{
				
				if(o2.deleteOrd(id)== true) {
					response.sendRedirect("ordSucc.html");
				}
				else
				{
					
					response.sendRedirect("ord.html");
	
				}
				
			}
			
			
			
			

		

	}

}

