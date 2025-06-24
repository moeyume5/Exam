<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>学生選択</title>
</head>
<body>
    <div style="float: left; width: 20%;">
        <ul>
            <li><a href="#">学生一覧</a></li>
            <li><a href="selectStudent.jsp">学生更新</a></li>
            <li><a href="#">学生削除</a></li>
        </ul>
    </div>
    <div style="float: left; width: 80%;">
        <h2>更新する学生の名前を選択してください。</h2>
        <form action="UpdateStudentServlet" method="post">
            <label for="studentName">学生名:</label>
            <select id="studentName" name="studentName">
                <%
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb", "root", "password");
                        Statement stmt = con.createStatement();
                        ResultSet rs = stmt.executeQuery("SELECT studentName FROM students");
                        while (rs.next()) {
                            String studentName = rs.getString("studentName");
                            out.println("<option value='" + studentName + "'>" + studentName + "</option>");
                        }
                        con.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </select>
            <br><br>
            <input type="submit" value="送信">
        </form>
    </div>
</body>
</html>
