package com.example;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebFilter("/setColor")
public class ColorFilter implements Filter {
    private static final List<String> validColors = Arrays.asList("red", "blue", "green", "white");

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        String color = request.getParameter("color");

        if (color != null && validColors.contains(color.toLowerCase())) {
            chain.doFilter(request, response);
        } else {
            request.setAttribute("error", "Màu không hợp lệ!");
            request.getRequestDispatcher("color.jsp").forward(request, response);
        }
    }
}
