/**
 * 学校：长江师范学院
 * 学院：计算机工程学院
 * 专业：计算机科学与技术（软件服务外包）
 * 年级：2012级
 * 日期：2014年12月30日
 * 时间：下午8:31:48
 * 文件名：UtilInterface.java
 * 所属包名：yznu.holiday.impl
 * 所属项目名：HolidayReading
 */
package yznu.holiday.impl;

import java.util.List;

import yznu.holiday.bean.BookInfoBean;
import yznu.holiday.bean.BookTypeBean;
import yznu.holiday.bean.BorrowRecordBean;

/**
 * 关于查询的操作
 */
public interface QueryInterface {
	/**
	 * 查询借阅记录
	 * 
	 * @return
	 */
	public List<BorrowRecordBean> QueryBorrowRecord(String[] args);

	/**
	 * 查询书籍种类
	 * 
	 * @param typeId
	 * @return
	 */
	public List<BookInfoBean> QueryKindsBooks(String[] args);

	/**
	 * 查询某一本书籍
	 * 
	 * @param ISBN
	 * @return
	 */
	public BookInfoBean QueryBook(String[] args);

	/**
	 * 查询库存量
	 */
	public int QueryBookStock(String[] args);

	/**
	 * 分页查询
	 * 
	 * @param args
	 * @return
	 */
	public List<BookInfoBean> pageList(int page, int pageContent, String type);

	/**
	 * 
	 * 查询某一图书种类名称
	 */
	public String queryTypeName(String[] args);

	/**
	 * 
	 * 查询所有图书种类名称
	 * 
	 */
	public List<BookTypeBean> queryAllTypeName(String[] args);

	/**
	 * 
	 * 模糊查询图书
	 * 
	 */
	public List<BookInfoBean> QuerySearchBooks(String[] args, String a[]);

	/**
	 * 查询某一种类书的个数
	 */
	public int count(String[] args);
	
	/**
	 * 查询所有的新书
	 */
	public List<BookInfoBean> QueryNewBooks(String[] args);
	
	/**
	 * 查询某一的新书
	 */
	public BookInfoBean QueryNewBook(String[] args);

}