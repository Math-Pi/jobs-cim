<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>招聘信息管理系统</title>
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<!-- MetisMenu CSS -->
	<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />
	<!-- DataTables CSS -->
	<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />
	<!-- Custom CSS -->
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />
	<!-- Custom Fonts -->
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="wrapper">
  <!-- 导航栏部分 -->
  <nav class="navbar navbar-default navbar-static-top" role="navigation"
		 style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand" href="<%=basePath%>customer/list.action">招聘信息管理系统</a>
	</div>
	<!-- 导航栏右侧图标部分 -->
	<ul class="nav navbar-top-links navbar-right">
	    <!-- 邮件通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-envelope fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-messages">
				<li>
				    <a href="#">
						<div>
							<strong>陈同学</strong> <span class="pull-right text-muted">
								<em>昨天</em>
							</span>
						</div>
						<div>你的简历已通过，明天9:00请准时过来面试...</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#">
				        <strong>查看全部消息</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul>
		</li>
		<!-- 邮件通知 end -->
		<!-- 任务通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
			    <i class="fa fa-tasks fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-tasks">
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 1</strong> 
								<span class="pull-right text-muted">完成40%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%">
									<span class="sr-only">完成40%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 2</strong> 
								<span class="pull-right text-muted">完成20%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-info" role="progressbar"
									aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
									style="width: 20%">
									<span class="sr-only">完成20%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有任务</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 任务通知 end -->
		<!-- 消息通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-bell fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-alerts">
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-comment fa-fw"></i> 新回复 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-envelope fa-fw"></i> 新消息 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-tasks fa-fw"></i> 新任务 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-upload fa-fw"></i> 服务器重启 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有提醒</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 消息通知 end -->
		<!-- 用户信息和系统设置 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#"><i class="fa fa-user fa-fw"></i>
				               用户：${USER_SESSION.user_name}
				    </a>
				</li>
				<li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
				<li class="divider"></li>
				<li>
					<a href="${pageContext.request.contextPath }/logout.action">
					<i class="fa fa-sign-out fa-fw"></i>退出登录
					</a>
				</li>
			</ul> 
		</li>
		<!-- 用户信息和系统设置结束 -->
	</ul>
	<!-- 左侧显示列表部分 start-->
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="查询内容...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
							</button>
						</span>
					</div> 
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/company/list.action" class="active">
				      <i class="fa fa-edit fa-fw"></i> 招聘信息管理
				    </a>
				</li>
				<li>
				    <a href="#">
				      <i class="fa fa-dashboard fa-fw" ></i> 拜访
				    </a>
				</li>
			</ul>
		</div>
	</div>
	<!-- 左侧显示列表部分 end--> 
  </nav>
    <!-- 客户列表查询部分  start-->
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">招聘信息管理</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body">
				<form class="form-inline" method="get" 
				      action="${pageContext.request.contextPath }/company/list.action">
					<div class="form-group">
						<label for="customerName">公司名称</label> 
						<input type="text" class="form-control" id="companyrName" 
						                   value="${comName }" name="comName" />
					</div>
					<div class="form-group">
						<label for="companyFrom">招聘来源</label> 
						<select	class="form-control" id="companyFrom" name="comSource">
							<option value="">--请选择--</option>
							<c:forEach items="${fromType}" var="item">
								<option value="${item.dict_id}"
								       <c:if test="${item.dict_id == comSource}">selected</c:if>>
								    ${item.dict_item_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="comIndustry">招聘行业</label> 
						<select	class="form-control" id="comIndustry"  name="comIndustry">
							<option value="">--请选择--</option>
							<c:forEach items="${industryType}" var="item">
								<option value="${item.dict_id}"
								        <c:if test="${item.dict_id == comIndustry}"> selected</c:if>>
								    ${item.dict_item_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="comPeople">公司人数</label>
						<select	class="form-control" id="comPeople" name="comPeople">
							<option value="">--请选择--</option>
							<c:forEach items="${peopleType}" var="item">
								<option value="${item.dict_id}"
								        <c:if test="${item.dict_id == comPeople}"> selected</c:if>>
								    ${item.dict_item_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="comMoney">招聘薪酬</label>
						<select	class="form-control" id="comMoney" name="comMoney">
							<option value="">--请选择--</option>
							<c:forEach items="${moneyType}" var="item">
								<option value="${item.dict_id}"
								        <c:if test="${item.dict_id == comMoneyl}"> selected</c:if>>
								    ${item.dict_item_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<button type="submit" class="btn btn-primary">查询</button>
				</form>
			</div>
		</div>
		<a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newCustomerDialog" onclick="clearCompany()">新建</a>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">招聘信息列表</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>编号</th>
								<th>公司名称</th>
								<th>招聘来源</th>
								<th>招聘行业</th>
								<th>公司人数</th>
								<th>招聘薪酬</th>
								<th>学历要求</th>
								<th>公司地址</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.rows}" var="row">
								<tr>
									<td>${row.com_id}</td>
									<td>${row.com_name}</td>
									<td>${row.com_source}</td>
									<td>${row.com_industry}</td>
									<td>${row.com_people}</td>
									<td>${row.com_money}</td>
								    <td>${row.com_education}</td>
								    <td>${row.com_address}</td>
									<td>
										<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick= "editCompany(${row.com_id})">修改</a>
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteCompany(${row.com_id})">删除</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-md-12 text-right">
						<itheima:page url="${pageContext.request.contextPath }/company/list.action" />
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	<!-- 客户列表查询部分  end-->
</div>
<!-- 创建客户模态框 -->
<div class="modal fade" id="newCustomerDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">新建招聘信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_company_form">
					<div class="form-group">
						<label for="new_companyName" class="col-sm-2 control-label">
						    公司名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_companyName" placeholder="公司名称" name="com_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_companyFrom" style="float:left;padding:7px 15px 0 27px;">招聘来源</label> 
						<div class="col-sm-10">
							<select	class="form-control" id="new_companyFrom" name="com_source">
								<option value="">--请选择--</option>
								<c:forEach items="${fromType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == comSource}">selected</c:if>>
									${item.dict_item_name }									
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_comIndustry" style="float:left;padding:7px 15px 0 27px;">所属行业</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="new_comIndustry"  name="com_industry">
								<option value="">--请选择--</option>
								<c:forEach items="${industryType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == comIndustry}"> selected</c:if>>
									${item.dict_item_name }
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_comPeople" style="float:left;padding:7px 15px 0 27px;">公司人数</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="new_comPeople"  name="com_people">
								<option value="">--请选择--</option>
								<c:forEach items="${peopleType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == comPeople}"> selected</c:if>>
									${item.dict_item_name }
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_comIndustry" style="float:left;padding:7px 15px 0 27px;">公司薪酬</label>
						<div class="col-sm-10">
							<select	class="form-control" id="new_comMoney" name="com_money">
								<option value="">--请选择--</option>
								<c:forEach items="${moneyType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == comMoney}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_principal" class="col-sm-2 control-label">负责人</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_principal" placeholder="负责人" name="com_principal" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_education" class="col-sm-2 control-label">学历要求</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_education" placeholder="学历要求" name="com_education" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_address" class="col-sm-2 control-label">公司地址</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_address" placeholder="公司地址" name="com_address" />
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="createCompany()">创建</button>
			</div>
		</div>
	</div>
</div>
<!-- 修改客户模态框 -->
<div class="modal fade" id="customerEditDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改客户信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="edit_company_form">
					<input type="hidden" id="edit_com_id" name="com_id"/>
					<div class="form-group">
						<label for="edit_companyName" class="col-sm-2 control-label">公司名称</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_companyName" placeholder="公司名称" name="com_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_companyFrom" style="float:left;padding:7px 15px 0 27px;">招聘来源</label> 
						<div class="col-sm-10">
							<select	class="form-control" id="edit_companyFrom" name="com_source">
								<option value="">--请选择--</option>
								<c:forEach items="${fromType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == comSource}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_comIndustry" style="float:left;padding:7px 15px 0 27px;">所属行业</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="edit_comIndustry"  name="com_industry">
								<option value="">--请选择--</option>
								<c:forEach items="${industryType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == comIndustry}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_comPeople" style="float:left;padding:7px 15px 0 27px;">公司人数</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="edit_comPeople"  name="com_people">
								<option value="">--请选择--</option>
								<c:forEach items="${peopleType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == comPeople}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_comMoney" style="float:left;padding:7px 15px 0 27px;">公司薪酬</label>
						<div class="col-sm-10">
							<select	class="form-control" id="edit_comMoney" name="com_money">
								<option value="">--请选择--</option>
								<c:forEach items="${moneyType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == comMoney}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_principal" class="col-sm-2 control-label">负责人</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_principal" placeholder="负责人" name="com_principal" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_education" class="col-sm-2 control-label">学历要求</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_education" placeholder="学历要求" name="com_education" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_address" class="col-sm-2 control-label">公司地址</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_address" placeholder="公司地址" name="com_address" />
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="updateCompany()">保存修改</button>
			</div>
		</div>
	</div>
</div>
<!-- 引入js文件 -->
<!-- jQuery -->
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>
<!-- 编写js代码 -->
<script type="text/javascript">
//清空新建公司招聘窗口中的数据
	function clearCompany() {
	    $("#new_companyName").val("");
	    $("#new_companyFrom").val("")
	    $("#new_comIndustry").val("")
	    $("#new_comPeople").val("");
	    $("#new_comMoney").val("")
	    $("#new_principal").val("");
	    $("#new_education").val("");
	    $("#new_address").val("");
	}
	// 创建招聘
	function createCompany() {
	$.post("<%=basePath%>company/create.action",
	$("#new_company_form").serialize(),function(data){
	        if(data =="OK"){
	            alert("客户创建成功！");
	            window.location.reload();
	        }else{
	            alert("客户创建失败！");
	            window.location.reload();
	        }
	    });
	}
	// 通过id获取修改的招聘信息
	function editCompany(id) {
	    $.ajax({
	        type:"get",
	        url:"<%=basePath%>company/getCompanyById.action",
	        data:{"id":id},
	        success:function(data) {
	            $("#edit_com_id").val(data.com_id);
	            $("#edit_companyName").val(data.com_name);
	            $("#edit_companyFrom").val(data.com_source)
	            $("#edit_comIndustry").val(data.com_industry)
	            $("#edit_comPeople").val(data.com_people);
	            $("#edit_comMoney").val(data.com_money)
	            $("#edit_principal").val(data.com_principal);
	            $("#edit_education").val(data.com_education);
	            $("#edit_address").val(data.com_address);
	            
	        }
	    });
	}
    // 执行修改客户操作
	function updateCompany() {
		$.post("<%=basePath%>company/update.action",
				$("#edit_company_form").serialize(),function(data){
			if(data =="OK"){
				alert("客户信息更新成功！");
				window.location.reload();
			}else{
				alert("客户信息更新失败！");
				window.location.reload();
			}
		});
	}
	// 删除客户
	function deleteCompany(id) {
	    if(confirm('确实要删除该客户吗?')) {
	$.post("<%=basePath%>company/delete.action",{"id":id},
	function(data){
	            if(data =="OK"){
	                alert("客户删除成功！");
	                window.location.reload();
	            }else{
	                alert("删除客户失败！");
	                window.location.reload();
	            }
	        });
	    }
	}
</script>
</body>
</html>