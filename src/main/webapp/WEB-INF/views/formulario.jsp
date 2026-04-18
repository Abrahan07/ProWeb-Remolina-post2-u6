<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>${empty producto ? "Nuevo Producto" : "Editar Producto"}</title>
    <link rel="stylesheet" href="<c:url value="/css/estilos.css"/>">
</head>
<body>
    <h1>${empty producto ? "Registrar Producto" : "Editar Producto"}</h1>

    <form method="post" action="<c:url value="/productos"/>">
        <c:if test="${not empty producto}">
            <input type="hidden" name="id" value="${producto.id}">
            <input type="hidden" name="accion" value="actualizar">
        </c:if>
        <c:if test="${empty producto}">
            <input type="hidden" name="accion" value="guardar">
        </c:if>

        <label>Nombre:
            <input type="text" name="nombre" required
                value="<c:out value="${not empty nombre ? nombre : producto.nombre}"/>">
        </label>
        <label>Categoria:
            <input type="text" name="categoria"
                value="<c:out value="${not empty categoria ? categoria : producto.categoria}"/>">
        </label>
        <label>Precio:
            <input type="number" name="precio" step="0.01" min="0" required
                value="${not empty precio ? precio : producto.precio}">
        </label>
        <label>Stock:
            <input type="number" name="stock" min="0" required
                value="${not empty stock ? stock : producto.stock}">
        </label>

        <c:if test="${not empty errores}">
            <div class="alert-error">
                <c:forEach var="error" items="${errores.values()}">
                    <p><c:out value="${error}"/></p>
                </c:forEach>
            </div>
        </c:if>

        <button type="submit">${empty producto ? "Guardar" : "Actualizar"}</button>
        <a href="<c:url value="/productos"/>">Cancelar</a>
    </form>
</body>
</html>
