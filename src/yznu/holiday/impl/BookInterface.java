/**
 * 学校：长江师范学院
 * 学院：计算机工程学院
 * 专业：计算机科学与技术（软件服务外包）
 * 年级：2012级
 * 日期：2014年12月30日
 * 时间：下午9:12:07
 * 文件名：BooksManage.java
 * 所属包名：yznu.holiday.impl
 * 所属项目名：HolidayReading
 */
package yznu.holiday.impl;

/**
 * 关于图书的操作
 */
public interface BookInterface {
	/**
	 * 添加图书种类
	 * 
	 * @param args
	 * @return
	 */
	public int addKindsBooks(String[] args);

	/**
	 * 更新图书种类
	 * 
	 * @param args
	 * @return
	 */
	public int updateKindsbooks(String[] args);

	/**
	 * 删除图书种类
	 * 
	 * @param args
	 * @return
	 */
	//public int deleteKindsbooks(String[] args);

	/**
	 * 添加图书
	 * 
	 * @param args
	 * @return
	 */
	public int addBooks(String[] args);

	/**
	 * 删除图书
	 * 
	 * @param args
	 * @return
	 */
	public int deleteBooks(String[] args);

	/**
	 * 借阅图书
	 * 
	 * @param args
	 * @return
	 */
	public int borrowBook(String[] args);

	/**
	 * 归还图书
	 * 
	 * @param args
	 * @return
	 */
	public int backBook(String[] args);

	/**
	 * 续借图书
	 * 
	 * @param args
	 * @return
	 */
	public int renewBook(String[] args);
	/**
	 * 删除新书表中的图书
	 * 
	 * @param args
	 * @return
	 */
	public int deleteNewBooks(String[] args);
	/**
	 * 添加新书库存量
	 * 
	 * @param args
	 * @return
	 */
	public int addNewStocks(String[] args);
	/**
	 * 删除图书库存量
	 * 
	 * @param args
	 * @return
	 */
	public int delNewStocks(String[] args);

}