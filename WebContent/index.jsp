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
      <a class="nav-link" href="insert.jsp">맛집 추가</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="print.jsp">전체 맛집</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">맛집 추천</a>
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
     <img alt="" src="http://cafefiles.naver.net/MjAxODAzMTNfMTkz/MDAxNTIwOTAwNjMyMjgz.wIK25F8sBmzw7LAlRlBwi_jUHRhBLxXnWONloMbRCJog.4vhA0qQNVKPgYpaNDl_pHpdHWvBBv8mYwKLx1pqoNZAg.JPEG.34173a2c/externalFile.jpg">

</div>

</body>
</html>
