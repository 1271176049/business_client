package com.sdp.edu.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sdp.edu.bean.T_MALL_SHOPPINGCAR;
import com.sdp.edu.bean.T_MALL_USER_ACCOUNT;
import com.sdp.edu.utils.JsonlibUtils;
@Controller
public class CartController {
	@SuppressWarnings("unchecked")
	@RequestMapping("goto_cartlist")
	public String goto_cartlist(@CookieValue(value = "list_shoppingcart", required = false) String list_shoppingcart,
			HttpSession session, ModelMap model) {
		// 创建cartlist集合
		List<T_MALL_SHOPPINGCAR> list = new ArrayList<>();
		// 判断用户是否登陆
		T_MALL_USER_ACCOUNT user = (T_MALL_USER_ACCOUNT) session.getAttribute("user");
		//
		if (user != null) {
			// 从db中获取，或者从session中获取cartlist
			list = (List<T_MALL_SHOPPINGCAR>) session.getAttribute("list_shoppingcart");
		} else {
			list = JsonlibUtils.jsonarray_json_list(list_shoppingcart, T_MALL_SHOPPINGCAR.class);
		}
		model.put("cartlist", list);
		return "cart_list";
	}
}
