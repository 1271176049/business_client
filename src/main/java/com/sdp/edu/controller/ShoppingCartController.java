package com.sdp.edu.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sdp.edu.bean.T_MALL_SHOPPINGCAR;
import com.sdp.edu.bean.T_MALL_USER_ACCOUNT;
import com.sdp.edu.service.ShoppingCartService;
import com.sdp.edu.utils.GsonUtils;
import com.sdp.edu.utils.JsonlibUtils;

@Controller
public class ShoppingCartController {
	@Autowired
	private ShoppingCartService shoppingCartService;

	@RequestMapping("getMiniCart")
	public String getMiniCart(@CookieValue(value = "list_shoppingcart", required = false) String list_shoppingcart,
			HttpSession session, ModelMap model) {
		T_MALL_USER_ACCOUNT user = (T_MALL_USER_ACCOUNT) session.getAttribute("user");
		List<T_MALL_SHOPPINGCAR> list;
		if (user == null) {
			if (list_shoppingcart == null || list_shoppingcart.equals("")) {
				return "miniCart_list";
			} else {
				list = JsonlibUtils.jsonarray_json_list(list_shoppingcart, T_MALL_SHOPPINGCAR.class);
			}
		} else {
			list = shoppingCartService.getShoppingCartService(user.getId());
		}
		model.put("list_cart", list);
		return "miniCart_list";
	}

	// 添加购物车
	@RequestMapping("add_cart")
	public String add_cart(T_MALL_SHOPPINGCAR shoppingcart,
			@CookieValue(value = "list_shoppingcart", required = false) String list_shoppingcart,
			HttpServletRequest request, HttpServletResponse response) {
		System.out.println("并发来啦!");
		List<T_MALL_SHOPPINGCAR> list = new ArrayList<>();
		// Cookie[] cookie = request.getCookies();

		// 根据reuqest获取sesssion对象，也可以直接在入参里面加上HttpSession
		HttpSession session = request.getSession();
		// 获取用户
		T_MALL_USER_ACCOUNT user = (T_MALL_USER_ACCOUNT) session.getAttribute("user");

		// 判断用户是否为空，以及判断传入的ShoppingCart的pojo的入参实例中，他的用户yh_id是否为空
		if (user == null || shoppingcart.getYh_id() == 0) {
			// 未登录,操作cookie
			// 根据list_shoppingcart,获取购物车,由于我们传入的是一个list的json字符串，所以我们需要将它转换为list集合
			if (StringUtils.isEmpty(list_shoppingcart)) {
				// 如果list_shoppingcart为空,就不用获取购物车了，直接往购物车里添加购物项就行了

				list.add(shoppingcart);

			} else {
				// 如果list_shoppingcart不为空,就从中获取list购物车
				list = JsonlibUtils.jsonarray_json_list(list_shoppingcart, T_MALL_SHOPPINGCAR.class);
				// 判断cookie中的list是否有该购物项
				boolean flag = false;
				flag = PanDuanCartContainItem(shoppingcart, list, flag);
				if (!flag) {// 如果没有，就直接往list中添加
					list.add(shoppingcart);
				}
			}
			String json = GsonUtils.gson_list_json(list);
			Cookie cookie = new Cookie("list_shoppingcart", json);
			response.addCookie(cookie);

		} else {
			// 已登陆,操作db
			// 判断db中是否已经有该用户的这个购物项or从session中获取list,然后再判断
			list = shoppingCartService.getShoppingCartService(user.getId());
			// 判断该db中的购物项是否为空
			if (list == null) {// 为空
				// 直接往数据库中插入即可
				shoppingCartService.addShoppingCart(shoppingcart);
				// 更新session
				list.add(shoppingcart);
				session.setAttribute("list_shoppingcart", list);
			} else {// 不为空
					// 判断是否包含
				boolean flag = false;
				flag = PanDuanCartContainItem(shoppingcart, list, flag);
				if (flag) {
					// 如果包含该购物项，那么就修改数据库
					updateDBShoppingCartItem(shoppingcart, list);
					// 更新session
					updateSessionSoppingCartItem(shoppingcart, list, session);
				} else {
					// 如果不包含该购物项，就往数据库插入
					shoppingCartService.addShoppingCart(shoppingcart);
					// 更新session
					updateSessionSoppingCartItem(shoppingcart, list, session);
				}
			}

		}

		return "redirect:/cart_success.do";
	}

	@RequestMapping("cart_success")
	public String cart_success() {
		return "cart_success";
	}

	@SuppressWarnings("unchecked")
	private void updateSessionSoppingCartItem(T_MALL_SHOPPINGCAR shoppingcart, List<T_MALL_SHOPPINGCAR> list2,
			HttpSession session) {
		List<T_MALL_SHOPPINGCAR> list;
		list = (List<T_MALL_SHOPPINGCAR>) session.getAttribute("list_shoppingcart");
		if (list == null) {
			list2.add(shoppingcart);
			session.setAttribute("list_shoppingcart", list2);
		} else {
			boolean flag = true;
			for (T_MALL_SHOPPINGCAR t_MALL_SHOPPINGCAR : list) {
				if (t_MALL_SHOPPINGCAR.getSku_id() == shoppingcart.getSku_id()) {
					t_MALL_SHOPPINGCAR.setTjshl(t_MALL_SHOPPINGCAR.getTjshl() + shoppingcart.getTjshl());
					flag = false;
				}
			}
			if (flag) {
				list2.add(shoppingcart);
				session.setAttribute("list_shoppingcart", list2);
			}

		}

	}

	private void updateDBShoppingCartItem(T_MALL_SHOPPINGCAR shoppingcart, List<T_MALL_SHOPPINGCAR> list) {
		for (T_MALL_SHOPPINGCAR t_MALL_SHOPPINGCAR : list) {
			if (t_MALL_SHOPPINGCAR.getSku_id() == shoppingcart.getSku_id()) {
				shoppingCartService.update_ShoppingCart(shoppingcart, t_MALL_SHOPPINGCAR.getTjshl());
			}
		}
	}

	/**
	 * 修改数量
	 * 
	 * @param shoppingcart
	 * @param list
	 * @param flag
	 * @return
	 */
	private boolean PanDuanCartContainItem(T_MALL_SHOPPINGCAR shoppingcart, List<T_MALL_SHOPPINGCAR> list,
			boolean flag) {
		for (T_MALL_SHOPPINGCAR t_shoppingcart : list) {
			if (t_shoppingcart.getSku_id() == shoppingcart.getSku_id()) {
				// 如果有，就改变数量
				t_shoppingcart.setTjshl(t_shoppingcart.getTjshl() + shoppingcart.getTjshl());
				flag = true;
			}
		}
		return flag;
	}

}
