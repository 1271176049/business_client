package com.sdp.edu.utils;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import com.sdp.edu.vo.VO_SKU_SPU_PP;

import redis.clients.jedis.Jedis;

public class CacheUtils {
	public static <T> List<T> getList(String key, Class<T> t) {
		List<T> list;
		try {
			list = new ArrayList<T>();
			Jedis jedis = JedisUtils.getJedis();
			Set<String> set = jedis.zrange(key, 0, -1);
			Iterator<String> iterator = set.iterator();
			while (iterator.hasNext()) {
				String string = iterator.next();
				T obj = GsonUtils.gson_json_obj(string, t);
				list.add(obj);
			}
		} catch (Exception e) {
			return null;
		}
		return list;
	}

	public static <T> void setList(String key, List<T> list) {
		Jedis jedis = JedisUtils.getJedis();
		for (int i = 0; i < list.size(); i++) {
			jedis.zadd(key, i, GsonUtils.gson_obj_json(list.get(i)));
		}
	}
}
