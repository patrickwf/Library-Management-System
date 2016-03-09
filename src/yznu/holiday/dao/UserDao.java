/**
 * 学校：长江师范学院
 * 学院：计算机工程学院
 * 专业：计算机科学与技术（软件服务外包）
 * 年级：2012级
 * 日期：2014年12月30日
 * 时间：下午9:15:40
 * 文件名：UserDao.java
 * 所属包名：yznu.holiday.dao
 * 所属项目名：HolidayReading
 */
package yznu.holiday.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import yznu.holiday.bean.AdminBean;
import yznu.holiday.bean.*;
import yznu.holiday.impl.UserInterface;

/**
 * 关于用户的数据库操作
 */
public class UserDao extends BaseDao implements UserInterface {
	/*
	 * （非 Javadoc）
	 * 
	 * @see yznu.holiday.impl.UserInterface#addUser(java.lang.String[])
	 */
	/**
	 * 添加用户（参数个数：6【Uname、Uage、UidCard、Utel、UserId、Upsw】）
	 */
	@Override
	public int addUser(String[] args) {
		// TODO 自动生成的方法存根
		String sql = "insert into tb_user (Uname, Uage, UidCard, effectivedate, Utel, balance, UserId,starttime,Upsw) values (?,?,?,'"
				+ super.getAfterDate() + "',?,0,?,'" + super.getDate() + "',?)";
		return super.update(sql, args);
	}

	/**
	 * 添加黑名单用户（参数个数：3【Uname、UidCard、UserId】）
	 */
	@Override
	public int addArrearageUser(String[] args) {
		// TODO 自动生成的方法存根
		String sql = "insert into tb_blacklist (arrearageName, arrearageId, arrearageIdCard,arrearageBalance) values (?,?,?,?)";
		return super.update(sql, args);
	}

	/*
	 * （非 Javadoc）
	 * 
	 * @see yznu.holiday.impl.UserInterface#deleteUser(java.lang.String[])
	 */
	/**
	 * 删除用户（参数个数：1【UserId】）
	 */
	/*
	@Override
	public int deleteUser(String[] args) {
		// TODO 自动生成的方法存根
		String sql = "delete from tb_user where UserId=?";
		return super.update(sql, args);
	}
    */
	/*
	 * （非 Javadoc）
	 * 
	 * @see yznu.holiday.impl.UserInterface#updateUserInfo(java.lang.String[])
	 */
	/**
	 * 更新用户信息（参数个数：3【Uname、Utel、UserId】）
	 */
	@Override
	public int updateUserInfo(String[] args) {
		// TODO 自动生成的方法存根
		String sql = "update tb_user set Uname=?,Utel=? where UserId=?";
		return super.update(sql, args);
	}

	/*
	 * （非 Javadoc）
	 * 
	 * @see yznu.holiday.impl.UserInterface#getUser(java.lang.String[])
	 */
	/**
	 * 根据Userid获取用户信息（参数个数：1【UserId】）
	 */
	@Override
	public UserInfoBean getUser(String[] args) {
		// TODO 自动生成的方法存根
		String sql = "select Uname,Uage,UidCard,effectivedate,Utel,balance,startTime,Upsw from tb_user where UserId=?";
		ResultSet rs = super.select(sql, args);
		UserInfoBean uib = null;
		try {
			if (rs.next()) {
				String uname = rs.getString("Uname");
				String uage = String.valueOf(rs.getInt("Uage"));
				String uidCard = rs.getString("UidCard");
				String effectivedate = rs.getDate("effectivedate").toString();
				String utel = rs.getString("Utel");
				String balance = String.valueOf(rs.getFloat("balance"));
				String startTime = rs.getDate("startTime").toString();
				String upsw = rs.getString("Upsw");
				uib = new UserInfoBean(uname, uage, uidCard, effectivedate,
						utel, balance, args[0], startTime, upsw);
				return uib;
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
			return uib;
		}
		return uib;
	}

	/*
	 * （非 Javadoc）
	 * 
	 * @see yznu.holiday.impl.UserInterface#checkLogin(java.lang.String[])
	 */
	/**
	 * 检查普通用户登陆（参数个数：2【UserId、Upsw】）
	 */
	@Override
	public UserInfoBean checkLogin(String[] args) {
		// TODO 自动生成的方法存根
		String sql = "select Uname,Uage,UidCard,effectivedate,Utel,balance,starttime from tb_user where UserId=? and Upsw=?";
		ResultSet rs = super.select(sql, args);
		UserInfoBean uib = null;
		try {
			if (rs.next()) {
				String uname = rs.getString("Uname");
				String uage = String.valueOf(rs.getInt("Uage"));
				String uidCard = rs.getString("UidCard");
				String effectivedate = rs.getDate("effectivedate").toString();
				String utel = rs.getString("Utel");
				String balance = String.valueOf(rs.getFloat("balance"));
				String startTime = rs.getDate("startTime").toString();
				uib = new UserInfoBean(uname, uage, uidCard, effectivedate,
						utel, balance, args[0], startTime, args[1]);
				return uib;
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
			return uib;
		}
		return uib;
	}

	/**
	 * 检查管理员登陆（参数个数：2【AId、Apsw】）
	 */
	@Override
	public AdminBean checkAdminLogin(String[] args) {
		// TODO 自动生成的方法存根
		String sql = "select Aname,Asex,Aage,AidCard,Atel,Alevel from tb_admin where Aid=? and Apsw=?";
		ResultSet rs = super.select(sql, args);
		AdminBean ab = null;
		try {
			if (rs.next()) {
				String Aname = rs.getString("Aname");
				String Asex = rs.getString("Asex");
				String Aage = rs.getString("Aage");
				String AidCard = rs.getString("AidCard");
				String Atel = rs.getString("Atel");
				String Alevel = rs.getString("Alevel");
				ab = new AdminBean(args[0], Aname, Asex, Aage, AidCard, Atel,
						Alevel, args[1]);
				return ab;
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
			return null;
		}
		return ab;
	}
   
	/**
	 * 进行充值（参数个数：2【UserId、充值数目】）
	 */ 
	@Override
	public int rechargeUser(String[] args) {
		// TODO Auto-generated method stub
		String sql = "update tb_user set balance=balance+? where UserId=?";
		return super.update(sql, args);
	}
    
	/**
	 * 修改密码（参数个数：2【UserId、新密码】）
	 */
	@Override
	public int updatePsw(String[] args) {
		// TODO Auto-generated method stub
		String sql = "update tb_user set Upsw=? where UserId=?";
		return super.update(sql, args);
	}

	/**
	 * 得到所有的用户信息
	 */
	@Override
	public List<UserInfoBean> getAllUser(String[] args) {
		// TODO Auto-generated method stub
		String sql = "select Uname,Uage,UidCard,effectivedate,Utel,balance,UserId,startTime,Upsw from tb_user";
		ResultSet rs = super.select(sql, args);
		List<UserInfoBean> uib = new ArrayList<UserInfoBean>();
		try {
			while (rs.next()) {
				String uname = rs.getString("Uname");
				String uage = String.valueOf(rs.getInt("Uage"));
				String uidCard = rs.getString("UidCard");
				String effectivedate = rs.getDate("effectivedate").toString();
				String utel = rs.getString("Utel");
				String balance = String.valueOf(rs.getFloat("balance"));
				String startTime = rs.getDate("startTime").toString();
				String upsw = rs.getString("Upsw");
				String UserId = rs.getString("UserId");
				uib.add(new UserInfoBean(uname, uage, uidCard, effectivedate,
						utel, balance, UserId, startTime, upsw));
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		return uib;
	}

	/**
	 * 获取某一黑名单用户信息（参数个数：1【arrearageId】）
	 */
	@Override
	public BlackListBean getArrearageUser(String[] args) {
		// TODO 自动生成的方法存根
		String sql = "select arrearageName,arrearageIdCard,arrearageBalance from tb_blacklist where arrearageId=?";
		ResultSet rs = super.select(sql, args);
		BlackListBean uib = null;
		try {
			if (rs.next()) {
				String arrearageName = rs.getString("arrearageName");
				String arrearageIdCard = rs.getString("arrearageIdCard");
				String arrearageBalance = rs.getString("arrearageBalance");
				uib = new BlackListBean(arrearageName, args[0],
						arrearageIdCard, arrearageBalance);
				return uib;
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
			return uib;
		}
		return uib;
	}

	/**
	 * 删除黑名单用户（参数个数：1【arrearageId】）
	 */
	@Override
	public int deleteArrearageUser(String[] args) {
		// TODO 自动生成的方法存根
		String sql = "delete from tb_blacklist where arrearageId=?";
		return super.update(sql, args);
	}

	/**
	 * 充值后更改黑名单余额 （参数个数：1【arrearageId】）
	 */
	public int rechargeArrearageUser(String[] args) {
		// TODO Auto-generated method stub
		String sql = "update tb_blacklist set arrearageBalance=arrearageBalance+? where arrearageId=?";
		return super.update(sql, args);
	}
}