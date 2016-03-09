package yznu.holiday.dao;

import yznu.holiday.impl.BookInterface;

/**
 * 关于图书的数据库操作
 */
public class BookDao extends BaseDao implements BookInterface {

	/*
	 * （非 Javadoc）
	 * 
	 * @see yznu.holiday.impl.BookInterface#addKindsBooks(java.lang.String[])
	 */
	/**
	 * 添加图书种类（参数个数：2【btid、type】）（可借天数默认30天）
	 */
	@Override
	public int addKindsBooks(String[] args) {
		// TODO 自动生成的方法存根
		String sql = "insert into tb_booktype (btid, type, days) values (?,?,'"
				+ super.getDay() + "')";
		return super.update(sql, args);
	}

	/*
	 * （非 Javadoc）
	 * 
	 * @see yznu.holiday.impl.BookInterface#updateKindsbooks(java.lang.String[])
	 */
	/**
	 * 更新图书种类（参数个数：2【type、btid】）
	 */
	@Override
	public int updateKindsbooks(String[] args) {
		// TODO 自动生成的方法存根
		String sql = "update tb_booktype set type=? where btid=?";
		// System.out.println(args[0]+"*******"+args[1]);
		return super.update(sql, args);
	}

	/*
	 * （非 Javadoc）
	 * 
	 * @see yznu.holiday.impl.BookInterface#deleteKindsbooks(java.lang.String[])
	 */
	/**
	 * 删除图书种类（参数个数：1【btid】）
	 */
/*	@Override
	public int deleteKindsbooks(String[] args) {
		// TODO 自动生成的方法存根
		String sql = "delete from tb_booktype where btid=?";
		return super.update(sql, args);
	}
*/
	/*
	 * （非 Javadoc）
	 * 
	 * @see yznu.holiday.impl.BookInterface#addBooks(java.lang.String[])
	 */
	/**
	 * 添加图书（参数个数：8【ISBN、typeId、bookname、writer、translator、publisher、date、price】）
	 */
	@Override
	public int addBooks(String[] args) {
		// TODO 自动生成的方法存根
		String sql = "insert into tb_bookinfo (ISBN, typeId, bookname, writer, translator, publisher, date, price) values (?,?,?,?,?,?,?,?)";
		return super.update(sql, args);
	}

	/*
	 * （非 Javadoc）
	 * 
	 * @see yznu.holiday.impl.BookInterface#deleteBooks(java.lang.String[])
	 */
	/**
	 * 删除图书（参数个数：1【ISBN】）
	 */
	@Override
	public int deleteBooks(String[] args) {
		// TODO 自动生成的方法存根
		String sql = "delete from tb_bookinfo where ISBN=?";
		return super.update(sql, args);
	}

	/*
	 * （非 Javadoc）
	 * 
	 * @see yznu.holiday.impl.BookInterface#borrowBook(java.lang.String[])
	 */
	/**
	 * 借阅图书（参数个数：2【ISBN、userISBN】）
	 */
	@Override
	public int borrowBook(String[] args) {
		String sql1 = "insert into tb_borrowrecord (bookISBN, userISBN, borrowDate, backDate, isback) values (?,?,'"
				+ super.getDate() + "','" + super.getAfter30Date() + "',0)";
		String sql2 = "update tb_stockpile set amount=amount-1 where ISBN=?";
		int n = super.update(sql1, args);
		String arg[] = { args[0] };
		int m = super.update(sql2, arg);// args[0]
		return n & m;
	}

	/*
	 * （非 Javadoc）
	 * 
	 * @see yznu.holiday.impl.BookInterface#backBook(java.lang.String[])
	 */
	/**
	 * 归还图书（参数个数：2【ISBN、userISBN】）
	 */
	@Override
	public int backBook(String[] args) {
		// TODO 自动生成的方法存根
		System.out.println(super.getDate());
		String sql1 = "update tb_borrowrecord set isback=1,backDate='"
				+ super.getDate() + "' where bookISBN=? and userISBN=?";
		String sql2 = "update tb_stockpile set amount=amount+1 where ISBN=?";
		System.out.println(sql1);
		int n = super.update(sql1, args);// bookISBN、userISBN
		String args2[] = { args[0] };
		int m = super.update(sql2, args2);// bookISBN
		return n & m;
	}

	/**
	 * 续借图书（参数个数：2【ISBN、userISBN】）
	 */
	@Override
	public int renewBook(String[] args) {
		// TODO 自动生成的方法存根
		System.out.println(super.getDate());
		String sql1 = "update tb_borrowrecord set backDate='"
				+ super.getAfter30Date() + "',borrowDate='"+super.getDate()+"' where bookISBN=? and userISBN=?";
		System.out.println(sql1);
		int n = super.update(sql1, args);// bookISBN、userISBN
		return n;
	}
	/**
	 * 删除新增图书表中的图书（参数个数：1【ISBN】）
	 */
	@Override
	public int deleteNewBooks(String[] args) {
		// TODO 自动生成的方法存根
		String sql = "delete from tb_newbooks where newISBN=?";
		return super.update(sql, args);
	}
	/**
	 * 添加新增图书库存量（参数个数：1【ISBN】）
	 */
	@Override
	public int addNewStocks(String[] args) {
		// TODO 自动生成的方法存根
		String sql = "insert into tb_stockpile(ISBN,amount) values(?,5)";
		return super.update(sql, args);
	}
	/**
	 * 删除图书库存量（参数个数：1【ISBN】）
	 */
	@Override
	public int delNewStocks(String[] args) {
		// TODO 自动生成的方法存根
		String sql = "delete from tb_stockpile where ISBN=?";
		return super.update(sql, args);
	}

}