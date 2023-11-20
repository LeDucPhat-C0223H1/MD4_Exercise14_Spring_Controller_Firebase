
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
    <h1>Thêm mới sản phẩm</h1>
    <form action="/exercise14/add" method="post" enctype="multipart/form-data">

        <div class="mb-3">
            <label for="name" class="form-label">Tên sản phẩm: </label>
            <input type="text" class="form-control" id="name" name="name">
        </div>

        <div class="mb-3">
            <label for="file" class="form-label">Ảnh sản phẩm: </label>
            <input type="file" class="form-control" id="file" name="file">
        </div>

        <div class="mb-3">
            <label for="price" class="form-label">Giá sản phẩm: </label>
            <input type="text" class="form-control" id="price" name="price">
        </div>

        <div class="mb-3">
            <label for="desc" class="form-label">Mô tả sản phẩm: </label>
            <textarea class="form-control" id="desc" name="desc"></textarea>
        </div>

        <div class="mb-3">
            <label for="stock" class="form-label">Số lượng nhập kho: </label>
            <input type="text" class="form-control" id="stock" name="stock">
        </div>


<%--        <div class="mb-3">--%>
<%--            <label for="status" class="form-label">Trạng thái: </label>--%>
<%--            <select  id="status" name="status">--%>
<%--                <option value="true"  >Đang bán</option>--%>
<%--                <option value="false" >Ngừng bán</option>--%>
<%--            </select>--%>
<%--        </div>--%>

        <input class="btn btn-primary" type="submit" value="ADD">
    </form>
</div>

<jsp:include page="/WEB-INF/assests/foot.jsp"></jsp:include>
</body>
</html>
