package service;

public class School {
	private int no;
	private String name;

	public School() {
		super(); //����Ʈ ������
	}

	public School(int no, String name) {
		super();
		this.no = no;
		this.name = name; //����ʵ带 �̿��� ������
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
		return "School [no=" + no + ", name=" + name + "]";
	} //toString �޼���

}
