package com.example.thu_vien;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "Translate", urlPatterns = "/translate")
public class Translate extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Map<String,String> dictionary = new HashMap<>();
        dictionary.put("hello", "Xin chào");
        dictionary.put("world", "Thế giới");
        dictionary.put("how", "Làm sao");
        dictionary.put("who", "ai");
        dictionary.put("what", "là gì");
        dictionary.put("where", "ở đâu");

        String word = req.getParameter("txtSearch");
        String translation = dictionary.get(word);
        String result;
        if (translation != null) {
            result = word + ": " + translation;
        }else {
            result = word + ": không tìm thấy trong từ điển";
        }
        req.setAttribute("result", result);
        req.getRequestDispatcher("view.jsp").forward(req, resp);

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("view.jsp").forward(req, resp);
    }
}

