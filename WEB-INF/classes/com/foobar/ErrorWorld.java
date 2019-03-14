package com.foobar;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ErrorWorld extends HttpServlet {

    public void doGet( HttpServletRequest request,
	               HttpServletResponse response)
    throws IOException, ServletException
    {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>" + this.getText() + "</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Hello World!");
        out.println("</body>");
        out.println("</html>"); 
    }

    private String getText() {
      return this.reallyGetText();
    }

    private String reallyGetText() {
      throw new RuntimeException("foo");
    }
}
