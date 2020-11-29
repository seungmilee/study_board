<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물등록</title>
</head>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="resources/base/base.css?after">
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
<style>
.bottom_img{
    font-family: 'Lobster', cursive;
}
.bottom_img img{
    margin:0 auto;
    width:50px;
    height:50px;
}
.fqa_tbl tr td{
    padding :9px 10px;

}
.fqa_tbl{
    background-color:white;
    border-spacing: 0;
    border-collapse: collapse;
    text-align:center;
    margin-left:600px;
    margin-top:100px;
    width:800px
}
.fqa_tbl tr{
    border-bottom: 1px solid #6E6C6C;
}
.fqa_tbl th{
    background-color:#E3DBDB;
    font-size:20px;
    font-family:bold;
}
.fqa_tbl_title1{
    height:80px;

}

.a{
   font-size:1em;
   text-align:left;
}
.a:hover{
  text-decoration:underline;
  color:black;
}
a:visited{
     color:black;
}
a:link{
 color:black;
}
/* textbox */
.b{
   width:500px;
   height:60px;
   font-size:1.5em;
   background-color:transparent;
   border:0 solid black;
   text-align:center;
}
.txt{
   width:700px;
   height:100px;
   font-size:1em;
    background-color:transparent;
   border:0 solid black;
}
.btn{
   width:100px;
   height:40px;
   line-height:40px;
   border:1px gray solid;;
   margin:15px auto;
   background-color:white;
   text-align:center;
   cursor: pointer;
   border-radius: 5px;
   color:#333;
   transition:all 0.9s, color 0.3;
   font-weight:bold;
}

.btn:hover{
   color:black;
   box-shadow: 0 80px 0 0 rgba(0,0,0,0.25) inset, 0 -80px 0 0 rgba(0,0,0,0.25) inset;
}

</style>

<body>
<div style='position:relative;float:left'>
         <table class=fqa_tbl cellspacing="0" cellpadding="1">
            <form action='notice_write' method='post'>
            <tr>
                <td colspan='2'><h1>관리자 작성</h1></td>
            </tr>
            <tr>
                <td class='td1'>제목</td><td><input type=text class=b name=notice_title class='txt' id=notice_title></td>
            </tr>
            <tr>
                <td class='td1'>작성자</td><td><input type=text class=b name=notice_name class='txt' id=notice_name value='${home.member_name}' readonly></td>
            </tr>

            <tr>
                <td class='td1'>내용</td><td><textarea name=content rows=10 id=notice_content class='txt'></textarea></td>
            </tr>
            <tr>
                <td colspan=2 align="right"><input type="submit" class=btn value="글쓰기">&nbsp;&nbsp;
                <a class=a href="/list">목록보기</a></td>
            </tr>
            </form>
        </table>


   </div>
</body>
<script>
    $(document)
    .on('click','#ok',function(){
        $(location).attr('href','search_products?pageNum=1&search='+$('#search').val())
    })
	//notice_list?pageNum=1"
</script>
</html>