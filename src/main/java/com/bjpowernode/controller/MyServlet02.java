package com.bjpowernode.controller;
import com.bjpowernode.domain.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

public class MyServlet02 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Student s=new Student("1","zs",11);
        Student s2=new Student("2","li",22);

        String str="{\"id\":\""+s.getId()+"\",\"name\":\""+s.getName()
                +"\",\"age\":"+s.getAge()+"}";

        PrintWriter out=response.getWriter();
        out.println(str);
        out.close();

//        response.getWriter().println("111111111");

    }
}




