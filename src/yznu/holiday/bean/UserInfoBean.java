/**
 * 学校：长江师范学院
 * 学院：计算机工程学院
 * 专业：计算机科学与技术（软件服务外包）
 * 年级：2012级
 * 日期：2014年12月30日
 * 时间：下午4:32:51
 * 文件名：UserBean.java
 * 所属包名：yznu.holiday.bean
 * 所属项目名：HolidayReading
 */
package yznu.holiday.bean;

/**
 * 用户信息JavaBean
 */
public class UserInfoBean {
	private String uname;
	private String uage;
	private String uidCard;
	private String effectivedate;
	private String utel;
	private String balance;
	private String userId;
	private String startTime;
	private String upsw;

	public UserInfoBean() {
		super();
	}

	/**
	 * @param uname
	 * @param uage
	 * @param uidCard
	 * @param effectivedate
	 * @param utel
	 * @param balance
	 * @param userId
	 * @param startTime
	 * @param upsw
	 */
	public UserInfoBean(String uname, String uage, String uidCard,
			String effectivedate, String utel, String balance, String userId,
			String startTime, String upsw) {
		super();
		this.uname = uname;
		this.uage = uage;
		this.uidCard = uidCard;
		this.effectivedate = effectivedate;
		this.utel = utel;
		this.balance = balance;
		this.userId = userId;
		this.startTime = startTime;
		this.upsw = upsw;
	}

	/**
	 * @return uname
	 */
	public String getUname() {
		return uname;
	}

	/**
	 * @param uname
	 *            要设置的 uname
	 */
	public void setUname(String uname) {
		this.uname = uname;
	}

	/**
	 * @return uage
	 */
	public String getUage() {
		return uage;
	}

	/**
	 * @param uage
	 *            要设置的 uage
	 */
	public void setUage(String uage) {
		this.uage = uage;
	}

	/**
	 * @return uidCard
	 */
	public String getUidCard() {
		return uidCard;
	}

	/**
	 * @param uidCard
	 *            要设置的 uidCard
	 */
	public void setUidCard(String uidCard) {
		this.uidCard = uidCard;
	}

	/**
	 * @return effectivedate
	 */
	public String getEffectivedate() {
		return effectivedate;
	}

	/**
	 * @param effectivedate
	 *            要设置的 effectivedate
	 */
	public void setEffectivedate(String effectivedate) {
		this.effectivedate = effectivedate;
	}

	/**
	 * @return utel
	 */
	public String getUtel() {
		return utel;
	}

	/**
	 * @param utel
	 *            要设置的 utel
	 */
	public void setUtel(String utel) {
		this.utel = utel;
	}

	/**
	 * @return balance
	 */
	public String getBalance() {
		return balance;
	}

	/**
	 * @param balance
	 *            要设置的 balance
	 */
	public void setBalance(String balance) {
		this.balance = balance;
	}

	/**
	 * @return userId
	 */
	public String getUserId() {
		return userId;
	}

	/**
	 * @param userId
	 *            要设置的 userId
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}

	/**
	 * @return startTime
	 */
	public String getStartTime() {
		return startTime;
	}

	/**
	 * @param startTime
	 *            要设置的 startTime
	 */
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	/**
	 * @return upsw
	 */
	public String getUpsw() {
		return upsw;
	}

	/**
	 * @param upsw
	 *            要设置的 upsw
	 */
	public void setUpsw(String upsw) {
		this.upsw = upsw;
	}
}