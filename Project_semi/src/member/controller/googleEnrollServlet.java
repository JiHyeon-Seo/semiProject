package member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.service.memberService;
import member.model.vo.Member;

/**
 * Servlet implementation class googleEnrollServlet
 */
@WebServlet("/googleEnroll")
public class googleEnrollServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public googleEnrollServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.setCharacterEncoding("UTF-8");
		String address = request.getParameter("addr") + request.getParameter("addr2") + request.getParameter("addr3");
		Member member = new Member();
		
		member.setMemberId(request.getParameter("memberId"));
		member.setMemberPwd(request.getParameter("memberPwd"));
		member.setMemberName(request.getParameter("memberName"));
		member.setAddress(address);
		member.setEmail(request.getParameter("email")); //가져오는값이라 address처럼 안가져옴.
		member.setPhone(request.getParameter("phone"));
		member.setPwd_Answer(request.getParameter("pwd_Answer"));
		member.setPwd_Question(request.getParameter("pwd_Question"));
		
		int result = new memberService().insertMember(member);
		
		if(result > 0) {
			//우리회원
			HttpSession session = request.getSession();
			session.setAttribute("memberOne", member); // 로그인하는 session은 다 통일시켜줘야됨.
			//세션은 다 통일 memberOne.
			response.sendRedirect("index.jsp");
			
		}else {
			//우리회원 아닌 사람
			
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
