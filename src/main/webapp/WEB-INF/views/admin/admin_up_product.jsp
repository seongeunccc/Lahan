<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="./upproductCommand" method="post" enctype="multipart/form-data">

        <div class="form-group">
            <label for="proId">상품 아이디 : </label>
            <input type="text" class="form-control" id="proId" name="proId" required>
        </div>
        <div class="form-group">
            <label for="proName">상품명 : </label>
            <input type="text" class="form-control" id="proName" name="proName" required>
        </div>
        <div class="form-group">
            <label for="proTitle">상품안내 제목 : </label>
            <input type="text" class="form-control" id="proTitle" name="proTitle" required>
        </div>
        <div class="form-group">
            <label for="proScript">상품안내 설명 : </label>
            <input type="text" class="form-control" id="proScript" name="proScript" required>
        </div>
        
         <div class="form-group">
            <label for="proQuant">상품 수량 : </label>
            <input type="number" class="form-control" id="proQuant" name="proQuant" required>
        </div>
        
        <div class="form-group">
            <label for="proPrice">상품 금액 : </label>
            <input type="number" class="form-control" id="proPrice" name="proPrice" required>
        </div>
        
        <div class="form-group">
            <label for="proPriceDis">상품 할인금액 : </label>
            <input type="number" class="form-control" id="proPriceDis" name="proPriceDis" required>
        </div>
     
         <div class="form-group">
            <label for="proFile">제품이미지</label>
            <input type="file" class="form-control-file" id="proFile" name="proFile" />
        </div> 
        
          <div class="form-group">
            <label for="proCate">상품 카테고리 : </label>
            <select class="form-control" id="proCate" name="proCate" required>
                <option value="PB">PB</option>
                <option value="상품권">상품권</option>
                <option value="선물세트">선물세트</option>
                
            </select>
        </div>
        
        
        
        <button type="submit" class="btn btn-primary">등록</button>
    </form>

</body>
</html>