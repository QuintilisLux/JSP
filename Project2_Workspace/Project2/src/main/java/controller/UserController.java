package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.UserVO;
import repository.UserDAO;

@WebServlet("/userC/*")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RequestDispatcher rdp;
	private UserDAO userDAO;
	private String destPage;	
	HttpSession loginSession;
       
    public UserController() {
    	userDAO = new UserDAO();
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
		case "signUp":
			try {
				String id = req.getParameter("id");
				String password = req.getParameter("password");
				String password_check = req.getParameter("password_check");
				String nickname = req.getParameter("nickname");
				
				int overlapCheck = userDAO.overlapCheck(new UserVO(id, password));
				if(overlapCheck > 0) {
					System.out.println("signUp fail");
					req.setAttribute("signUpResult", 0);
					destPage = "/jsp/user/userSignUp.jsp";
				} else {
					userDAO.signUp(new UserVO(id, password, nickname));
					System.out.println("signUp complate");
					destPage = "/";
				}
			} catch (Exception e) {
				System.out.println("signUp error");
				e.printStackTrace();
			}
			break;
		case "login":
			try {
				UserVO userVO = userDAO.login(new UserVO(req.getParameter("id"), req.getParameter("password")));
				if(userVO != null) {
					loginSession = req.getSession();
					loginSession.setAttribute("loginSession", userVO);
					System.out.println("login complate");
					destPage = "/";
				} else {
					req.setAttribute("loginFail", 0);
					System.out.println("login Fail");
					destPage = "/";
				}
			} catch (Exception e) {
				System.out.println("login error");
				e.printStackTrace();
			}
			break;
		case "logout":
			try {
				loginSession = req.getSession();
				loginSession.invalidate();
				System.out.println("logout complate");
				destPage = "/";
			} catch (Exception e) {	
				System.out.println("logout error");
				e.printStackTrace();
			}
			break;
		case "userUpdate":
			try {
				String id = req.getParameter("id");
				String password = req.getParameter("password");
				String nickname = req.getParameter("nickname");
				int idCheck = userDAO.idCheck(new UserVO(id, password));
				if(idCheck == 0) {
					req.setAttribute("updateResult", 0);
					System.out.println("userUpdate Fail");
					destPage = "/jsp/user/userUpdate.jsp";
				} else {
					userDAO.userUpdate(new UserVO(id, password, nickname));
					loginSession = req.getSession();
					loginSession.invalidate();
					UserVO userVO = userDAO.login(new UserVO(req.getParameter("id"), req.getParameter("password")));
					loginSession = req.getSession();
					loginSession.setAttribute("loginSession", userVO);
					System.out.println("userUpdate complate");
					destPage = "/jsp/user/userInfo.jsp";
				}
			} catch (Exception e) {
				System.out.println("userUpdate error");
				e.printStackTrace();
			}
			break;
		case "userPasswordUpdate":
			try {
				String id = req.getParameter("id");
				String password = req.getParameter("password");
				String new_password = req.getParameter("new_password");
				int idCheck = userDAO.idCheck(new UserVO(id, password));
				if(idCheck == 0) {
					req.setAttribute("updateResult", 0);
					System.out.println("userPasswordUpdate fail");
					destPage = "/jsp/user/userPasswordUpdate.jsp";
				} else {
					userDAO.userPasswordUpdate(new UserVO(id, new_password));
					loginSession = req.getSession();
					loginSession.invalidate();
					UserVO userVO = userDAO.login(new UserVO(id, new_password));
					loginSession = req.getSession();
					loginSession.setAttribute("loginSession", userVO);
					System.out.println("userPasswordUpdate complate");
					destPage = "/jsp/user/userInfo.jsp";
				}
			} catch (Exception e) {
				System.out.println("userPasswordUpdate error");
				e.printStackTrace();
			}
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
