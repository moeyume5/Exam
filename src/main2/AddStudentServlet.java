package main2;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddStudentServlet")
public class AddStudentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String studentNumber = request.getParameter("studentNumber");
        String studentName = request.getParameter("studentName");
        String course = request.getParameter("course");

        // Here, you would typically add the student to a database.
        // For this example, we'll just print the information to the console.
        System.out.println("学生番号: " + studentNumber);
        System.out.println("学生名: " + studentName);
        System.out.println("コース: " + course);

        // Redirect to a confirmation page or back to the form
        response.sendRedirect("confirmation.jsp");
    }
}
