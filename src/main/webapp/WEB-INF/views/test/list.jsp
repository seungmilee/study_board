<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판목록</title>
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
    margin-left:500px;
    margin-top:100px;
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
   font-size:2em;

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
</style>

<body>
<%@ include file = "list.jsp" %>
<div style='position:relative;float:left'>
         <div style='font-size:0.5em;'>
            <table class="fqa_tbl" id='lists' style='width:1000px; align=center;text-align:center; '>
            <tr style='text-align:left;font-size:2em'>
            <td colspan='3'><p style='margin:0 auto; font-size:2em;text-align:left;'>Notice</p></td>
            <tr>
                <tr class=table_tr>
                <th class='fqa_tbl_title1' align=center style='width:50px'>번호</th>
                <th style='width:100px'>작성자</th>
                <th style='width:1000px'>제목</th>
                </tr>
            <c:forEach items="${notice}" var="dao">
            <tr onmouseover="this.style.background='#EAE6E6';" onmouseout="this.style.background='white';">
                <td style='font-size:2em;align=center'>${dao.noticeNo}</td>
                <td style='font-size:2em'>${dao.name}</td>
                <td><a style='color:black;font-size:2em' href="#">${dao.title}</a></td>
            </tr>
            </c:forEach>
            <tr >
                <td style='text-align:right;'></td>
              <td style='align:right;font-size:2em'>
                  <c:if test="${startyes eq 1}">
                  <a  style='color:black;' href="notice_list?pageNum=${back}">[이전]</a>
                  </c:if>
                  <ul class=pageNum>
                  <c:forEach items='${num}' var='n'>
                <li><a href='notice_list?pageNum=${n}' id="${n}">${n}</a></li>
                </c:forEach>
                </ul>
                <c:if test="${endno eq 1}">
                <a  style='color:black;' href="notice_list?pageNum=${nexts}">[다음]</a>
               </c:if>
               </td>
                <td style='float:right; width:71px'>
               <a class=a href="write">글쓰기</a>
                </td>
            </tr>
            </table>
        </div>


   </div>
</body>
<script>
    $(document)
    .on('click','#ok',function(){
        $(location).attr('href','search_products?pageNum=1&search='+$('#search').val());
    })

</script>
</html>