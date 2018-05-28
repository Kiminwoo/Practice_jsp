package Lab7;
import java.sql.Timestamp; // 시간쓸수 있는 java.sql 
public class Lab7 {  // 이름 , 커피 , 옵션 , 사이즈 , 날짜 , 주문번호 변수 선언 + setter , getter
	
	private String name;
	private String coffeename;
	private String HI;
	private String size;
	private Timestamp Date;
	private String orderNumber ="2018_0001";
	private String introduce;
	
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(String orderNumber) {
		orderNumber = orderNumber;
	}
	public Timestamp getDate() {
		return Date;
	}
	public void setDate(Timestamp date) {
		this.Date = date;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCoffeename() {
		return coffeename;
	}
	public void setCoffeename(String coffeename) {
		this.coffeename = coffeename;
	}
	public String getHI() {
		return HI;
	}
	public void setHI(String hI) {
		HI = hI;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}

}
