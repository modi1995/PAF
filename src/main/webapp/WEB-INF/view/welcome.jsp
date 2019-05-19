<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>Welcome to SmartWay | Home</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  <link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet" />
  
  <script type="text/javascript">
function showAlert(){
alert("Successfully added to the cart");
}
function getAlert(){
	alert("Updated Successfully");
}
</script>



</head>
<body style="background-image:url(/static/images/Ba.jpg) ">
	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/welcome" class="navbar-brand">SmartWay</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="">Login</a></li>
					<li><a href="">Signup</a></li>
					<li><a href="/show-products">Products</a></li>
					<li><a href="">Add Products</a></li>
					<li><a href="/addProduct">Shopping Cart</a></li>
					
				</ul>
			</div>
		</div>
	</div> 

<c:choose>
<c:when test="${mode=='MODE_HOME' }">
<div class="container" id="homediv" >
		<div class="jumbotron text-center">
			<h1>!Welcome to SmartWay!</h1>
			<h2>Smarter Shopping, Better living..!</h2>
			<h3>ShoppingCart</h3>
		</div>
	</div>
</c:when>

<c:when test="${mode=='MODE_ADDPRODUCT' }">
	<div class="container text-center">
				<h3><i>Add to ShoppingCart</i></h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-product">
					<input type="hidden" name="id" value="${product.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">id</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="id"
								value="${product.id }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Item Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="itemName"
								value="${product.itemName }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">quantity</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="quantity"
								value="${product.quantity }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Price</label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="price"
								value="${product.price }" />
						</div>
					</div>
					
					<div class="form-group ">
						
						<input type="submit" class="btn btn-primary" value="Add to Cart" onclick="showAlert()">
					</div>
				</form>
			</div>
			</c:when>
			
			<c:when test="${mode=='ALL_PRODUCTS' }">
			
			<div class="container text-center" id="tasksDiv">
				<h3><i>Shopping Cart Viewer</i></h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>Item Name</th>
								<th>quantity </th>
								<th>Price</th>
								<th>Delete</th>
								<th>Edit</th>
								<th>Cart</th>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="product" items="${products}">
								<tr>
									<td>${product.id}</td>
									<td>${product.itemName}</td>
									<td>${product.quantity}</td>
									<td>${product.price}</td>
									<td><a href="/delete-product?id=${product.id }"><span
											class="glyphicon glyphicon-trash"></span></a></td>
									<td><a href="/edit-product?id=${product.id }"><span
											class="glyphicon glyphicon-pencil"></span></a></td>
									<td><a href=""><span
											class="glyphicon glyphicon-shopping-cart"></span></a></td>
									
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			
			</c:when>
			
			<c:when test="${mode=='MODE_UPDATE' }">
			<div class="container text-center">
				<h3>Update Product</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-product">
					<input type="hidden" name="id" value="${product.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Item Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="itemName"
								value="${product.itemName }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">quantity</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="quantity"
								value="${product.quantity }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Price</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="price"
								value="${product.price }" />
						</div>
					</div>
			
					
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Update" onclick="getAlert()">

					</div>
				</form>
			</div>
		</c:when>
			
			</c:choose>
	
  

  


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
	
	
</body>
</body>
</html>