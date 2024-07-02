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
            var agreeTerms = document.getElementById('agreeTerms').checked;
            var agreePrivacy = document.getElementById('agreePrivacy').checked;

            if (!agreeTerms || !agreePrivacy) {
                alert('이용약관과 개인정보 수집 및 이용에 동의해주셔야 합니다.');
                return false;
            }
            return true;
        }
    </script>
</head>
<body>

<div class="container my-5" style="padding-top: 250px;">
    <h2 class="text-center mb-4">회원 가입</h2>
    <ul class="nav nav-pills justify-content-center mb-4">
        <li class="nav-item">
            <a class="nav-link active" href="#">1. 약관동의</a>
        </li>
        <li class="nav-item">
            <a class="nav-link disabled" href="#">2. 정보입력</a>
        </li>
        <li class="nav-item">
            <a class="nav-link disabled" href="#">3. 가입완료</a>
        </li>
    </ul>
    
    
    <form method="get" action="./step2" onsubmit="return validateForm()">
        <div class="card mb-3">
            <div class="card-header">
                이용약관 동의 (필수)
            </div>
            <div class="card-body">
                <textarea class="form-control mb-3" rows="5" readonly>
                내용입력~~~~
                </textarea>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="agreeTerms">
                    <label class="form-check-label" for="agreeTerms">
                        동의합니다
                    </label>
                </div>
            </div>
        </div>
        <div class="card mb-3">
            <div class="card-header">
                개인정보 수집 및 이용 동의 (필수)
            </div>
            <div class="card-body">
                <textarea class="form-control mb-3" rows="5" readonly>
                내용 입력~~~~
                </textarea>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="agreePrivacy">
                    <label class="form-check-label" for="agreePrivacy">
                        동의합니다
                    </label>
                </div>
            </div>
        </div>
        <div class="card mb-3">
            <div class="card-header">
                쇼핑정보 수신 동의 (선택)
            </div>
            <div class="card-body">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="agreeShoppingEmail"
                    name="agreeEmail">
                    <label class="form-check-label" for="agreeShoppingEmail">
                        이메일 수신 동의
                    </label>
                </div>
            </div>
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-primary">다음</button>
            <button type="button" class="btn btn-secondary" onclick="goBack()">취소</button>
        </div>
    </form>
</div>


</body>
</html>