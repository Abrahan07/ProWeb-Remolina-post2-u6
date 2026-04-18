<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Iniciar sesion</title>
    <link rel="stylesheet" href="<c:url value="/css/estilos.css"/>">
</head>
<body>
    <h1>Iniciar sesion</h1>

    <c:if test="${not empty errorLogin}">
        <p class="alert-error"><c:out value="${errorLogin}"/></p>
    </c:if>

    <form method="post" action="<c:url value="/login"/>">
        <label>Usuario:
            <input type="text" name="username" required>
        </label>
        <label>Contrasena:
            <input type="password" name="password" required>
        </label>

        <button type="submit">Entrar</button>
    </form>

    <p>Usuarios de prueba: <strong>admin</strong> / <strong>Admin123!</strong> y <strong>viewer</strong> / <strong>View456!</strong></p>
</body>
</html>
