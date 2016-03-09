/**
 * 学校：长江师范学院
 * 学院：计算机工程学院
 * 专业：计算机科学与技术（软件服务外包）
 * 年级：2012级
 * 日期：2014年12月30日
 * 时间：下午6:57:20
 * 文件名：BorrowRecord.java
 * 所属包名：yznu.holiday.bean
 * 所属项目名：HolidayReading
 */
package yznu.holiday.bean;

/**
 * 借阅记录JavaBean
 */
public class BorrowRecordBean {
	private String recordid;
	private String bookISBN;
	private String userISBN;
	private String isback;
	private String borrowDate;
	private String backDate;
	private String bookName;

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public BorrowRecordBean() {
		super();
	}

	/**
	 * @param recordid
	 * @param bookISBN
	 * @param adminId
	 * @param userISBN
	 * @param isback
	 * @param borrowDate
	 * @param backDate
	 */
	public BorrowRecordBean(String recordid, String bookISBN, String bookName,
			String userISBN, String isback, String borrowDate, String backDate) {
		super();
		this.recordid = recordid;
		this.bookISBN = bookISBN;
		this.bookName = bookName;
		this.userISBN = userISBN;
		this.isback = isback;
		this.borrowDate = borrowDate;
		this.backDate = backDate;
	}

	/**
	 * @return recordid
	 */
	public String getRecordid() {
		return recordid;
	}

	/**
	 * @param recordid
	 *            要设置的 recordid
	 */
	public void setRecordid(String recordid) {
		this.recordid = recordid;
	}

	/**
	 * @return bookISBN
	 */
	public String getBookISBN() {
		return bookISBN;
	}

	/**
	 * @param bookISBN
	 *            要设置的 bookISBN
	 */
	public void setBookISBN(String bookISBN) {
		this.bookISBN = bookISBN;
	}

	/**
	 * @return userISBN
	 */
	public String getUserISBN() {
		return userISBN;
	}

	/**
	 * @param userISBN
	 *            要设置的 userISBN
	 */
	public void setUserISBN(String userISBN) {
		this.userISBN = userISBN;
	}

	/**
	 * @return isback
	 */
	public String getIsback() {
		return isback;
	}

	/**
	 * @param isback
	 *            要设置的 isback
	 */
	public void setIsback(String isback) {
		this.isback = isback;
	}

	/**
	 * @return borrowDate
	 */
	public String getBorrowDate() {
		return borrowDate;
	}

	/**
	 * @param borrowDate
	 *            要设置的 borrowDate
	 */
	public void setBorrowDate(String borrowDate) {
		this.borrowDate = borrowDate;
	}

	/**
	 * @return backDate
	 */
	public String getBackDate() {
		return backDate;
	}

	/**
	 * @param backDate
	 *            要设置的 backDate
	 */
	public void setBackDate(String backDate) {
		this.backDate = backDate;
	}
}