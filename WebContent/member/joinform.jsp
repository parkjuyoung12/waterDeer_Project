<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lnag="ko">
    <head>
        <meta charset="UTF-8">
        <title>회원가입</title>
        <link rel="stylesheet" href="new_main.css">
        
    </head>
    <body>
        <!-- header -->
        <div id="header">
            <a href="#"  title=""><img src="./assets/images/logo-text.png" id="logo"></a>
        </div>


        <!-- wrapper -->
        <div id="wrapper">

            <!-- content-->
            <div id="content">

                <!-- PROF/STUD POSITION -->
                <div>
                    <h3 class="join_title"><label for="gender">POSITION</label></h3>
                    <span class="box gender_code">
                        <select id="position" class="sel" name="member_position">
                        	<optgroup label="직책"></optgroup>
                            <option value="PROF">PROF</option>
                            <option value="STUD" selected="selected">STUD</option>
                        </select>
                    </span>
                    <span class="error_next_box"></span>
                </div>
                
                <!-- ID -->
                <div>
                    <h3 class="join_title">
                        <label for="id">LOGIN ID</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="id" class="int" maxlength="20" name="member_id">
                    </span>
                    <span class="error_next_box"></span>
                </div>
                
                <!-- STUD NUMB -->
                <div>
                    <h3 class="join_title">
                        <label for="id">STUD NUMB.</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="numb" class="int" maxlength="20" name="member_numb">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW1 -->
                <div>
                    <h3 class="join_title"><label for="pswd1">PASSWORD</label></h3>
                    <span class="box int_pass">
                        <input type="password" id="pswd1" class="int" maxlength="20" name="number_pw">
                        <span id="alertTxt">사용불가</span>
                        <img src="./css/login/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW2 -->
                <div>
                    <h3 class="join_title"><label for="pswd2">PASSWORD CHECK</label></h3>
                    <span class="box int_pass_check">
                        <input type="password" id="pswd2" class="int" maxlength="20">
                        <img src="./css/login/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- NAME -->
                <div>
                    <h3 class="join_title"><label for="name">NAME</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" class="int" maxlength="20" name="member_name">
                    </span>
                    <span class="error_next_box"></span>
                </div>
                
                 <!-- 학과 -->
                <div>
                    <h3 class="join_title"><label for="gender">DEPARTMENT</label></h3>
                    <span class="box gender_code">
                        <select id="dept_code" class="sel" name="dept_code">
                        	<optgroup label="공과대학"></optgroup>
                            <option value="DEPT-1">컴퓨터공학과</option>
                            <option value="DEPT-2">정보보안학과</option>
                        	<optgroup label="자연대학"></optgroup>
                            <option value="DEPT-3">수학과</option>
                            <option value="DEPT-4">화학과</option>
                        </select>
                    </span>
                    <span class="error_next_box"></span>
                </div>
                
                <!-- ADDRESS -->
                <div>
                    <h3 class="join_title"><label for="name" >ADDRESS(KOREA)</label></h3>
                    <span class="box int_name">
                        <input type="text" id="address" class="int" maxlength="20" name="member_address">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- BIRTH -->
                <div>
                    <h3 class="join_title"><label for="yy">BIRTH</label></h3>

                    <div id="bir_wrap">
                        <!-- BIRTH_YY -->
                        <div id="bir_yy">
                            <span class="box">
                                <input type="text" id="yy" class="int" maxlength="4" placeholder="YEAR(yyyy)">
                            </span>
                        </div>

                        <!-- BIRTH_MM -->
                        <div id="bir_mm">
                            <span class="box">
                                <select id="mm" class="sel">
                                    <option>MONTH</option>
                                    <option value="01">1</option>
                                    <option value="02">2</option>
                                    <option value="03">3</option>
                                    <option value="04">4</option>
                                    <option value="05">5</option>
                                    <option value="06">6</option>
                                    <option value="07">7</option>
                                    <option value="08">8</option>
                                    <option value="09">9</option>                                    
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                            </span>
                        </div>

                        <!-- BIRTH_DD -->
                        <div id="bir_dd">
                            <span class="box">
                                <input type="text" id="dd" class="int" maxlength="2" placeholder="DAY">
                            </span>
                        </div>

                    </div>
                    <span class="error_next_box"></span>    
                </div>

                <!-- GENDER -->
                <div>
                    <h3 class="join_title"><label for="gender">GENDER</label></h3>
                    <span class="box gender_code">
                        <select id="gender" class="sel" name="member_gender">
                            <optgroup label="GENDER"></optgroup>
                            <option value="M">MALE</option>
                            <option value="F">FEMALE</option>
                        </select>                            
                    </span>
                    <span class="error_next_box">필수 정보입니다.</span>
                </div>

                <!-- MOBILE -->
                <div>
                    <h3 class="join_title"><label for="phoneNo">PHONE</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="mobile" class="int" maxlength="16" placeholder="Ex) 010-1234-5678" name="member_phone">
                    </span>
                    <span class="error_next_box"></span>    
                </div>
				
                <!-- JOIN BTN-->
                <div class="btn_area">
                    <button type="button" id="btnJoin" onclick="goJoin()">
                        <span>JOIN</span>
                    </button>
                </div>

            </div> 
            <!-- content-->
        </div> 
        <!-- wrapper -->
    <script src="./js/join/join-form.js"></script>
    <script src="./js/join/joinAction.js"></script>
    </body>
</html>