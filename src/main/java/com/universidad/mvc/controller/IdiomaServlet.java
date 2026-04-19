package com.universidad.mvc.controller;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.Locale;

@WebServlet("/idioma")
public class IdiomaServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {

        String lang = req.getParameter("lang");

        // Solo aceptar español o inglés
        if (lang != null && (lang.equals("es") || lang.equals("en"))) {
            req.getSession(true).setAttribute("locale", new Locale(lang));
        }

        // Regresar a la página anterior
        String referer = req.getHeader("Referer");
        resp.sendRedirect(referer != null ? referer :
                req.getContextPath() + "/productos");
    }
}