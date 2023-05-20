<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ include file="./base.jsp" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="ISO-8859-1">
            <style>
                .container {
                    max-width: 400px;
                    margin: 0 auto;
                    padding: 20px;
                    border: 1px solid #ddd;
                    border-radius: 5px;
                    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                }

                .form-group label {
                    font-weight: bold;
                }

                .form-group input,
                .form-group textarea {
                    border-radius: 5px;
                    padding: 8px;
                    border: 1px solid #ddd;
                }

                .btn-primary {
                    background-color: #007bff;
                    border-color: #007bff;
                }

                .btn-primary:hover {
                    background-color: #0069d9;
                    border-color: #0062cc;
                }
            </style>
            <title>Product Form</title>
        </head>

        <body>
            <div class="container mt-5">
                <h1 class="text-center">Update Product</h1>
                <hr>
                <form action="${pageContext.request.contextPath}/handle-product" method="post">
                    <input type="hidden" name="id" value="${product.id}">
                    <div class="form-group">
                        <label for="productName">Product Name</label>
                        <input type="text" class="form-control" id="productName" name="name" value="${product.name}"
                            placeholder="Enter product name">
                    </div>

                    <div class="form-group">
                        <label for="price">Price</label>
                        <input type="number" class="form-control" id="price" name="price" value="${product.price}"
                            placeholder=" Enter product price">
                    </div>
                    <div class="form-group">
                        <label for="quantity">Quantity</label>
                        <input type="number" class="form-control" name="quantity" id="quantity"
                            value="${product.quantity}" placeholder="Enter product quantity">
                    </div>
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea class="form-control" id="description" rows="3" placeholder="Enter product description"
                            name="description">${product.description}</textarea>
                    </div>
                    <div class="container text-center">
                        <a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger btn-block">Back</a>
                        <button type="submit" class="btn btn-outline-primary btn-block">Submit</button>
                    </div>
                </form>
            </div>

            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>
        </body>