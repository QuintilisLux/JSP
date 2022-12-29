package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.PostVO;
import repository.PostDAO;

@WebServlet("/postC/*")
public class PostController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RequestDispatcher rdp;
	private PostDAO postDAO;
	private String destPage;
    
    public PostController() {
    	postDAO = new PostDAO();
    }

	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		res.setCharacterEncoding("UTF-8");
		res.setContentType("text/html; charset=UTF-8");
		
		String uri = req.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/")+1);
		System.out.println("---------------------------------");
		System.out.println(path);
		
		switch(path) {
		case "postRegister":
			try {
				postDAO.postRegister(new PostVO(req.getParameter("title"), req.getParameter("category"), req.getParameter("id"), req.getParameter("nickname"), req.getParameter("content")));
				System.out.println("postRegister complate");
				destPage = "/";
			} catch (Exception e) {
				System.out.println("postRegister error");
				e.printStackTrace();
			}
			break;
		case "postList":
			try {
				List<PostVO> list = postDAO.postList();
				req.setAttribute("list", list);
				System.out.println("postList complate");
				destPage = "/jsp/post/postList.jsp";
			} catch (Exception e) {
				System.out.println("postList error");
				e.printStackTrace();
			}
			break;
		}
		
		rdp = req.getRequestDispatcher(destPage);
		rdp.forward(req, res);
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		service(req, res);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		service(req, res);
	}

}
