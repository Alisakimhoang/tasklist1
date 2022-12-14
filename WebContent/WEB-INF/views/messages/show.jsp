<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
 <c:choose>
            <c:when test="${message != null}">
        <h2>id : ${message.id} message details page (メッセージ詳細ページ)</h2>

        <p>Tittle (タイトル)：<c:out value="${message.title}" /></p>
        <p>Message (メッセージ)：<c:out value="${message.content}" /></p>
        <p>Create date(作成日時)：<fmt:formatDate value="${message.created_at}" pattern="yyyy-MM-dd HH:mm:ss" /></p>
        <p>Update date(更新日時)：<fmt:formatDate value="${message.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" /></p>

        <p><a href="${pageContext.request.contextPath}/index">Return to List (一覧に戻る)</a></p>
        <p><a href="${pageContext.request.contextPath}/edit?id=${message.id}">Edit this message (このメッセージを編集する)</a></p>

     </c:when>
            <c:otherwise>
                <h2>The data you are looking for was not found (お探しのデータは見つかりませんでした)</h2>
            </c:otherwise>
        </c:choose>
    </c:param>
</c:import>