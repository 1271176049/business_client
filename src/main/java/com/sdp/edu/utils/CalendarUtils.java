package com.sdp.edu.utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class CalendarUtils {
	// 测试
/*	public static void main(String[] args) {
		Calendar c = Calendar.getInstance();
		c.add(Calendar.DATE, 3);
		Date time = c.getTime();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		System.out.println(simpleDateFormat.format(time));
	}*/

	public static Date getTime(int day) {
		Calendar c = Calendar.getInstance();
		c.add(Calendar.DATE, day);
		Date time = c.getTime();
		return time;
	}
}
