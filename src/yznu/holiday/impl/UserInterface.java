/**
 * 学校：长江师范学院
 * 学院：计算机工程学院
 * 专业：计算机科学与技术（软件服务外包）
 * 年级：2012级
 * 日期：2014年12月30日
 * 时间：下午8:26:09
 * 文件名：UserInterface.java
 * 所属包名：yznu.holiday.impl
 * 所属项目名：HolidayReading
 */
package yznu.holiday.impl;

import java.util.List;

import yznu.holiday.bean.*;

/**
 * 关于用户的操作
 */
public interface UserInterface {
	/**
	 * 添加用户
	 * 
	 * @param args
	 * @return
	 */
	public int addUser(String[] args);

	/**
	 * 删除用户
	 * 
	 * @param args
	 * @return
	 */
//	public int deleteUser(String[] args);

	/**
	 * 更新用户信息
	 * 
	 * @param args
	 * @return
	 */
	public int updateUserInfo(String[] args);

	/**
	 * 获取用户资料
	 * 
	 * @param args
	 * @return
	 */
	public UserInfoBean getUser(String[] args);

	/**
	 * 检查登陆
	 * 
	 * @param args
	 * @return
	 */
	public UserInfoBean checkLogin(String[] args);

	/**
	 * 进行充值
	 * 
	 * @param args
	 * @return
	 */
	public int rechargeUser(String[] args);

	/**
	 * 修改密码
	 * 
	 * @param args
	 * @return
	 */
	public int updatePsw(String[] args);

	/**
	 * 检查管理员登录
	 * 
	 * @param args
	 * @return
	 */
	public AdminBean checkAdminLogin(String[] args);

	/**
	 * 得到所有用户
	 * 
	 * @param args
	 * @return
	 */
	public List<UserInfoBean> getAllUser(String[] args);

	/**
	 * 添加黑名单用户
	 * 
	 * @param args
	 * @return
	 */
	public int addArrearageUser(String[] args);

	/**
	 * 查找某一黑名用户信息
	 * 
	 * @param args
	 * @return
	 */
	public BlackListBean getArrearageUser(String[] args);

	/**
	 * 删除某一黑名单用户
	 * 
	 * @param args
	 * @return
	 */
	public int deleteArrearageUser(String[] args);
}