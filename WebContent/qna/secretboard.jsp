<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="result" items="${resultList}" varStatus="status">
    <tr style="text-align:center;">
        <td><c:out value="${result.cs_idx}"/></td>                    
        <td><c:out value="${result.cs_type}"/></td>
        <td><c:out value="${result.cs_area}"/></td>
        <td>    
        <c:if test="${result.cs_open eq 'N'}" >
            <img src="${pageContext.request.contextPath}/img/bbs/icn_security.png" alt="비밀글" />
            <c:choose>
                <c:when test="${result.me_fkid eq loginVO.id || admincode eq '1'}">
                    <c:out value="${result.cs_title}"/>
                </c:when>
                <c:otherwise>비밀글은 작성자와 관리자만 볼 수 있습니다.</c:otherwise>
            </c:choose>
        </c:if>
        <c:if test="${result.cs_open eq 'Y'}" >
            <c:out value="${result.cs_title}"/>
        </c:if>
        </td>
        <%-- <td><c:out value="${result.cs_title}"/></td> --%>
        <td><c:out value="${result.cs_biz}"/></td>            
        <td><c:out value="${result.cs_leader_name}"/></td>            
        <td><c:out value="${result.cs_expertmb}"/></td>
        <td><c:out value="${result.cs_regdate}"/></td>            
        <td><c:out value="${result.cs_state}"/></td>            
    </tr>
</c:forEach>
</body>
</html>