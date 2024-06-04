

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>MY COFFEE SHOP</title> 
        <link rel="icon" href="http://awakedetroit.com/wp-content/uploads/2019/04/cropped-Favicon.png">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="icon" href="http://awakedetroit.com/wp-content/uploads/2019/04/cropped-Favicon.png">
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    <body>
        <div class="container">

            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="EditAccount" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">Chỉnh sửa tài khoản</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>ID</label>
                                    <input value="${account.uid}" name="id" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label>Tài khoản</label>
                                    <input value="${account.user}" name="user" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label>Mật khẩu</label>
                                    <input value="${account.pass}" name="pass" type="text" class="form-control"  readonly required>
                                </div>
                                <div class="form-group">
                                    <label>Vai trò</label>
                                    <select class="form-control" name="issell" disabled>
                                        <option value="0"
                                                <c:if test="${account.isSell == 0}">
                                                    selected
                                                </c:if>
                                                >Người bán</option>
                                         <option value="1"
                                                <c:if test="${account.isSell == 1}">
                                                    selected
                                                </c:if>
                                                >Quản trị viên</option>
                                    </select>
                                    <input value="${account.isSell}" name="issell" type="text" hidden>
                                </div>
                                <div class="form-group">
                                    <label>Trạng thái</label>
                                    <select class="form-control" name="active">
                                        <option value="true"
                                                <c:if test="${account.active}">
                                                    selected
                                                </c:if>
                                                >Hoạt động</option>
                                        <option value="false"
                                                <c:if test="${!account.active}">
                                                    selected
                                                </c:if>
                                                >Khóa</option>
                                    </select> 
                                </div>
                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-success" value="Chỉnh sửa">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>


        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>