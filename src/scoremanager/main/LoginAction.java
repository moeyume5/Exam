package scoremanager.main;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

//import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns={"/main/LoginAction"})
public class LoginAction extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        request.getRequestDispatcher("login-in.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        doGet(request, response);
    }
}
/*
public class LoginAction extends Action {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();
//		PrintWriter out = response.getWriter();

	    public void doGet(HttpServletRequest request, HttpServletResponse response)
	    	    throws ServletException, IOException {
	    	        request.getRequestDispatcher("login-in.jsp").forward(request, response);
	    	    }
		
		String id=request.getParameter("login");
		String password=request.getParameter("password");

		System.out.println(id);
		System.out.println(password);
		
		TeacherDAO dao=new TeacherDAO();
		Teacher teacher=dao.search(id, password);
		
		System.out.println(teacher);

		if (teacher!=null) {
			session.setAttribute("teacher", teacher);
			return "login-out.jsp";
		}

		return "login-error.jsp";
	}
}
*/