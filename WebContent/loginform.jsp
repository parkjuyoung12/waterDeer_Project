<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="kr">
<html>
	<!-- LOAD CSS -->
    <link href="./css/login/login.css" rel="stylesheet">
    <link href="./css/login/materialize.min.css" rel="stylesheet">
    <link href="./css/login/material-icons.css" rel="stylesheet">
	<!-- 그냥 제이쿼리 -->
    <script src="./assets/node_modules/jquery/jquery.min.js"></script>
    <!-- JQuery Validate -->
    <script src="./assets/node_modules/jquery/jquery.validate.min.js"></script>
    <script src="./js/login/login.js"></script>
    <script src="./js/login/materialize.min.js"></script>
<head>
<meta charset="UTF-8"> 
<title>로그인</title>
</head>
<body>
<div id="login-page" class="row">
    <div class="col s12 z-depth-4 card-panel">
      <form class="login-form" action="./login.myuk" method="post">
        <div class="row">
          <div class="input-field col s12 center">
            <!-- <img src="images/login-logo.png" alt="" class="circle responsive-img valign profile-image-login"/> -->
            <p class="center login-form-text">LOGIN</p>
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <!-- <i class="mdi-social-person-outline prefix"></i> -->
            <i class="material-icons prefix">account_circle</i>
            <input id="username" name="member_id" type="text" style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR4nGP6zwAAAgcBApocMXEAAAAASUVORK5CYII=&quot;); cursor: auto;"/>
            <label for="username" data-error="wrong" class="center-align" data-success="right">Type your ID</label>            
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <!-- <i class="mdi-action-lock-outline prefix"></i> -->
            <i class="material-icons prefix">vpn_key</i>
            <input id="password" name="member_pw" type="password" style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR4nGP6zwAAAgcBApocMXEAAAAASUVORK5CYII=&quot;);"/>
            <label for="password">Password</label>
          </div>
        </div>
        
        <div class="row">          
          <div class="input-field col s12 login-text">               
          <input type="checkbox" id="test6" checked="checked" />
          <label for="test6" class="pointer-events">Remember me</label>
          </div>
        </div>
        
        <div class="row">
          <div class="input-field col s12">
            <button type="submit" class="btn waves-effect waves-light col s12">Login</button>
          </div>
        </div>
        
        <div class="row">
          <div class="input-field col s6 m6 l6">
            <p class="margin medium-small"><a href="joinform.myuk">Register Now!</a></p>
          </div>
          <div class="input-field col s6 m6 l6">
              <p class="margin right-align medium-small"><a href="pwsearch.jsp">Forgot password ?</a></p>
          </div>          
        </div>
      </form>
    </div>
  </div>
</body>
</html>