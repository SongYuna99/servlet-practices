package com.poscodx.guestbook.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poscodx.guestbook.dao.GuestBookDao;
import com.poscodx.guestbook.vo.GuestBookVo;

public class GuestBookController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String action = request.getParameter("a");

		if ("add".equals(action)) {
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			String contents = request.getParameter("message");

			GuestBookVo vo = new GuestBookVo();
			vo.setName(name);
			vo.setPassword(password);
			vo.setContens(contents);

			new GuestBookDao().insert(vo);
			response.sendRedirect("/guestbook02/gb");

		} else if ("deleteform".equals(action)) {
			String no = request.getParameter("no");
			request.setAttribute("no", no);
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/deleteform.jsp");
			rd.forward(request, response);

		} else if ("delete".equals(action)) {
			String no = request.getParameter("no");
			String password = request.getParameter("password");
			int num = Integer.parseInt(no);

			if (new GuestBookDao().checkPassword(num, password)) {
				new GuestBookDao().delete(num);
				response.sendRedirect("/guestbook02/gb");
			} else {
				response.sendRedirect("/guestbook02/gb?a=deleteform&no=" + no);
			}

		} else {
			List<GuestBookVo> list = new GuestBookDao().selectAll();

			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/index.jsp");
			rd.forward(request, response);

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
