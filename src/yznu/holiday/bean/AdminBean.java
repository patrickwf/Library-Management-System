/**
 * 学校：长江师范学院
 * 学院：计算机工程学院
 * 专业：计算机科学与技术（软件服务外包）
 * 年级：2012级
 * 日期：2014年12月30日
 * 时间：下午5:21:41
 * 文件名：AdminBean.java
 * 所属包名：yznu.holiday.bean
 * 所属项目名：HolidayReading
 */
package yznu.holiday.bean;

/**
 * 管理员信息JavaBean
 */
public class AdminBean {
	private String aid;
	private String aname;
	private String asex;
	private String aage;
	private String aidCard;
	private String atel;
	private String alevel;
	private String apsw;

	public AdminBean() {
		super();
	}

	/**
	 * @param aid
	 * @param aname
	 * @param asex
	 * @param aage
	 * @param aidCard
	 * @param atel
	 * @param alevel
	 * @param apsw
	 */
	public AdminBean(String aid, String aname, String asex, String aage,
			String aidCard, String atel, String alevel, String apsw) {
		super();
		this.aid = aid;
		this.aname = aname;
		this.asex = asex;
		this.aage = aage;
		this.aidCard = aidCard;
		this.atel = atel;
		this.alevel = alevel;
		this.apsw = apsw;
	}

	/**
	 * @return aid
	 */
	public String getAid() {
		return aid;
	}

	/**
	 * @param aid
	 *            要设置的 aid
	 */
	public void setAid(String aid) {
		this.aid = aid;
	}

	/**
	 * @return aname
	 */
	public String getAname() {
		return aname;
	}

	/**
	 * @param aname
	 *            要设置的 aname
	 */
	public void setAname(String aname) {
		this.aname = aname;
	}

	/**
	 * @return asex
	 */
	public String getAsex() {
		return asex;
	}

	/**
	 * @param asex
	 *            要设置的 asex
	 */
	public void setAsex(String asex) {
		this.asex = asex;
	}

	/**
	 * @return aage
	 */
	public String getAage() {
		return aage;
	}

	/**
	 * @param aage
	 *            要设置的 aage
	 */
	public void setAage(String aage) {
		this.aage = aage;
	}

	/**
	 * @return aidCard
	 */
	public String getAidCard() {
		return aidCard;
	}

	/**
	 * @param aidCard
	 *            要设置的 aidCard
	 */
	public void setAidCard(String aidCard) {
		this.aidCard = aidCard;
	}

	/**
	 * @return atel
	 */
	public String getAtel() {
		return atel;
	}

	/**
	 * @param atel
	 *            要设置的 atel
	 */
	public void setAtel(String atel) {
		this.atel = atel;
	}

	/**
	 * @return alevel
	 */
	public String getAlevel() {
		return alevel;
	}

	/**
	 * @param alevel
	 *            要设置的 alevel
	 */
	public void setAlevel(String alevel) {
		this.alevel = alevel;
	}

	/**
	 * @return apsw
	 */
	public String getApsw() {
		return apsw;
	}

	/**
	 * @param apsw
	 *            要设置的 apsw
	 */
	public void setApsw(String apsw) {
		this.apsw = apsw;
	}
}