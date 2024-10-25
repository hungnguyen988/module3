package com.example.tinh_chiet_khau;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "tinhChietKhau", urlPatterns = "/tinh-chiet-khau")

public class TinhChietKhau extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        double giaNiemYet = Double.parseDouble(req.getParameter("gia"));
        double phanTramChietKhau = Double.parseDouble(req.getParameter("phan-tram-chiet-khau"));
        double giaChietKhau = giaNiemYet * phanTramChietKhau / 100;
        double giaBan = giaNiemYet - giaChietKhau;
        String message = "Giá bán sau chêt khấu: " + giaBan +
                "\n Giá chêt khấu: " + giaChietKhau;
        message = message.replace("\n", "<br>");
        req.setAttribute("message", message);
        req.getRequestDispatcher("view.jsp").forward(req, resp);
    }
}
