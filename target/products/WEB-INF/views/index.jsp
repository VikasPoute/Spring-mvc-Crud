<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ include file="./base.jsp" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <style>
                .container {
                    max-width: 800px;
                    margin: 0 auto;
                    padding: 20px;
                }

                .table th {
                    background-color: #f8f9fa;
                    border-color: #dee2e6;
                    font-weight: bold;
                }

                .table td,
                .table th {
                    vertical-align: middle;
                }

                .action-icons i {
                    font-size: 20px;
                    margin-right: 10px;
                    cursor: pointer;
                }

                .action-icons i:hover {
                    color: #007bff;
                }
            </style>
            <title>Product List</title>
        </head>

        <body>
            <div class="container">
                <h1>Product List</h1>
                <table class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Description</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Product rows will be dynamically generated here -->
                        <c:forEach items="${products}" var="product">
                            <tr>
                                <td>${product.id}</td>
                                <td>${product.name}</td>
                                <td>${product.description}</td>
                                <td class="font-weight-bold">&#8377; ${product.price}</td>
                                <td>${product.quantity}</td>
                                <td class="action-icons">
                                    <a href="${pageContext.request.contextPath}/update/${product.id}"><i class="fas fa-edit text-primary"></i></a>
                                    <a href="delete/${product.id}"><i class="fas fa-trash-alt text-danger"></i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <a class="btn btn-success" href="add-product">Add Product</a>
            </div>
        </body>

        </html>