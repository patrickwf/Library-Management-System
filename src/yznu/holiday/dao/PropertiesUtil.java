package yznu.holiday.dao;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * 属性文件读取，单例模式,对外只提供公共静态方法
 */
public final class PropertiesUtil {

	private static PropertiesUtil util = null;
	private Properties prop = new Properties(); // 属性文件读取类

	/**
	 * 私有化了构造方法，不允许外部访问
	 */
	private PropertiesUtil() {
		try {
			load();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void load() throws IOException {
		// 使用8位的字节流读取配置文件
		// InputStream is = new FileInputStream("dbconfig.properties");
		// 通过相对位置定位文件
		InputStream is = this.getClass().getResourceAsStream(
				"dbconfig.properties");
		prop.load(is);
	}

	/**
	 * 读取键对应的值
	 * 
	 * @param key
	 * @return
	 */
	public static String get(String key) {
		if (util == null)
			util = new PropertiesUtil();
		return util.prop.getProperty(key);
	}
}