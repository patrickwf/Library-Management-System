package yznu.holiday.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;

/**
 * 封装常规的数据库增，删，改，查操作
 */
public class BaseDao {
	private String driver = "";
	private String url = "";
	private String user = "";
	private String password = "";
	private static int time = 2;
	private static int day = 30;

	public BaseDao() {
		driver = PropertiesUtil.get("driver");
		url = PropertiesUtil.get("url");
		user = PropertiesUtil.get("user");
		password = PropertiesUtil.get("password");
	}

	public final Connection getConnection() {
		try {
			Class.forName(driver);// 动态加载一个外部的class文件
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	/**
	 * 统一增，删，改方法
	 * 
	 * @param sql
	 *            预编译的SQL语句
	 * @param args
	 *            占位符（?）对应的参数列表
	 * @return
	 */
	public int update(String sql, String[] args) {
		try {
			PreparedStatement pstmt = getConnection().prepareStatement(sql);
			// System.out.println(args[0]+"**&&&**"+args[1]);
			if (args != null && args.length > 0) {
				for (int i = 0; i < args.length; i++) {// 通过循环放置参数
					pstmt.setString(i + 1, args[i]);
				}
			}
			int result = pstmt.executeUpdate();
			pstmt.close();
			return result;
		} catch (SQLException e) {
			e.printStackTrace();
			return -1;
		}
	}

	/**
	 * 统一查询方法
	 * 
	 * @param sql
	 * @param args
	 * @return
	 */
	public ResultSet select(String sql, String[] args) {
		try {
			PreparedStatement pstmt = getConnection().prepareStatement(sql);
			if (args != null && args.length > 0) {
				for (int i = 0; i < args.length; i++) {// 通过循环放置参数
					pstmt.setString(i + 1, args[i]);
				}
			}
			ResultSet result = pstmt.executeQuery();
			return result;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 获取当前指定格式的日期
	 * 
	 * @return
	 */
	public String getDate() {
		return new SimpleDateFormat("yyyy-MM-dd").format(new Date()).toString()
				.trim();
	}

	/**
	 * 获取2年后指定格式的日期
	 * 
	 * @return
	 */
	public String getAfterDate() {
		GregorianCalendar gc = new GregorianCalendar();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		gc.setTime(new Date());
		gc.add(1, time);
		return sf.format(gc.getTime());
	}

	/**
	 * 获取30天后指定格式的日期
	 * 
	 * @return
	 */
	public String getAfter30Date() {
		GregorianCalendar gc = new GregorianCalendar();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		gc.setTime(new Date());
		gc.add(5, day);
		return sf.format(gc.getTime());
	}

	/**
	 * @return day
	 */
	public static int getDay() {
		return day;
	}

	/**
	 * @param day
	 *            要设置的 day
	 */
	public static void setDay(int day) {
		BaseDao.day = day;
	}
}