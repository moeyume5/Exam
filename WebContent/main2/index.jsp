<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>学生</title>

<style>

    body {

        display: flex;

        margin: 0;

        font-family: Arial, sans-serif;

    }

    .menu {

        width: 15%;

        border-right: 1px solid black;

        padding: 10px;

        box-sizing: border-box;

    }

    h2, h3 {

        margin: 0 0 10px 0;

        padding-bottom:10px;

    }

    .content {

		vertical-align top;

		padding-left : 10px;

	}

    ul {

        padding-left: 20px;

    }

    ul li {

    	padding-bottom:10px;

    }

</style>

</head>

<body>

<%--メニュー部 --%>

<div class="menu">

    <h2>メニュー</h2>

    <h3>学生管理</h3>

    <ul>

        <li><a href="../Kadai.java">学生一覧</a></li>

        <li><a href="add.jsp">学生追加</a></li>

        <li><a href="update.jsp">学生更新</a></li>

        <li><a href="student-delete.jsp">学生削除</a></li>

    </ul>

</div>

<%--コンテンツブロック --%>

<div class="content">

    <h1>Topページ</h1>

    <p>学生とコースの管理をするシステムです。<br>左のメニューから、各機能を選択してください。</p>

</div>

</body>

</html>
