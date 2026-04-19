<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Iniciar Sesión</title>
    <link rel="stylesheet" href="<c:url value="/css/estilos.css"/>">
</head>
<body>
    <h1>Iniciar Sesión</h1>

    <!-- Mensaje de error de credenciales -->
    <c:if test="${not empty errorLogin}">
        <p class="alert-error">${errorLogin}</p>
    </c:if>

    <form method="post" action="<c:url value="/login"/>">
        <label>Usuario:
            <input type="text" name="username" required>
        </label>
        <label>Contraseña:
            <input type="password" name="password" required>
        </label>
        <button type="submit">Ingresar</button>
    </form>

    <p><strong>Usuarios de prueba:</strong></p>
    <ul>
        <li>admin / Admin123!</li>
        <li>viewer / View456!</li>
    </ul>
</body>
</html>