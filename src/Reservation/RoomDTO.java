package Reservation;

public class RoomDTO {
	private String roomId;
	private String roomCost;
	private String roomView;
	private int roomPerson;
	private String roomSize;
	
	public String getRoomId() {
		return roomId;
	}
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
	public String getRoomCost() {
		return roomCost;
	}
	public void setRoomCost(String roomCost) {
		this.roomCost = roomCost;
	}
	public String getRoomView() {
		return roomView;
	}
	public void setRoomView(String roomView) {
		this.roomView = roomView;
	}
	public int getRoomPerson() {
		return roomPerson;
	}
	public void setRoomPerson(int roomPerson) {
		this.roomPerson = roomPerson;
	}
	public String getRoomSize() {
		return roomSize;
	}
	public void setRoomSize(String roomSize) {
		this.roomSize = roomSize;
	}	
	
}