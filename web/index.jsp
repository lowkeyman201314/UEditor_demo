<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="./static/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="./static/dist/css/font-awesome.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <form action="editEnd" method="post" class="form-horizontal" role="form">
            <div class="form-group">
                <label for="title" class="col-sm-2 control-label">标题：</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="title" id="title" placeholder="请输入标题">
                </div>
            </div>
            <div class="form-group">
                <label for="mycontainer" class="col-sm-2 control-label">正文：</label>
                <div class="col-sm-10">
                    <!-- 加载编辑器的容器 -->
                    <script id="mycontainer" name="content" type="text/plain"></script>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-primary">提交</button>&emsp;&emsp;&emsp;&emsp;
                    <button type="reset" class="btn btn-danger">取消</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script src="./static/dist/js/jquery-3.4.1.min.js"></script>
<script src="./static/dist/js/bootstrap.min.js"></script>

<!-- 配置文件 -->
<script type="text/javascript" src="static/ueditor/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="static/ueditor/ueditor.all.js"></script>
<!-- 实例化编辑器 -->
<script type="text/javascript">
    var ue = UE.getEditor('mycontainer');

    ue.ready(function () {
        //对编辑器的操作最好在编辑器ready之后再做
        //设置编辑器的内容
        // ue.setContent('hello');
        //获取html内容，返回: <p>hello</p>
        var html = ue.getContent();
        console.log(html);
        //获取纯文本内容，返回: hello
        var txt = ue.getContentTxt();
        console.log(txt);
    });
</script>
</body>
</html>