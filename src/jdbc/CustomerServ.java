package jdbc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CustomerServ")
public class CustomerServ extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String id = request.getParameter("id");
			String ID = request.getParameter("ID");

			String FirstName = request.getParameter("FirstName");

			String LastName = request.getParameter("LastName");

			String Email = request.getParameter("Email");

			String Password = request.getParameter("Password");

			CustomerAdd c = new CustomerAdd();
			CustomerUpdate c1 = new CustomerUpdate();
			CustomerDelete c2 = new CustomerDelete();
			
			
			
			if(request.getParameter("btninsert") != null)
			{
			
				if(c.insertCus(ID,FirstName,LastName,Email,Password)== true) {
					response.sendRedirect("ordSucc.html");
				}
				else
				{
					response.sendRedirect("ord.html");
	
				}
			}
			
			else if(request.getParameter("btnupdate") != null)
			{
				
				if(c1.updateCus(ID,FirstName,LastName,Email,Password)== true) {
					response.sendRedirect("ordSucc.html");
				}
				else
				{
					response.sendRedirect("ord.html");
	
				}
				
			}
			
			else if(request.getParameter("btndelete") != null)
			{
				
				if(c2.deleteCus(id)== true) {
					response.sendRedirect("ordSucc.html");
				}
				else
				{
					
					response.sendRedirect("ord.html");
	
				}
				
			}
			
			
			
			

		

	}

}

