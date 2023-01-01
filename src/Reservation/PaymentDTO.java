package Reservation;

public class PaymentDTO {
	private String payId;
	private String resvId;
	private int payTotal;
	private String payMeans;
	private String payDate;
	private String payMember;
	
	public String getPayId() {
		return payId;
	}
	public void setPayId(String payId) {
		this.payId = payId;
	}
	public String getResvId() {
		return resvId;
	}
	public void setResvId(String resvId) {
		this.resvId = resvId;
	}
	public int getPayTotal() {
		return payTotal;
	}
	public void setPayTotal(int payTotal) {
		this.payTotal = payTotal;
	}
	public String getPayMeans() {
		return payMeans;
	}
	public void setPayMeans(String payMeans) {
		this.payMeans = payMeans;
	}
	public String getPayDate() {
		return payDate;
	}
	public void setPayDate(String payDate) {
		this.payDate = payDate;
	}
	public String getPayMember() {
		return payMember;
	}
	public void setPayMember(String payMember) {
		this.payMember = payMember;
	}

}
