package cn.lexizhi.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author: laoyu
 * @Date: 2019/12/5 15:41
 * @Description:
 */
@WebServlet(name = "editEnd", urlPatterns = {"/editEnd"})
public class EditServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String title = request.getParameter("title");
        String content = request.getParameter("content");

        request.setAttribute("title",title);
        request.setAttribute("content",content);

        System.out.println("\n-------------"+title+"-----------------"+content);

        request.getRequestDispatcher("article.jsp")
                .forward(request, response);
    }
}
