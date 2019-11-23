package member.model.vo;

public class Member {

	
	private String memberId;
	private String memberPwd;
	private String memberName;
	private String address;
	private String email;
	private String phone;
	private String pwd_Question;
	private String pwd_Answer;

	public void Member() {}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPwd() {
		return memberPwd;
	}

	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPwd_Question() {
		return pwd_Question;
	}

	public void setPwd_Question(String pwd_Question) {
		this.pwd_Question = pwd_Question;
	}

	public String getPwd_Answer() {
		return pwd_Answer;
	}

	public void setPwd_Answer(String pwd_Answer) {
		this.pwd_Answer = pwd_Answer;
	}


	
}
