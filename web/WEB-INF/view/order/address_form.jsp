<%@page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<title>生成订单 - 淘书斋网</title>
		<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/page_bottom.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/address.js"></script>
		
		
		
	</head>
	<body>&nbsp; 
		<%@include file="/common/head1.jsp"%>
		<div class="login_step">
			生成订单骤: 1.确认订单 >
			<span class="red_bold"> 2.填写送货地址</span> > 3.订单成功
		</div>
		<div class="fill_message">
			<p>
				选择地址：
				<select id="address">
					<option value="-1">
						填写新地址
					</option>
				</select>
			</p>
			<form name="ctl00" method="post" action="${pageContext.request.contextPath}/order.do?method=3" id="f">
				<input type="hidden" name="addr.id" id="addressId" value="-1"/>

				<table class="tab_login">
					<tr>
						<td valign="top" class="w1">
							收件人姓名：
						</td>
						<td>
							<input type="text" class="text_input" name="receiveName" id="receiveName" value=""/>
							<div class="text_left" id="nameValidMsg">
								<p>
									请填写有效的收件人姓名
								</p>
								<%--<span style="color:red"></span>--%>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							收件人详细地址：
						</td>
						<td>
							<input type="text" name="fullAddress" class="text_input" id="fullAddress" value=""/>
							<div class="text_left" id="addressValidMsg">
								<p>
									请填写有效的收件人的详细地址
								</p>
								<span style="color:red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							邮政编码：
						</td>
						<td>
							<input type="text" class="text_input" name="postalCode" id="postalCode" value=""/>
							<div class="text_left" id="codeValidMsg">
								<p>
									请填写有效的收件人的邮政编码
								</p>
								<span style="color:red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							电话：
						</td>
						<td>
							<input type="text" class="text_input" name="phone" id="phone" />
							<div class="text_left" id="phoneValidMsg">
								<p>
									请填写有效的收件人的电话<span style="color:green">&nbsp;&nbsp;&nbsp;选填项</span>
								</p>
								
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							手机：
						</td>
						<td>
							<input type="text" class="text_input" name="mobile" id="mobile" />
							<div class="text_left" id="mobileValidMsg">
								<p>
									请填写有效的收件人的手机<span style="color:green">&nbsp;&nbsp;&nbsp;选填项</span>
								</p>
								
							</div>
						</td>
					</tr>
				</table>

				<div class="login_in">

					<a href="${pageContext.request.contextPath}/car.do?method=4"><input id="btnClientRegister2" class="button_1" name="submit"
					type="button" value="取消" /></a>
			
				<input id="btnClientRegister" class="button_1" name="submit" type="submit" value="下一步" />
				</div>
			</form>
		</div>
		<%@include file="/common/foot1.jsp"%>
	</body>
</html>