<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>新闻</title>
<link href="${pageContext.request.contextPath}/css/common.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/product.css"
	rel="stylesheet" type="text/css" />

</head>
<body>

	<div class="container header">
		<div class="span5">
			<div class="logo">
				<a href="./京华亿家/index.htm"> <img
					src="${pageContext.request.contextPath}/image/r___________renleipic_01/logo.gif"
					alt="传智播客"/>
			</div>
		</div>
		<div class="span9">
			<div class="headerAd">
				<img
					src="${pageContext.request.contextPath}/image/header.jpg"
					height="50" width="320" alt="正品保障" title="正品保障" />
			</div>
		</div>
		<%@ include file="header.jsp"%>
		<%@ include file="menu.jsp"%>
	</div>

	<div class="container productContent">
		<div class="span6">
			<div class="hotProductCategory">
				<!-- 一级分类显示 -->
				<s:iterator var="cs" value="categorySecondList">
					<dl>
						<dt>
							<!-- 显示二级分类 -->
							<a href=""><s:property value="#cs.csname" /></a>
						</dt>
						<!-- 显示三级分类-->
						<s:iterator var="ct" value="#cs.categoryThirds">
							<dd>
								<a
									href="${pageContext.request.contextPath}/multmedia_findByCtid.action?ctid=<s:property value="#ct.ctid"/>&page=1"><s:property
										value="#ct.ctname" /></a>
							</dd>
						</s:iterator>
					</dl>
				</s:iterator>
			</div>
		</div>
		<div class="span18 last">

			<div class="productImage">
				<a title="" style="outline-style: none; text-decoration: none;"
					id="zoom"
					href="http://image/r___________renleipic_01/bigPic1ea8f1c9-8b8e-4262-8ca9-690912434692.jpg"
					rel="gallery">
					<div class="zoomPad">
						<img style="opacity: 1;" title="" class="medium"
							src="${pageContext.request.contextPath}/<s:property value="model.image"/>"
							width="800" height="400" style="display: inline-block; width:100%;">
							<div
								style="display: block; top: 0px; left: 162px; width: 0px; height: 0px; position: absolute; border-width: 1px;"
								class="zoomPup"></div>
							<div
								style="position: absolute; z-index: 5001; left: 312px; top: 0px; display: block;"
								class="zoomWindow">
								<div style="width: 368px;" class="zoomWrapper">
									<div style="width: 100%; position: absolute; display: none;"
										class="zoomWrapperTitle"></div>
									<div style="width: 0%; height: 0px;" class="zoomWrapperImage">
										<img
											src="%E5%B0%9A%E9%83%BD%E6%AF%94%E6%8B%89%E5%A5%B3%E8%A3%852013%E5%A4%8F%E8%A3%85%E6%96%B0%E6%AC%BE%E8%95%BE%E4%B8%9D%E8%BF%9E%E8%A1%A3%E8%A3%99%20%E9%9F%A9%E7%89%88%E4%BF%AE%E8%BA%AB%E9%9B%AA%E7%BA%BA%E6%89%93%E5%BA%95%E8%A3%99%E5%AD%90%20%E6%98%A5%E6%AC%BE%20-%20Powered%20By%20Mango%20Team_files/6d53c211-2325-41ed-8696-d8fbceb1c199-large.jpg"
											style="position: absolute; border: 0px none; display: block; left: -432px; top: 0px;">
									</div>
								</div>
							</div>
							<div
								style="visibility: hidden; top: 129.5px; left: 106px; position: absolute;"
								class="zoomPreload">Loading zoom</div>
					</div>
				</a>

			</div>

			<div class="sn">
				<div>
					编号：
					<s:property value="model.mid" />
				</div>
			</div>
			<ul></ul>
			<div class="info">
				<dl>
					<dt>新闻标题:</dt>
					<dd>
						<strong><s:property value="model.mname" /></strong>
					</dd>
				</dl>


			</div>
			<div id="bar" class="bar">
				<ul>
					<li id="introductionTab"><a href="#introduction">新闻介绍</a></li>

				</ul>
			</div>

			<div id="introduction" name="introduction" class="introduction">
				
				<div>
					<strong><s:property value="model.mdesc" /></strong>
				</div>
			</div>



		</div>
	</div>
	<div class="container footer">
		<div class="span24">
			<div class="footerAd">
				<img src="image\r___________renleipic_01/footer.jpg" alt="我们的优势"
					title="我们的优势" height="52" width="950">
			</div>
		</div>
		<div class="span24">
			<ul class="bottomNav">
				<li><a>关于我们</a> |</li>
				<li><a>联系我们</a> |</li>
				<li><a>招贤纳士</a> |</li>
				<li><a>法律声明</a> |</li>
				<li><a>友情链接</a> |</li>
				<li><a>服务声明</a> |</li>
				<li><a>广告声明</a></li>
			</ul>
		</div>
		<div class="span24">
			<div class="copyright">Copyright © 2005-2013 Mango商城 版权所有</div>
		</div>
	</div>
</body>
</html>