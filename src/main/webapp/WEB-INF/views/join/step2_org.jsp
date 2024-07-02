<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
        function goBack() {
            window.history.back();
        }
        
        function validateForm() {
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("confirmPassword").value;

            if (password !== confirmPassword) {
                alert("비밀번호와 비밀번호 확인이 일치하지 않습니다. 다시 입력해 주세요.");
                return false;
            }
            return true;
        }
        
        
    </script>
</head>
<body>

agree Email : ${param.agreeEmail} 넘어오나 찍어봄 넘어오면 on 으로 오고 안넘어오면 null 인듯

<div>
<h2 class="text-center mb-4">회원 가입 - 정보 입력</h2>
    <ul class="nav nav-pills justify-content-center mb-4">
        <li class="nav-item">
            <a class="nav-link disabled" href="#">1. 약관동의</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="#">2. 정보입력</a>
        </li>
        <li class="nav-item">
            <a class="nav-link disabled" href="#">3. 가입완료</a>
        </li>
    </ul>
    <form action="./step3" method="post" onsubmit="return validateForm()">
        <!-- 약관 동의 폼 데이터 전달 -->
       
       <%--  <input type="hidden" name="agreesms" value="${param.agreesms}"> --%>
        <input type="hidden" name="agreeEmail" value="${param.agreeEmail}">
        
        <!-- 회원 가입 정보 입력 -->
        <div class="form-group mb-3">
            <label for="userId">아이디</label>
            <input type="text" class="form-control" id="id" name="id" required>
        </div>
        <div class="form-group mb-3">
            <label for="password">비밀번호</label>
            <input type="password" class="form-control" id="pw" name="pw" required>
        </div>
        <div class="form-group mb-3">
            <label for="confirmPassword">비밀번호 확인</label>
            <input type="password" class="form-control" id="confirmPw" name="confirmPw" required>
        </div>
        <div class="form-group mb-3">
            <label for="name">이름</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
         <div class="form-group mb-3">
            <label for="name">영문이름</label>
            <input type="text" class="form-control" id="en_name" name="en_name" required>
        </div>
         <div class="form-group mb-3">
            <label for="name">생년월일</label>
            <input type="text" class="form-control" id="birth" name="birth" required>
        </div>
        <div class="form-group mb-3">
            <label for="phone">휴대전화</label>
            <input type="tel" class="form-control" id="phone" name="phone" required>
        </div>
        <div class="form-group mb-3">
            <label for="adrs">주소</label>
            <input type="text" class="form-control" id="adrs" name="adrs" required>
        </div>
        <div class="form-group mb-3">
            <label for="email">이메일</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>
         <div class="form-group mb-3">
            <label for="recomId">추천인코드</label>
            <input type="text" class="form-control" id="recomId" name="recomId" >
        </div>
         <div class="form-group mb-3">
            <label for="proCode">프로모션코드</label>
            <input type="text" class="form-control" id="proCode" name="proCode" >
        </div>
        
        <!-- 버튼 -->
        <div class="text-center">
            <button type="submit" class="btn btn-primary">가입하기</button>
            <button type="button" class="btn btn-secondary" onclick="history.back()">취소</button>
        </div>
    </form>
</div>

</body>
</html>