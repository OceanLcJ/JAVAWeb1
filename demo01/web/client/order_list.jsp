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
		<link rel="icon" href="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.15/favicon.ico">
		<link rel="canonical" href="https://getbootstrap.com/docs/3.4/examples/offcanvas/">

		<title>购物车页</title>
		<link rel="canonical" href="https://getbootstrap.com/docs/3.4/examples/justified-nav/">

		<title>在线书城首页</title>

		<!-- Custom styles for this template -->
		<link href="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.15/examples/justified-nav/justified-nav.css" rel="stylesheet">

		<!-- Bootstrap core CSS -->
		<link href="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.15/dist/css/bootstrap.min.css" rel="stylesheet">

		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
		<link href="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.15/assets/css/ie10-viewport-bug-workaround.css"
		 rel="stylesheet">

		<!-- Custom styles for this template -->

		<script src="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.15/assets/js/ie-emulation-modes-warning.js"></script>
	</head>

	<body>
		<div class="container">
			<!-- The justified navigation menu is meant for single line per list item.
           Multiple lines will require custom code not provided by Bootstrap. -->
			<%@include file="clientTop.jsp"%>
			<div class="row">
			
			
				<h2 class="sub-header">订单列表</h2>
				<h2 class="sub-header">您共有2笔订单</h2>
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>订单号</th>
								<th>收件人</th>
								<th>订单时间</th>
								<th>状态</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>吴老师</td>
								<td>2021-0911</td>
								<td>未支付</td>
								<td>
									<button class="btn btn-info">查看</button>
									<button class="btn btn-danger">删除</button>
								</td>
							</tr>
							<tr>
								<td>2</td>
								<td>吴老师</td>
								<td>2021-0911</td>
								<td>未支付</td>
								<td>
									<button class="btn btn-info">查看</button>
									<button class="btn btn-danger">删除</button>
								</td>
							</tr>
						</tbody>
					</table>
					
				</div>
			</div>
			

			<hr>

			<footer>
				<p>&copy; 2016 Company, Inc.</p>
			</footer>

		</div>
		<!--/.container-->


		<!-- Bootstrap core JavaScript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ"
		 crossorigin="anonymous"></script>
		<script>
			window.jQuery || document.write(
				'<script src="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.15/assets/js/vendor/jquery.min.js"><\/script>'
			)
		</script>
		<script src="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.15/dist/js/bootstrap.min.js"></script>
		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
		<script src="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.15/assets/js/ie10-viewport-bug-workaround.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.15/examples/offcanvas/offcanvas.js"></script>
	</body>
</html>
