package com.sdp.edu.utils;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Collection;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class JsonlibUtils {
	// 将obj转为json

	public static <T> String jsonobject_obj_json(T t) {
		JSONObject jsonObject = JSONObject.fromObject(t);
		try {
			return URLEncoder.encode(jsonObject.toString(), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return null;
	}

	// 将json转为obj
	@SuppressWarnings("unchecked")
	public static <T> T jsonobject_json_obj(String json, Class<T> t) {
		T obj = null;
		try {
			json = URLDecoder.decode(json, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		JSONObject jsonObject = JSONObject.fromObject(json);
		obj = (T) JSONObject.toBean(jsonObject, t);
		return obj;
	}

	// 将list转换为json
	public static <T> String jsonarray_list_json(List<T> t) {
		JSONArray jsonArray = JSONArray.fromObject(t);
		String json = null;
		try {
			json = URLEncoder.encode(jsonArray.toString(), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return json;
	}

	// 将json转换为list
	public static <T> List<T> jsonarray_json_list(String json, Class<T> t) {
		try {
			json = URLDecoder.decode(json, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		JSONArray jsonArray = JSONArray.fromObject(json);
		@SuppressWarnings("unchecked")
		List<T> list = (List<T>) JSONArray.toCollection(jsonArray, t);
		return list;
	}

}
