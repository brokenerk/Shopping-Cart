<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page"
	xmlns:s="/struts-tags" version="2.0">
	<jsp:directive.page language="java"
		contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
	<jsp:text>
		<![CDATA[ <?xml version="1.0" encoding="UTF-8" ?> ]]>
	</jsp:text>
	<jsp:text>
		<![CDATA[ <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> ]]>
	</jsp:text>
	<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="x-ua-compatible" content="ie=edge"/>
<title>Cart</title>
</head>
<body>

		<h1 class="my-4">Cart - Order ID: ${cart.id}</h1>
		<div>
			<label for="">Updated: ${cart.date}</label>
		</div>
		
		<s:if test="%{cart.id!=null}">
			<div class="form-group">
				<a class="btn btn-primary" href="${pageContext.request.contextPath}/buy">Proceed to checkout</a>
			</div>
		</s:if>
		
			
		<div class="table-responsive">
		<table class="table table-striped table-hover">
			<thead class="thead-dark">
				<tr>
					<th>Image</th>
					<th>Name</th>
					<th>Price</th>
					<th>Amount</th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="orderDetails" var="orderDetail">
					<s:set var="productId">${orderDetail.product.id}</s:set>
					<tr>
						<td><img src="${pageContext.request.contextPath }/imgs/products/${orderDetail.product.id}.jpg" width="100"/></td>
						<td>${orderDetail.product.name}</td>
						<td>$ ${orderDetail.product.realPrice}</td>
						<td>${orderDetail.amount}</td>
						<td>
							<s:form id="frmAdd"
							action="%{#pageContext.request.contextPath}/cart/%{#productId}"
							method="post" theme="simple">
							
							<s:hidden id="hdnMethod" name="_method" value="put" />
							<s:hidden id="operation" name="operation" value="inc" />
							<s:submit class="btn btn-success" value="+" />
							</s:form>
						</td>
						
						<td>
							<s:form id="frmAdd"
							action="%{#pageContext.request.contextPath}/cart/%{#productId}"
							method="post" theme="simple">
							
							<s:hidden id="hdnMethod" name="_method" value="put" />
							<s:hidden id="operation" name="operation" value="dec" />
							<s:submit class="btn btn-secondary" value="-" />
							</s:form>
						</td>
						
						<td>
							<s:form id="frmRemove"
							action="%{#pageContext.request.contextPath}/cart/%{#productId}"
							method="post" theme="simple">
							
							<s:hidden id="hdnMethod" name="_method" value="delete" />
							<s:submit value="Remove" class="btn btn-danger" />
							</s:form>
						</td>
						<td></td>
						</tr>
						
				</s:iterator>
				<tr class="table-info">
					<td scope="col"><b>Total</b></td>
					<td></td>
					<td style="width:19%"><b>$ ${cart.total}</b></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
	</html>
</jsp:root>