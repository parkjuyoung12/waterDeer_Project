<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li> <a class="waves-effect waves-dark" href="index.html" aria-expanded="false"><i
                                    class="fa fa-tachometer"></i><span class="hide-menu">Dashboard</span></a>
                        </li>
                        <li> <a class="waves-effect waves-dark" href="pages-profile.myuk" aria-expanded="false"><i
                                    class="fa fa-user-circle-o"></i><span class="hide-menu">Profile</span></a>
                        </li>
                        <li> <a class="waves-effect waves-dark" href="noticeList.myuk" aria-expanded="false"><i
                                    class="fa fa-table"></i><span class="hide-menu">공지사항</span></a>
                        </li>
                        <li> <a class="waves-effect waves-dark" href="qnaboard.myuk" aria-expanded="false"><i
                                    class="fa fa-table"></i><span class="hide-menu">질의응답</span></a>
                        </li>
                       
                        <c:if test="${sessionScope.loginUser.member_position == 'STUD'}">
	                        <li> <a class="waves-effect waves-dark" href="selectcredit.myuk" aria-expanded="false"><i
	                                    class="fa fa-bookmark-o"></i><span class="hide-menu">수강 신청</span></a>
	                        </li>
	                        <li> <a class="waves-effect waves-dark" href="creditinsert1.myuk" aria-expanded="false"><i
	                                    class="fa fa-bookmark-o"></i><span class="hide-menu">성적 조회</span></a>
	                        </li>
                        </c:if>
                        
                        <c:if test="${sessionScope.loginUser.member_position == 'PROF'}">
                        	<%-- TODO 강의를 듣는 수강생 목록을 출력. 성적 입력 가능. --%>
	                        <li> <a class="waves-eff	ct waves-dark" href="creditinsert.myuk" aria-expanded="false"><i
	                                    class="fa fa-bookmark-o"></i><span class="hide-menu">수강생 관리</span></a>
	                        </li>
                        	<%-- TODO 교수가 강의하고 있는 과목들 출력. 강의 등록 가능. --%>
	                        <li> <a class="waves-effect waves-dark" href="lecture.myuk" aria-expanded="false"><i
	                                    class="fa fa-bookmark-o"></i><span class="hide-menu">강의 관리</span></a>
	                        </li>
                        </c:if>
                        
                         <!-- <li> <a class="waves-effect waves-dark" href="icon-fontawesome.myuk" aria-expanded="false"><i
                                    class="fa fa-smile-o"></i><span class="hide-menu">Icons</span></a>
                        </li> -->
                        <li> <a class="waves-effect waves-dark" href="map-google.myuk" aria-expanded="false"><i
                                    class="fa fa-globe"></i><span class="hide-menu">찾아오는길</span></a>
                        </li>
<!--                         <li> <a class="waves-effect waves-dark" href="pages-error-404.myuk" aria-expanded="false"><i
                                    class="fa fa-question-circle"></i><span class="hide-menu">404</span></a>
                        </li>
 -->                    </ul>
                </nav>
</body>
</html>