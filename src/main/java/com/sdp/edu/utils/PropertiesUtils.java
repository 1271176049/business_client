package com.sdp.edu.utils;

import java.io.IOException;
import java.util.Properties;

public class PropertiesUtils {
	public static String getValue(String fileName, String key) {
		Properties properties = new Properties();
		String string = null;
		try {
			properties.load(PropertiesUtils.class.getClassLoader().getResourceAsStream(fileName));
			string = properties.getProperty(key);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return string;

	}
}
