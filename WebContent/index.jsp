<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="index.jsp">4학4</a>
  
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="store.jsp">맛집 추가</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="print.jsp">전체 맛집</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="random.jsp">맛집 추천</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="star.jsp">평가 하기</a>
    </li>
  </ul>
  
  <form class="form-inline" action="/action_page.php">
    <input class="form-control mr-sm-2" type="text" placeholder="Search">
    <button class="btn btn-success" type="submit">Search</button>
  </form>
</nav>

<div class="container-fluid">
  <h3>4학사</h3>
  <p>맛집을 추천 드려요~</p>
     <img alt="" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxNzA3MDZfMjc2%2FMDAxNDk5MzEyNTk2ODg3.UziuOOusBsgrOF_l-KBI9Rn4YyDqDFR1XAr46pNDNq4g.mExJgGXk_DmkTbR4jk1siGPy4dLcEpxGy63MTqZFiYcg.JPEG.noxio4%2FNaverBlog_20170706_124316_06.jpg&type=b400">

</div>

 <!-- The Modal 시작 -->
  <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">평가하기</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
    	 <div class="starRev">						
		<span class="starR on">1</span>						
		<span class="starR">2</span>						
		<span class="starR">3</span>						
		<span class="starR">4</span>						
		<span class="starR">5</span>						
		</div>	
            
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" id="submit">평가하기</button>
          <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
        </div>
        
      </div>
    </div>
  </div>
<!--  모달 끝 -->		

</body>
</html>
