<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	var html = "";
  $("button").click(function(){
    $.getJSON("http://220.149.132.80:8080/food/search.jsp", function(result){
//     	console.log(result.lastBuildDate);
//     	console.log(result['total']);
//     	console.log(result['items']);  // 똑같다
//     	console.log(result.items);     // 똑같다
      $.each(result.items, function(i, field){
        html += "<a href='" + field.link + "'>" + field.title + "</a><br>" ;
      });
    	$('div').html(html);
    });
  });
});
</script>
</head>
<body>

<button>Get JSON data</button>

<div></div>


</body>
</html>
