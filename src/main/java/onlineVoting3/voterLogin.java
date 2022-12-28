package onlineVoting3;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class voterLogin  extends HttpServlet{
	
	 private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        
       
        
        DatabaseManager db = new DatabaseManager();
		java.sql.Connection  con = db.getConnection();
		String voternum = request.getParameter("VoterNumber");
		try {
        	
			   PreparedStatement preparedStatement1 = con.prepareStatement("select voter_card_number from vote where voter_card_number = '"+voternum+"'");
	           ResultSet rs1= preparedStatement1.executeQuery("select voter_card_number from vote where voter_card_number = '"+voternum+"'");
	           
	           if(rs1.next())
	           {
	        	   
	           response.sendRedirect("voteCheck.jsp");
	          // out.println("You already voted........"+rs1.getString("voter_card_number"));
	           }else
	           {
	        	PreparedStatement preparedStatement2 = con.prepareStatement("select vid,pnumber from voters where voter_card_number = '"+voternum+"'");
	            ResultSet rs =   preparedStatement2.executeQuery("select vid,pnumber from voters where voter_card_number = '"+voternum+"'");
	            if(rs.next()){
	                String contact = rs.getString("pnumber");
	                response.sendRedirect("userWelcome.jsp?con="+contact);
	                
	            }else{
	                out.println("Please enter valid card number");
	            }
	           }
	        } catch (SQLException ex) {
	           
	        }
	       // out.println(voternum);
	}

}
