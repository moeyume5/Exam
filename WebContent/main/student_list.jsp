<%-- 学生一覧JSP --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="base.jsp">
 <c:param name="title">
    	得点管理システム
 </c:param>

 <c:param name="scripts"></c:param>

 <c:param name="content">
   <section class="me-4">

<h2 class="h3 mb-3 fw-norma bg-secondary bg-cpacity-10 py-2 px-4">学生管理</h2>
<div class="my-2 text-end px-4">
    <a href="StudentCreate.action">新規登録</a>
</div>
<form method="get">
  <div class="row border mx-3 mb-3 py-2 align-items-center rounded" id="filter">
    <div class="col-4">
      <label class="form-label" for="student-f1-select">入学年度</label>
      <select class="form-select" id="student-f1-select" name="f1">
         <option value="0">--------</option>
         <c:forEach var="year" items="${ent_year_set}">
             <%-- 現在のyearろ選択されていたがf1が一致していた場合selectedを追記 --%>
             <option value="${year}" <c:if test="${year==f1}">selected</c:if>>${year}</option>
         </c:forEach>
      </select>
    </div>
    <div class="col-2 form-check text-center">
      <label class="form-check-label" for="student-f3check">在学中
         <%-- パラメータf3が存在している場合はcheckedを追記 --%>
         <input class="form-input" type="checkbox"
         id="student-f3-check" name="f3" value="t"
         <c:if test="${empty f3}">checked</c:if> />
     </label>
     </div>
     <div class="col-2 text-center">
       <button class="btn btn-secondary" id="filter-button">絞込み</button>
     </div>
     <div class="mt-2 text-warning">${errors.get("f1") }</div>
  </div>
</form>
<c:choose>
  <c:when test="${students.size()>0 }">
    <div>検索結果:${students.size()}件</div>
      <table class="table table-hover">
        <tr>
          <th>入学年度
      </table>
  </c:when>
</c:choose>
</section>
</c:param>
</c:import>