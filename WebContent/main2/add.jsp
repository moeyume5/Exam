<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>学生追加</title>
</head>
<body>
    <div style="float: left; width: 80%;">
        <h2>追加する学生の情報を入力してください。</h2>
        <form action="confirmation.jsp" method="post">
            <label for="studentNumber">学生番号:</label>
            <input type="text" id="studentNumber" name="studentNumber" required><br><br>
            <label for="studentName">学生名:</label>
            <input type="text" id="studentName" name="studentName" required><br><br>
            <label for="course">コース:</label>
            <select id="course" name="course">
                <option value="System Development">システム開発コース</option>
                <option value="Network Engineering">ネットワークエンジニアリングコース</option>
                <option value="Database Management">データベース管理コース</option>
            </select><br><br>
            <input type="submit" value="送信">
        </form>
    </div>
</body>
</html>
