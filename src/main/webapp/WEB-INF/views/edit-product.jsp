
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Exercise 14</title>
    <jsp:include page="/WEB-INF/assests/head.jsp"></jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/assests/navbar.jsp"></jsp:include>

<div class="container-fluid">
    <h1>Sửa thông tin sản phẩm</h1>
    <form action="/exercise14/edit" method="post">

        <div class="mb-3">
            <label for="id" class="form-label">Id sản phẩm: </label>
            <input type="text" class="form-control" id="id" name="id" readonly value="${product.id}">
        </div>

        <div class="mb-3">
            <label for="name" class="form-label">Tên sản phẩm: </label>
            <input type="text" class="form-control" id="name" name="name" value="${product.name}">
        </div>

        <div class="mb-3">
            <label for="imageUrl" class="form-label">Ảnh sản phẩm: </label>
            <input type="text" class="form-control" id="imageUrl" name="imageUrl" value="${product.imageUrl}">
        </div>

        <div class="mb-3">
            <label for="price" class="form-label">Giá sản phẩm: </label>
            <input type="text" class="form-control" id="price" name="price" value="${product.price}">
        </div>

        <div class="mb-3">
            <label for="desc" class="form-label">Mô tả sản phẩm: </label>
            <textarea class="form-control" id="desc" name="desc">${product.desc}</textarea>
        </div>

        <div class="mb-3">
            <label for="stock" class="form-label">Số lượng nhập kho: </label>
            <input type="text" class="form-control" id="stock" name="stock" value="${product.stock}">
        </div>

        <div class="mb-3">
            <label for="status" class="form-label">Trạng thái: </label>
            <select  id="status" name="status">
                <option value="true" ${product.status ? "selected" : ""}  >Đang bán</option>
                <option value="false" ${!product.status ? "selected" : ""} >Ngừng bán</option>
            </select>
        </div>

        <input class="btn btn-primary" type="submit" value="EDIT">
    </form>
</div>



<jsp:include page="/WEB-INF/assests/foot.jsp"></jsp:include>

</body>
</html>
