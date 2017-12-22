package com.sdp.edu.utils;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

public class GsonUtils {
	private static Gson gson = new Gson();

	/**
	 * 
	 * @param t
	 * @return
	 */
	public static <T> String gson_obj_json(T t) {
		String json = gson.toJson(t);
		try {
			json = URLEncoder.encode(json, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return json;
	}

	/**
	 * 
	 * @param json
	 * @param t
	 * @return
	 */
	public static <T> T gson_json_obj(String json, Class<T> t) {
		T obj = null;
		try {
			json = URLDecoder.decode(json, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		obj = gson.fromJson(json, t);
		return obj;
	}

	// 将集合转成json
	public static <T> String gson_list_json(List<T> t) {
		String json = gson.toJson(t);
		try {
			json=URLEncoder.encode(json, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return json;
	}

	// 错误案例
	// 将json转换为集合,这样不行，T泛型会被擦除，gson的json字符串转集合类型不能用泛型只能是用具体的类型
	// public static <T> List<T> gson_json_list(String json, Class<T> t) {
	//
	// TypeToken<List<T>> type = new TypeToken<List<T>>() {
	// };
	//
	// List<T> list = gson.fromJson(json, type.getType());
	//
	// return list;
	// }
}
