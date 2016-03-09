package yznu.holiday.bean;

public class BookTypeBean {
	private String btid;
	private String type;
	private String days;

	public String getBtid() {
		return btid;
	}

	public void setBtid(String btid) {
		this.btid = btid;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDays() {
		return days;
	}

	public void setDays(String days) {
		this.days = days;
	}

	public BookTypeBean(String btid2, String typename, String days2) {
		// TODO Auto-generated constructor stub
		this.btid = btid2;
		this.type = typename;
		this.days = days2;
	}

	public BookTypeBean() {
		// TODO Auto-generated constructor stub
	}
}
