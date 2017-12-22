package client;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.junit.jupiter.api.Test;

import com.sdp.edu.bean.T_MALL_USER_ACCOUNT;
import com.sdp.edu.utils.GsonUtils;

class GsonUtilsTest {

	@Test
	void test() {
		T_MALL_USER_ACCOUNT user = new T_MALL_USER_ACCOUNT();
		user.setId(1);
		user.setYh_mch("long");
		String gson_obj_json = GsonUtils.gson_obj_json(user);
		System.out.println(gson_obj_json);
		T_MALL_USER_ACCOUNT obj = GsonUtils.gson_json_obj(gson_obj_json, T_MALL_USER_ACCOUNT.class);
		System.out.println(obj);
	}

	@Test
	void test2() {
		List<T_MALL_USER_ACCOUNT> list = new ArrayList<>();
		T_MALL_USER_ACCOUNT user1 = new T_MALL_USER_ACCOUNT();
		user1.setId(1);
		user1.setYh_mch("long");
		T_MALL_USER_ACCOUNT user2 = new T_MALL_USER_ACCOUNT();
		user2.setId(2);
		user2.setYh_mch("sadf");
		list.add(user1);
		list.add(user2);
		String json = GsonUtils.gson_list_json(list);
		System.out.println(json);
		/*
		 * List<T_MALL_USER_ACCOUNT> list2 =(List<T_MALL_USER_ACCOUNT>)
		 * GsonUtils.gson_json_list(json, T_MALL_USER_ACCOUNT.class);
		 * Iterator<T_MALL_USER_ACCOUNT> iterator = list2.iterator(); while
		 * (iterator.hasNext()) { T_MALL_USER_ACCOUNT user_ACCOUNT = iterator.next();
		 * System.out.println(user_ACCOUNT); }
		 */
	}

}
