package yznu.holiday.test;

import static org.junit.Assert.*;

import org.junit.Test;

import yznu.holiday.dao.BookDao;

public class TestBookDao {
	BookDao bd=new BookDao();

	@Test
	public void testUpdateKindsbooks() {
		String args[]={"教育","1001"};
		int n=bd.updateKindsbooks(args);
		assertEquals(n==1, true);//将亲子教育类名改为教育
	}

	@Test
	public void testAddBooks() {
		String args[]={"1234567891012","1003","追风筝的人","大卫","无","湖南文艺出版社","2015-09-01","25.5"};
		int n=bd.addBooks(args);
		assertEquals(n==1, true);//增加《追风筝的人》到小说类
	}

	@Test
	public void testDeleteBooks() {
		String args[]={"9787071111111"};
		int n=bd.deleteBooks(args);
		assertEquals(n==1, true);//删除编号9787071111111传记类书名《我的价值观》
	}

	@Test
	public void testBorrowBook() {
		String args[]={"9787108032911","12345678"};
		int n=bd.borrowBook(args);
		assertEquals(n==1, true);//用户12345678借阅编号9787108032911文学类书名《目送》
	}

	@Test
	public void testBackBook() {
		String args[]={"9787210060161","12345678"};
		int n=bd.backBook(args);
		assertEquals(n==1, true);//用户12345678归还编号9787210060161哲学宗教类图书《能断金刚》
	}

	@Test
	public void testRenewBook() {
		String args[]={"9787506376372","12345678"};
		int n=bd.renewBook(args);
		assertEquals(n==1, true);//用户12345678续借编号9787506376372小说类图书《北平无战事》
	}

	@Test
	public void testDeleteNewBooks() {
		String args[]={"9787505729230"};
		int n=bd.deleteNewBooks(args);
		assertEquals(n==1, true);//删除订购图书中《一切都是最好的安排》
	}

	@Test
	public void testAddNewStocks() {
		String args[]={"9787505729230"};
		int n=bd.addNewStocks(args);
		assertEquals(n==1, true);//增加《一切都是最好的安排》的库存量为5
	}

}
