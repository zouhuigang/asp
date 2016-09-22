<%@ Control Language="C#" AutoEventWireup="true"   Inherits="Aircraft.Web.ManagerEn.top" %>
<div id="navigation">
		<div class="container-fluid">
			<a href="#" id="brand"><img src="../images/logo.png" style="height:25px;" /></a>
			<a href="#" class="toggle-nav" rel="tooltip" data-placement="bottom" title="收起侧栏"><i class="icon-reorder"></i></a>
			<ul class='main-nav'>
				<li>
					<a href="/admin/index.aspx" data-toggle="dropdown" class='dropdown-toggle'>
						<span>系统首页</span>
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="../../manager/admin/index.aspx">中文</a>
						</li>
					</ul>
				</li>
				<li class='active'>
					<a href="#" data-toggle="dropdown" class='dropdown-toggle'>
						<span>管理员</span>
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
                       
                        <li>
							<a href="../admin/Exit.aspx">退出</a>
						</li>
					</ul>
				</li>
			</ul>

		</div>
	</div>