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
//카카오에서 받은 정보와 이사람이 우리사이트에서 소셜회원가입하는 정보랑 합치는 서블릿
/**
 * Servlet implementation class kakaoEnrollServelt
 */
@WebServlet("/kakaoEnroll")
public class kakaoEnrollServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public kakaoEnrollServelt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Member member = new Member();
		String address = request.getParameter("addr") + request.getParameter("addr2") + request.getParameter("addr3");
		
		
		member.setMemberId(request.getParameter("memberId"));
		member.setMemberPwd(request.getParameter("memberPwd"));
		member.setMemberName(request.getParameter("memberName"));
		member.setAddress(address);
		member.setEmail(request.getParameter("email"));
		member.setPhone(request.getParameter("phone"));
		member.setPwd_Question(request.getParameter("pwd_Question"));
		member.setPwd_Answer(request.getParameter("pwd_Answer"));

		int result = new memberService().insertMember(member);
		
		
		if(result > 0) {
			HttpSession session = request.getSession();
			session.setAttribute("memberOne", member);
			response.sendRedirect("/index.jsp");
			
			
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
