package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.service.memberService;
import member.model.vo.Member;

/**
 * Servlet implementation class kakaoLoginServlet
 */
@WebServlet("/kakaoLogin")
public class kakaoLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public kakaoLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String email = request.getParameter("email");//카카오로부터 받은 정보두개
		
		Member member = new memberService().loginMember(id, id);
		//받은 값으로 로그인을 한번 시켜서 우리회원인지 아니어서 회원가입을 시켜야되는지 체크 
		//null값이 아니면 우리회원 null값이면 회원가입 시켜야됨.
		Member kakao = new Member();
		
		kakao.setMemberId(id);
		kakao.setEmail(email);
		//Member타입의 kakao라는 버스를 빌려서 memberId랑 Email이라는 좌석에 태웠음.
		
		if( member != null) {
			HttpSession session = request.getSession();
			session.setAttribute("memberOne", member);
			
			response.sendRedirect("/index.jsp");
		}else {
			//아니면 회원가입 시켜오ㅑ됨.
			RequestDispatcher view = request.getRequestDispatcher("/views/kakaoEnroll.jsp");
			request.setAttribute("kakao", kakao); 
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
