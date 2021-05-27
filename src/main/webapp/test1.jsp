<%--
  Created by IntelliJ IDEA.
  User: A
  Date: 2021/5/25
  Time: 9:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<html>
<head>
    <title>Title</title>
    <base href="<%=basePath%>"/>
    <script src="js/jquery-3.5.1.js"></script>
    <script>
        $(function (){
            // $("#msg").html(123);

            $("#djBtn").click(function (){
                // $("#msg").html(1222);

                $.ajax({
                    url:"myServlet02.do",
                    type:"get",
                    dataType:"json",
                    success:function (data){
                        // $("#msg").html(data);

                        // alert(data);

                        $("#id1").html(data.id);
                        $("#name1").html(data.name);
                        $("#age1").html(data.age);
                    }
                })
            })
        })
    </script>
</head>
<body>
gggg

<button id="djBtn">button111</button>
<br/>
<br/>
学生1:<br/>
编号:<span id="id1"></span><br/>
姓名:<span id="name1"></span><br/>
年龄:<span id="age1"></span><br/>

<div id="msg" style="width:200px;height: 200px;background-color: pink">


</div>

<br/>

<div style="width:200px;height: 200px;background-color: pink">

    dfgh
</div>

</body>
</html>
