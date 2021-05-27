<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>局部刷新</title>
    <script type="text/javascript">
        function doAjax() {
            var vmlHttp = new XMLHttpRequest();

            xmlHttp.onreadystatechange = function () {
                if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
                    alert(xmlHttp.responseText);
                }

                xmlHttp.open("get", "bmiAjax", true);

                xmlHttp.send();
            }
        }
    </script>
</head>
<body>
 <p>局部刷新——计算bmi</p>
<div>
    姓名：<input type="text" id="name"/><br/>
    体重:<input type="text" id="w"/><br/>
    身高：<input type="text" id="h"/><br/>
    <input type="button" value="计算bmi" onclick="doAjax()">
</div>
</body>
</html>