package Project;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import Project.ConnectionProvider.*;

/**
 * Servlet implementation class Serverlet1
 */
@WebServlet("/Serverlet1")
public class Serverlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Serverlet1() {
		super();

	}
	
	String Edit_Student_Result(String rn,String s1,String s2,String s3,String s4,String s5,String s6,String s7) {
		try {
			Connection con = ConnectionProvider.getCon();
			Statement st = con.createStatement();
			boolean rs = st.execute("UPDATE `result` SET `sub1`='"+s1+"',`sub2`='"+s2+"',`sub3`='"+s3+"',`sub4`='"+s4+"',`sub5`='"+s5+"',`sub6`='"+s6+"',`sub7`='"+s7+"' WHERE `Roll_no`='"+rn+"'");
			return "updated";
		} catch (SQLException e) {

			return e.toString();
		}
	}

	String Edit_Institute(String id,String pwd,String name,String[] sub,int[] tm,String Cname,String sem,String Rid) {
		try {

			Connection con = ConnectionProvider.getCon();
			Statement st = con.createStatement();
			boolean rs = st.execute(
					"UPDATE `total_marks` SET `sub1`="+tm[0]+",`sub2`="+tm[1]+",`sub3`="+tm[2]+",`sub4`="+tm[3]+",`sub5`="+tm[4]+",`sub6`="+tm[5]+",`sub7`="+tm[6]+",`total`="+tm[7]+"  WHERE `I_ID`='"+id+"' AND `Semister`='"+sem+"'");
			boolean rs1 = st.execute(
					"UPDATE `institute` SET `Name`='"+name+"',`password`='"+pwd+"',`sub1`='"+sub[0]+"',`sub2`='"+sub[1]+"',`sub3`='"+sub[2]+"',`sub4`='"+sub[3]+"',`sub5`='"+sub[4]+"',`sub6`='"+sub[5]+"',`sub7`='"+sub[6]+"' WHERE `ID`='"+id+"' AND `Semister`='"+sem+"'");
		
			return "updated";
		} catch (SQLException e) {
			return e.toString();
		}
	}

	String Edit_Student_Details(String course, String sem, int rn, String name, String mname, String gender) {
		try {
			Connection con = ConnectionProvider.getCon();
			Statement st = con.createStatement();
			boolean rs = st.execute("UPDATE `student` SET `course`='" + course + "',`branch`='" + sem + "', `name`='"
					+ name + "',`fatherName`='" + mname + "',`gender`='" + gender + "' WHERE `rollNo`=" + rn);
			return "updated";
		} catch (SQLException e) {

			return e.toString();
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("source").equalsIgnoreCase("S_D")) {
			String result = Edit_Student_Details(request.getParameter("course"), request.getParameter("sem"),
					Integer.parseInt(request.getParameter("rn")), request.getParameter("name"),
					request.getParameter("motherName"), request.getParameter("gender"));
			if (result.contentEquals("updated"))
				response.sendRedirect("InstituteHome.jsp");
			else
				response.getWriter().append("Served at:Kapil Mode : " + result).append(request.getContextPath());
		} else if (request.getParameter("source").equalsIgnoreCase("S_R")) {
			String result = Edit_Student_Result(request.getParameter("rn"),request.getParameter("s1"),request.getParameter("s2"),request.getParameter("s3"),request.getParameter("s4"),request.getParameter("s5"),request.getParameter("s6"),request.getParameter("s7"));
			if (result.contentEquals("updated"))
				response.sendRedirect("InstituteHome.jsp");
			else
				response.getWriter().append("Served at:Kapil Mode : " + result).append(request.getContextPath());

		} else if (request.getParameter("source").equalsIgnoreCase("I_D")) {
			String name=request.getParameter("ename");
			String id=request.getParameter("ID");
			String pwd=request.getParameter("epwd");
			String Cname=request.getParameter("eCname");
			String sem=request.getParameter("esem");
			String Rid=Cname+" "+sem;
			String[] sub = new String[8];
			for (int i = 0; i < 7; i++) {
				if (request.getParameter("esub" + (i + 1)) != null) {
					sub[i] = request.getParameter("esub" + (i + 1));
				} else
					sub[i] = "null";
			}
			
			int[] tm = new int[8];
			for (int i = 0; i < 7; i++) {
				if (request.getParameter("etm" + (i + 1)) != null) {
					tm[i] = Integer.parseInt(request.getParameter("etm" + (i + 1)));
				} else
					tm[i] = 100;
			}
			for (int i = 0; i < 7; i++)
				tm[7] = tm[7] + tm[i];
			response.getWriter().append("Served at:Kapil Mode : " + id).append(request.getContextPath());
			String result = Edit_Institute(id,pwd,name,sub,tm,Cname,sem,Rid);
			if (result.contentEquals("updated"))
				response.sendRedirect("adminHome2.jsp");
			else
				response.getWriter().append("Served at:Exception Mode :\n\n " + result+"kkk"+sem).append(request.getContextPath());
		}
		else
			response.getWriter().append("Served at:Kapil Mode : source : "+request.getParameter("source")).append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();

	}

}
