package com.buaa.shopping.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Tools {
	public static String dateToString(Date date){
		String time;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssZ");
		time = sdf.format(date);
		return time;
	}
}
