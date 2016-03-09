package yznu.holiday.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;

import yznu.holiday.bean.AdminBean;
import yznu.holiday.bean.BlackListBean;
import yznu.holiday.bean.UserInfoBean;
import yznu.holiday.dao.UserDao;

public class TestUserDao {
	private UserDao ud=new UserDao();

	@Test
	public void testAddUser() {//添加新用户小妖
		String args[]={"小妖","20","500383199404081024","13845321678","11111111","11"};
		int n = ud.addUser(args);
		assertEquals(n==1,true);
	}

	@Test
	public void testCheckLogin() {//判断是否有用户红孩儿
		String args[]={"03847230","1"};
		UserInfoBean ui = ud.checkLogin(args);
		assertEquals(ui!=null,true);
	}
	
	@Test
	public void testGetUser() {//获取用户小妖
		String args[]={"11111111"};
		UserInfoBean ui = ud.getUser(args);
		assertEquals(ui!=null,true);
	}
	
	@Test
	public void testRechargeUser() {//用户小妖充值100
		String args[]={"100","11111111"};
		int n = ud.rechargeUser(args);
		assertEquals(n==1,true);
	}
	
	@Test
	public void testUpdateUserInfo() {//更新用户小妖的电话为15034256780
		String args[]={"小妖","15034256780","11111111"};
		int n = ud.updateUserInfo(args);
		assertEquals(n==1,true);
	}
	
	@Test
	public void testUpdatePsw() {//用户小妖改密码为888
		String args[]={"888","11111111"};
		int n = ud.updatePsw(args);
		assertEquals(n==1,true);
	}

	@Test
	public void testCheckAdminLogin() {//判断是否有管理员admin
		String args[]={"admin","admin"};
		AdminBean ab = ud.checkAdminLogin(args);
		assertEquals(ab!=null,true);
	}

	@Test
	public void testGetAllUser() {//获取所有用户
		String args[]={};
		List<UserInfoBean> list = ud.getAllUser(args);
		assertEquals(list!=null,true);
	}

	@Test
	public void testAddArrearageUser() {//添加用户小宇到黑名单
		String args[]={"小宇","22222222","500392199403080023","-10"};
		int n = ud.addArrearageUser(args);
		assertEquals(n==1,true);
	}

	@Test
	public void testGetArrearageUser() {//获取黑名单中的用户太白金星
		String args[]={"12345678"};
		BlackListBean blb = ud.getArrearageUser(args);
		assertEquals(blb!=null,true);
	}

	@Test
		public void testRechargeArrearageUser() {//黑名单中的用户太白金星充值100
			String args[]={"100","12345678"};
			int n = ud.rechargeArrearageUser(args);
			assertEquals(n==1,true);
		}
	
	@Test
	public void testDeleteArrearageUser() {//删除黑名单中的用户太白金星
		String args[]={"12345678"};
		int n = ud.deleteArrearageUser(args);
		assertEquals(n==1,true);
	}
}
