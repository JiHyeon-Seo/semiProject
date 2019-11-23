package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.memberService;
import member.model.vo.Member;

/**
 * Servlet implementation class idCheckServlet
 */
@WebServlet("/IdCheck")
public class dupCheckIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dupCheckIdServlet() {
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
		// 뭘만들고있지? 생각하기 -> 아이디 찾기
		// 뭐가 필요하지? -? 이름, 생년월일
		// 필요한 값을 가져오자 jsp에서
		
		String memberId = request.getParameter("memberId");
		// 이 값을 어따쓸까? 왜 가져왔을까?
		// 디비에 이값을 가져가서 똑같은지 찾아야지
		// 디비에서 어떻게 가져올꺼야?
		// 멤버라는 객체에 받아서 한명의 정보를 다 가져오자
		
		
		//서비스로 가자
		String memberId2 = new memberService().dupCheckId(memberId);
		
		
		//서비스와 다오를 갔다왔습니다. member를 데리고왔어요.
		
		String data = null;
		response.setContentType("text/html; charset=UTF-8");
		
		if(memberId2 == null) { //중복이 없음.null인 경우dao에서 값을 못받아왔기 때문에
			data ="사용 가능한 아이디 입니다.";
			response.getWriter().write(data);
		}else {
			
			data = "중복입니다.";
			response.getWriter().write(data);
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
