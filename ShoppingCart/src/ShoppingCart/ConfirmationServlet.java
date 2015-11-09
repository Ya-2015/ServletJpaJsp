package ShoppingCart;


import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ConfirmationServlet
 */
@WebServlet("/ConfirmationServlet")
public class ConfirmationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductDB db = new ProductDB();  
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request, response);
	}
	
	private void process(HttpServletRequest request, HttpServletResponse response){
		response.setContentType("text/html");
		int qty = Integer.parseInt(request.getParameter("quantity"));
		
		//save to database//
		Object o = request.getSession(false).getAttribute("product");
		Product p = (Product)o;
		Lineitem item = new Lineitem();
		item.setImage(p.getImage());
		item.setPrice(p.getPrice());
		item.setProductname(p.getProdname());
		item.setProductcost(qty * p.getPrice());
		item.setQuantity(new BigDecimal(qty));
		
		boolean isSuccess = db.addNewLineitem(item);
		if (isSuccess){
		
			//
			try {
				request.setAttribute("qty", qty);
				getServletContext().getRequestDispatcher("/Confirmation.jsp").forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else{
			printError(response);
		}
	}
	
	private void printError(HttpServletResponse response){
		
		try {
			PrintWriter out = response.getWriter();
			
			out.println("<p>Error, failed</>");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
