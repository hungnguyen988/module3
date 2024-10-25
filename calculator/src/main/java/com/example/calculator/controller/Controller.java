package com.example.calculator.controller;

import com.example.calculator.model.Model;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Controller" ,value = "/calculator")
public class Controller extends HttpServlet {
    Model model = new Model();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        double num1 = Double.parseDouble(req.getParameter("num1"));
        double num2 = Double.parseDouble(req.getParameter("num2"));
        String operation = req.getParameter("operator");
       String ketQua ;
        try{
            double result = model.calculate(num1, num2, operation);
            ketQua = "Đáp án : " + num1+" "+operation+" "+num2+" = "+result;
        } catch (ArithmeticException e) {
            ketQua = e.getMessage();
        }
        req.setAttribute("ketQua", ketQua);
        req.getRequestDispatcher("view/view.jsp").forward(req, resp);
    }
}
