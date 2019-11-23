package member.controller;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.memberService;
import member.model.vo.Member;

/**
 * Servlet implementation class SendMailServlet
 */
@WebServlet("/SendMail")
public class SendMailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendMailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		
	
		String memberId = request.getParameter("memberId");
		String email = request.getParameter("email");
		System.out.println(memberId);
		System.out.println(email);

		//매개변수 
		//디비에 얘네가 있는지 조회
		//이메일,아이디
		
		Member member = new memberService().searchPwd(memberId, email);
		
		System.out.println(member);
		
		if(member != null) {
			
			Random r = new Random();
			StringBuilder sb = new StringBuilder();
			for(int i=0; i<6; i++) {
				sb.append(r.nextInt(10));
				
			}
			System.out.println(sb.toString());
			
			try {
				String mail_from = memberId + "<" + email + ">"; //받을사람 메일설정하는거
				String mail_to = "admin<admin@83rpm.com>"; //보내는사람 메일 설정하는거
				
				mail_from = new String (mail_from.getBytes("UTF-8"),"UTF-8");
				mail_to = new String (mail_to.getBytes("UTF-8"),"UTF-8");
				
				Properties props = new Properties();
				props.put("mail.smtp.host", "smtp.gmail.com");
				props.put("mail.smtp.port", 465);
				props.put("mail.smtp.auth", "true");
				props.put("mail.smtp.ssl.enable", "true");
				props.put("mail.smtp.ssl.trust","smtp.gmail.com");
				//메일 보낼때 통신 설정
				
				Authenticator auth = new SMTPAuthenticator();
				
				Session sess = Session.getDefaultInstance(props,auth); //props: 통신설정한값  auth:메일 인증정보(로그인할때 아이디패스워드) 두개가 필요함.
				MimeMessage msg = new MimeMessage(sess);
				
				msg.setFrom(new InternetAddress("borabyul1103@gmail.com", "PET.com"));// 보내는사람 
				msg.setRecipient(Message.RecipientType.TO, new InternetAddress(email));
				msg.setSubject("PET.com 비밀번호 재설정 메일 입니다.", "UTF-8");
				msg.setContent("<h1>안녕하세요.Pet.com입니다.</h2> <h3>인증번호는["+sb.toString()+"]</h3>","text/html; charset=UTF-8"); // 보낼메일 셋팅
				Transport.send(msg);//실제로 보내는 것
				
				response.getWriter().print(sb.toString());
			} catch(Exception e) {
				System.out.println("test : "+e.getMessage());
				response.getWriter().print("3");
				
			}finally {
				
			}
		}else {
			// 에러발생
			response.getWriter().print(2);
		}
		
		
		
		
	}

}
