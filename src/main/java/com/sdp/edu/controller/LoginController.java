package com.sdp.edu.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.cxf.jaxws.JaxWsProxyFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.sdp.edu.bean.T_MALL_SHOPPINGCAR;
import com.sdp.edu.bean.T_MALL_USER_ACCOUNT;
import com.sdp.edu.server.UserLoginServer;
import com.sdp.edu.service.ShoppingCartService;
import com.sdp.edu.service.UserService;
import com.sdp.edu.utils.JsonlibUtils;
import com.sdp.edu.utils.PropertiesUtils;
import com.sdp.edu.utils.JaxWsProxyFactoryBeanUtils;

import jdk.nashorn.internal.runtime.URIUtils;

@SessionAttributes(types = { T_MALL_USER_ACCOUNT.class }, value = { "user" })
@Controller
public class LoginController {
	/*
	 * @Autowired private UserService userService;
	 */
	@Autowired
	private UserLoginServer userLoginService;
	@Autowired
	private ShoppingCartService shoppingCartService;

	@RequestMapping("goto_login")
	public String goto_login() {
		return "sale_login";
	}

	/**
	 * 用户登陆：验证密码是否正确，登陆成功后将信息保存在cookie里面
	 * 
	 * @param user
	 * @return
	 * @throws UnsupportedEncodingException
	 */

	@RequestMapping("login")
	public String login(String dataSource_type, T_MALL_USER_ACCOUNT user,
			@CookieValue(value = "list_shoppingcart", required = false) String list_shoppingcart,
			HttpServletRequest request, HttpServletResponse response, Map<String, Object> map)
			throws UnsupportedEncodingException {
		HttpSession session = request.getSession();
		// 方式一
		/*
		 * UserLoginServer userLoginServer=null; JaxWsProxyFactoryBean jax = new
		 * JaxWsProxyFactoryBean();
		 * jax.setAddress("http://localhost:8888/business_userlogin/login_ws?wsdl");
		 * jax.setServiceClass(UserLoginServer.class); userLoginServer =
		 * (UserLoginServer) jax.create();
		 */
		// 方式二
		/*
		 * UserLoginServer userService =
		 * JaxWsProxyFactoryBeanUtils.getWs(PropertiesUtils.getValue("ws.properties",
		 * "soap.userlogin"), UserLoginServer.class);
		 */
		// 方式三,我们需要UserLoginService的实例，但是我们不能将MyWsFactoryBean配置到xml中，因为实例是我们通过代码生成的
		// 我们需要的是MyWsFactoryBean中一个方法的返回值，这个返回值才是我们需要的实例。
		// 类似于SqlSessionFactoryBean,我们让MyWsFactoryBean实现FactoryBean接口，然后实现getObject方法返回实例对象
		T_MALL_USER_ACCOUNT sql_user = null;
		if (dataSource_type.equals("d1")) {

			sql_user = userLoginService.login_user_datasource1(user);
		} else if (dataSource_type.equals("d2")) {
			sql_user = userLoginService.login_user_datasource2(user);
			//sql_user.setYh_nch(URLDecoder.decode(sql_user.getYh_nch(), "UTF-8"));
		}

		if (sql_user == null) {
			// 登陆失败,返回错误信息，使用转发
			map.put("msg", "登陆失败，用户名或密码不正确!");
			return "sale_login";
		}
		// 登陆成功,将用户的信息保存在cookie中发送给浏览器，然后下次用户登陆的时候就会携带这个cookie
		map.put("user", sql_user);
		Cookie cookie = new Cookie("userName", URLEncoder.encode(sql_user.getYh_nch(), "UTF-8"));
		cookie.setMaxAge(60 * 60 * 24);
		// cookie.setPath(/*uri*/);
		response.addCookie(cookie);
		// cookie里面再保存一些其它信息
		Cookie cookie2 = new Cookie("age", URLEncoder.encode("芳龄六十八", "UTF-8"));
		cookie2.setMaxAge(60 * 60 * 24);
		response.addCookie(cookie2);

		// **********************merge购物车

		if (list_shoppingcart == null) {// 如果cookie为空
			session.setAttribute("list_shoppingcart", shoppingCartService.getShoppingCartService(sql_user.getId()));
			return "redirect:/index.do";
		} else {
			// 如果cookie不为空
			List<T_MALL_SHOPPINGCAR> shoppingCartlist = shoppingCartService.getShoppingCartService(sql_user.getId());
			//
			List<T_MALL_SHOPPINGCAR> jsonarray_json_list = JsonlibUtils.jsonarray_json_list(list_shoppingcart,
					T_MALL_SHOPPINGCAR.class);
			if (shoppingCartlist == null) {// 如果数据库中没有购物项
				shoppingCartService.addShoppingCart(jsonarray_json_list, sql_user.getId());
				// 更新session
			} else {// 数据库中有购物项，就判断是否有重复

				for (int i = 0; i < jsonarray_json_list.size(); i++) {
					T_MALL_SHOPPINGCAR shoppingcart = jsonarray_json_list.get(i);
					boolean flag = true;
					for (int j = 0; j < shoppingCartlist.size(); j++) {
						T_MALL_SHOPPINGCAR dbshoppingcart = shoppingCartlist.get(j);
						if (dbshoppingcart.getSku_id() == shoppingcart.getSku_id()) {
							// 如果有相同的，就修改数据库中的数量
							shoppingCartService.update_ShoppingCart(dbshoppingcart,
									dbshoppingcart.getTjshl() + shoppingcart.getTjshl());
							// 更新session
							flag = false;
						}
					}
					// 如果数据库中没有改购物项,插入数据
					if (flag) {
						shoppingCartService.addShoppingCart(shoppingcart, sql_user.getId());
						// 更新session
					}
				}

			}
		}
		// 清空cookie中的购物车数据，同步session
		response.addCookie(new Cookie("list_shoppingcart", ""));
		session.setAttribute("list_shoppingcart", shoppingCartService.getShoppingCartService(sql_user.getId()));

		return "redirect:/index.do";
	}

	@RequestMapping("login_out")
	public String login_out(HttpSession session, SessionStatus status) {
		session.invalidate();
		status.setComplete();
		return "redirect:/index.do";
	}
}
