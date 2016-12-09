package service;

public class Religion {
	private int no;
	private String name;
	
	//dto
	public Religion() {
		super();		//디폴트 생성자
	}
	
	
	public Religion(int no, String name) {
		super();
		this.no = no;
		this.name = name;	//모든 필드 생성자
	}


	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "Religion [no=" + no + ", name=" + name + "]";
	}//toString 생성자 메소드
	
	
}
