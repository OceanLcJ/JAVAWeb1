<%@ page import="java.util.List" %>
<%@ page import="com.lcj.entity.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.14/favicon.ico">
    <link rel="canonical" href="https://getbootstrap.com/docs/3.4/examples/dashboard/">

    <title>在线书城后台管理系统</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.14/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.14/assets/css/ie10-viewport-bug-workaround.css"
          rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.14/examples/dashboard/dashboard.css"
          rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.14/assets/js/ie8-responsive-file-warning.js"></script>
    <![endif]-->
    <script src="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.14/assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="./js/jquery-1.11.3.min.js"></script>
</head>
<%
    List<Product> products = (List<Product>) request.getAttribute("products");
%>
<body>

<%@include file="adminNav.jsp" %>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li><a href="index.jsp">总览 <span class="sr-only">(current)</span></a></li>
                <li class="active"><a href="product_list.jsp">商品管理</a></li>
                <li><a href="#">订单管理</a></li>
                <li><a href="#">用户管理</a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h2 class="sub-header">商品列表</h2>
            <!-- 绑定模态框按钮 -->
            <button class="btn btn-primary" id="btn-initInsertProductModal" data-toggle="modal" data-target="#productModal">添加商品</button>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>商品ID</th>
                        <th>商品名称</th>
                        <th>商品价格</th>
                        <th>商品分类</th>
                        <th>商品数量</th>
                        <th>商品图片</th>
                        <th>商品描述</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        for (int i = 0; i < products.size(); i++) {
                            Product product = products.get(i);
                    %>

                    <tr>
                        <td><%=product.getId()%>
                        </td>
                        <td><%=product.getName()%>
                        </td>
                        <td><%=product.getPrice()%>
                        </td>
                        <td><%=product.getCategory()%>
                        </td>
                        <td><%=product.getpNum()%>
                        </td>
                        <td>
                            <img src="./Upload/<%=product.getImgUrl()%>" style="width: 150px; height: 150px;" alt="..."
                                 class="img-thumbnail">
                        </td>
                        <td><%=product.getDescription()%>
                        </td>
                        <td>
                            <button class="btn btn-info" data-toggle="modal" data-target="#productModal">修改</button>
                            <button class="btn btn-danger">删除</button>
                        </td>
                    </tr>
                    <%
                        }
                    %>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- 商品模态框部分 -->
<!-- Modal -->
<div class="modal fade" id="productModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form class="form-horizontal" id="product-form" method="get" action="./product.do">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel">商品添加</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-10">
                            <input type="hidden" id="action" name="action" value="insert">
                            <input type="hidden" id="id" name="id" value="">
                            <div class="form-group">
                                <label for="productName" class="col-sm-3 control-label">商品名称</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="productName" name="productName"
                                           placeholder="商品名称">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="price" class="col-sm-3 control-label">商品价格</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="price" name="price" placeholder="商品价格">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="category" class="col-sm-3 control-label">商品分类</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="category" name="category"
                                           placeholder="商品分类">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="pNum" class="col-sm-3 control-label">商品数量</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="pNum" name="pNum" placeholder="商品数量">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="imgUrl" class="col-sm-3 control-label">商品图片</label>
                                <div class="col-sm-9">
                                    <input type="file" class="form-control" id="imgUrl" name="imgUrl"
                                           placeholder="请上传商品图片">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="description" class="col-sm-3 control-label">商品描述</label>
                                <div class="col-sm-9">
                                    <textarea class="form-control" id="description" name="description"
                                              placeholder="商品描述"></textarea>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-1"></div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="submit" class="btn btn-primary">保存</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $('#btn-initInsertProductModal').click(function () {
        //修改模态框标题
        $('#myModalLabel').text('商品添加');
        //取出form jq对象封装的DOM对象， 调用reset（）方法
        $('#product-form')[0].reset();
        $('textarea[name="description"]').text('');
        //修改action=insert
        $(':input[name="action"]').val('insert');
        //回填id
        $(':input[name="id"]').val('');
    });
    $('.btn-info').click(function () {
        var productId = $(this).parents("tr").children("td:eq(0)").text().trim();
        var name = $(this).parents("tr").children("td:eq(1)").text().trim();
        var price = $(this).parents("tr").children("td:eq(2)").text().trim();
        var category = $(this).parents("tr").children("td:eq(3)").text().trim();
        var pNum = $(this).parents("tr").children("td:eq(4)").text().trim();
        var description = $(this).parents("tr").children("td:eq(6)").text().trim();
        $(':input[name="productName"]').val(name);
        $(':input[name="price"]').val(price);
        $(':input[name="category"]').val(category);
        $(':input[name="pNum"]').val(pNum);
        $('textarea[name="description"]').text(description);
        //修改action=update
        $(':input[name="action"]').val('update');
        //回填商品ID
        $(':input[name="id"]').val(productId);
        //修改模态框标题
        $('#myModalLabel').text('商品修改');
    })
    var deleteAlert = function (id) {
        swal({
            title: "确认删除",
            text: "是否确认删除该条记录",
            icon: "warning",
            buttons: {
                catch: {
                    text: "确认",
                    value: true
                },
                cancel: "取消"
            }
        }).then(function (isOk) {
            console.log(isOk);
            if (isOk) {
                //调用删除记录的方法
                location.href = "./product.do?action=delete&id=" + id;
            }
        });
    }
    $(function () {
        $('.btn-danger').click(function () {
            var productId = $(this).parents("tr").children("td:eq(0)").text();
            deleteAlert(productId);
        });
    })
</script>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"
        integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ"
        crossorigin="anonymous"></script>
<script>
    window.jQuery || document.write(
        '<script src="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.14/assets/js/vendor/jquery.min.js"><\/script>'
    )
</script>
<script src="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.14/dist/js/bootstrap.min.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<script src="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.14/assets/js/vendor/holder.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.14/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
