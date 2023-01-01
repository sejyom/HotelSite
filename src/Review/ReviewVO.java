package Review;

public class ReviewVO {
	private String reserve_id;
	private String user_id;
	private String room_id;
	private String comment;
	private int rating;
	
	public String getReserve_id() {
		return reserve_id;
	}
	public void setReserve_id(String review_id) {
		this.reserve_id = review_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getRoom_id() {
		return room_id;
	}
	public void setRoom_id(String room_id) {
		this.room_id = room_id;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
}
