package yznu.holiday.bean;

public class BlackListBean {
	private String Arrearageuname;
	private String Arrearageuid;
	private String ArrearageuidCard;
	private String ArrearageBalance;

	public String getArrearageBalance() {
		return ArrearageBalance;
	}

	public void setArrearageBalance(String arrearageBalance) {
		ArrearageBalance = arrearageBalance;
	}

	public String getArrearageuname() {
		return Arrearageuname;
	}

	public void setArrearageuname(String arrearageuname) {
		Arrearageuname = arrearageuname;
	}

	public String getArrearageuid() {
		return Arrearageuid;
	}

	public void setArrearageuid(String arrearageuid) {
		Arrearageuid = arrearageuid;
	}

	public String getArrearageuidCard() {
		return ArrearageuidCard;
	}

	public void setArrearageuidCard(String arrearageuidCard) {
		ArrearageuidCard = arrearageuidCard;
	}

	public BlackListBean(String Arrearageuname, String Arrearageuid,
			String ArrearageuidCard, String ArrearageBalance) {
		super();
		this.Arrearageuname = Arrearageuname;
		this.ArrearageBalance = ArrearageBalance;
		this.Arrearageuid = Arrearageuid;
		this.ArrearageuidCard = ArrearageuidCard;
	}

	public BlackListBean() {
	}
}
