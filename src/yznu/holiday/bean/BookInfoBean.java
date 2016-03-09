/**
 * 学校：长江师范学院
 * 学院：计算机工程学院
 * 专业：计算机科学与技术（软件服务外包）
 * 年级：2012级
 * 日期：2014年12月30日
 * 时间：下午4:09:14
 * 文件名：Book.java
 * 所属包名：yznu.holiday.bean
 * 所属项目名：HolidayReading
 */
package yznu.holiday.bean;

/**
 * 图书信息JavaBean
 */
public class BookInfoBean {
	/**
	 * 图书编号
	 */
	private String ISBN;
	/**
	 * 图书类别
	 */
	private String typeId;
	/**
	 * 图书名称
	 */
	private String bookname;
	/**
	 * 作者
	 */
	private String writer;
	/**
	 * 译者
	 */
	private String translator;
	/**
	 * 出版商
	 */
	private String publisher;
	/**
	 * 出版日期
	 */
	private String date;
	/**
	 * 图书价格
	 */
	private String price;

	/**
	 * 
	 */
	public BookInfoBean() {
		super();
	}

	/**
	 * @param iSBN
	 * @param typeId
	 * @param bookname
	 * @param writer
	 * @param translator
	 * @param publisher
	 * @param date
	 * @param price
	 */
	public BookInfoBean(String ISBN, String typeId, String bookname,
			String writer, String translator, String publisher, String date,
			String price) {
		super();
		this.ISBN = ISBN;
		this.typeId = typeId;
		this.bookname = bookname;
		this.writer = writer;
		this.translator = translator;
		this.publisher = publisher;
		this.date = date;
		this.price = price;
	}

	/**
	 * @return iSBN
	 */
	public String getISBN() {
		return ISBN;
	}

	/**
	 * @param iSBN
	 *            要设置的 iSBN
	 */
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}

	/**
	 * @return typeId
	 */
	public String getTypeId() {
		return typeId;
	}

	/**
	 * @param typeId
	 *            要设置的 typeId
	 */
	public void setTypeId(String typeId) {
		this.typeId = typeId;
	}

	/**
	 * @return bookname
	 */
	public String getBookname() {
		return bookname;
	}

	/**
	 * @param bookname
	 *            要设置的 bookname
	 */
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	/**
	 * @return writer
	 */
	public String getWriter() {
		return writer;
	}

	/**
	 * @param writer
	 *            要设置的 writer
	 */
	public void setWriter(String writer) {
		this.writer = writer;
	}

	/**
	 * @return translator
	 */
	public String getTranslator() {
		return translator;
	}

	/**
	 * @param translator
	 *            要设置的 translator
	 */
	public void setTranslator(String translator) {
		this.translator = translator;
	}

	/**
	 * @return publisher
	 */
	public String getPublisher() {
		return publisher;
	}

	/**
	 * @param publisher
	 *            要设置的 publisher
	 */
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	/**
	 * @return date
	 */
	public String getDate() {
		return date;
	}

	/**
	 * @param date
	 *            要设置的 date
	 */
	public void setDate(String date) {
		this.date = date;
	}

	/**
	 * @return price
	 */
	public String getPrice() {
		return price;
	}

	/**
	 * @param price
	 *            要设置的 price
	 */
	public void setPrice(String price) {
		this.price = price;
	}
}