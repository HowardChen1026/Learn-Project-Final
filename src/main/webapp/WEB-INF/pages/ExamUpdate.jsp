<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,fourth.bean.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
    <style>
        .tb{
        	
	        cellspacing: 2  ;
	        cellpadding: 1  ;
	        border: solid 3px gray;
            width: 600px;
            margin: auto;
        }
        
       .divform{
    		
    		width: 1000px;
    		margin:auto;
    	}
    	
/*     	td{ */
/*     		border: solid 1px black; */
/*     	} */
        .alert {
            color: red;
        }
    </style>
</head>
<body>
	<jsp:include page="BackendHeader.jsp" />
    <br>
	<br>
	<br>
	<br>
	<%
	String warn =(String) request.getAttribute("warn");
	%>
	<div class="divform">
    <form action="InsUpController" method="post" enctype="multipart/form-data" onsubmit="return check()">
    
        <table class="tb">
            <tr>
                <td>
                    <label>考卷名稱:</label>
                    <input type="text" name="examName" id="name"  size="10" maxlength="10">
                </td>
                <td>
                	${memAttribute.examName}
                	<span class="alert" id="spExamName"></span>
                </td>
            </tr>
            <tr>
                <td>
                    <label>科目:</label>
                    <select name="subject" size="1">
                        <option value="數學">數學</option>
                        <option value="英文">英文</option>
                        <option value="國文">國文</option>
                    </select>
                    <label>程度:</label>
                    <select name="education" size="1">
                        <option value="國中">國中</option>
                        <option value="高中">高中</option>
                        <option value="成人">成人</option>
                    </select>
                </td>
                <td>
                	${memAttribute.subject}
                	${memAttribute.education}
                </td>
            </tr>
            <tr>
                <td>
                    <label>日期:</label>
                    <input type="text" name="examDate" id="examDate"  maxlength="15">
                </td>
                <td>
                	${memAttribute.examDate}
<!--                 	<span class="alert" id="spExamDate"></span> -->
                </td>
            </tr>
            <tr>
                <td>
                    <label>圖片:</label>
                    <input type="file" name="myfile" id="">
                </td>
                <td>
                    ${memAttribute.examPic}
                </td>
            </tr>
            <tr>
                <td>
                    <center>
                    	<input type="hidden" name="examID" value="${memAttribute.examID}">
                        <input type="submit" name="todo" value="update" onclick="if( !(confirm('確認修改?') ) ) return false">
                    </center>
                </td>
                <%if (warn != null) { %> 
                <td>
                	<%=warn%>
                </td>
                <%}%>
            </tr>
        </table>
    </form>
    </div>
    
    <script type="text/javascript" src="${pageContext.request.contextPath}/ExamFrontCheck.js"></script>
    
</body>


</html>