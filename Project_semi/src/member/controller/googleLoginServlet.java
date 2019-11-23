package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.service.memberService;
import member.model.vo.Member;

/**
 * Servlet implementation class googleLoginServlet
 */
@WebServlet("/googleLogin")
public class googleLoginServlet extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public googleLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		Member member = new memberService().loginMember(id, id);
		//우리 멤버인지 아닌지 한번 로그인 시켜서 체크하기.
		
		Member google = new Member();
		google.setMemberId(id);
		google.setMemberName(name);
		google.setEmail(email);
		
		if(member != null) {
			HttpSession session = request.getSession();
			session.setAttribute("memberOne", member);
			response.sendRedirect("/index.jsp");
		}else {
			RequestDispatcher view = request.getRequestDispatcher("/views/googleEnroll.jsp");
			request.setAttribute("google", google);
			view.forward(request, response);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
