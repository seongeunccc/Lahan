<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<form action="regiBookAction.ad" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="title">책 제목</label>
            <input type="text" class="form-control" id="title" name="title" required>
        </div>
        <div class="form-group">
            <label for="price">대여 가격</label>
            <input type="number" class="form-control" id="price" name="price" required>
        </div>
        <div class="form-group">
            <label for="disprice">할인 가격</label>
            <input type="number" class="form-control" id="disprice" name="disprice" required>
        </div>
        <div class="form-group">
            <label for="disperid">할인 기간</label>
            <input type="text" class="form-control" id="disperiod" name="disperiod" placeholder="24.01.01~24.12.31" required>
        </div>
        <div class="form-group">
            <label for="booknum">단행권 수</label>
            <input type="number" class="form-control" id="booknum" name="booknum" required>
        </div>
        <div class="form-group">
            <label for="bookcompleted">완결 여부</label>
            <select class="form-control" id="bookcompleted" name="bookcompleted" required>
                <option value="y">완결</option>
                <option value="n">미완결</option>
            </select>
        </div>
         <div class="form-group">
            <label for="bookimg">책 이미지</label>
            <input type="file" class="form-control-file" id="bookimg" name="bookimg" accept="image/*">
        </div> 
        <button type="submit" class="btn btn-primary">등록</button>
    </form>

</body>
</html>