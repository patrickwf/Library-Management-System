package yznu.holiday.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;

import yznu.holiday.bean.BookInfoBean;
import yznu.holiday.bean.BookTypeBean;
import yznu.holiday.bean.BorrowRecordBean;
import yznu.holiday.bean.UserInfoBean;
import yznu.holiday.dao.QueryDao;

public class TestQueryDao {
   private QueryDao qd=new QueryDao();
	@Test
	public void testQueryBorrowRecord() {
		String args[]={"12345678"};
		List<BorrowRecordBean> list=  qd.QueryBorrowRecord(args);
		assertEquals(list!=null,true);
	}

	@Test
	public void testQueryKindsBooks() {
		String args[]={"1001"};
		List<BookInfoBean> list=  qd.QueryKindsBooks(args);
		assertEquals(list!=null,true);
	}

	@Test
	public void testQuerySearchBooks() {
		String a[]={"1001"};
		String args[] = null;
		List<BookInfoBean> list=  qd.QuerySearchBooks(args,a);
		assertEquals(list!=null,true);
	}

	@Test
	public void testQueryBook() {
		String args[]={"9787210060161"};
		BookInfoBean list=  qd.QueryBook(args);
		assertEquals(list!=null,true);
	}

	@Test
	public void testQueryBookStock() {
		String args[]={"9787071111111"};
		int list=  qd.QueryBookStock(args);
		assertEquals(list==5,true);
	}

	@Test
	public void testPageList() {
		List<BookInfoBean> list=  qd.pageList(1,3,"1001");
		assertEquals(list!=null,true);
	}

	@Test
	public void testQueryTypeName() {
		String args[]={"1001"};
		String list=  qd.queryTypeName(args);
		assertEquals(list.equals("Ç××Ó½ÌÓý"),true);
	}

	@Test
	public void testQueryAllTypeName() {
		String args[]=null;
		List<BookTypeBean> list=  qd.queryAllTypeName(args);
		assertEquals(list!=null,true);
	}

	@Test
	public void testQueryArrearageBalance() {
		String args[]={"12345678"};
		String list=  qd.QueryArrearageBalance(args);
		assertEquals(list.equals("-20"),true);
	}

	@Test
	public void testCount() {
		String args[]={"1001"};
		int list=  qd.count(args);
		assertEquals(list!=-1,true);
	}

	@Test
	public void testQueryNewBooks() {
		String args[]=null;
		List<BookInfoBean> list=  qd.QueryNewBooks(args);
		assertEquals(list!=null,true);
	}

	@Test
	public void testQueryNewBook() {
		String args[]={"9787505729230"};
		BookInfoBean list=  qd.QueryNewBook(args);
		assertEquals(list!=null,true);
	}

}
