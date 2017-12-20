package com.sdp.edu.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.sdp.edu.bean.T_MALL_USER_ACCOUNT;
import com.sdp.edu.service.UserService;

import jdk.nashorn.internal.runtime.URIUtils;

@SessionAttributes(types = {T_MALL_USER_ACCOUNT.class}, value = {"user"})
@Controller
public class LoginController {
	@Autowired
	private UserService userService;

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
	public String login(T_MALL_USER_ACCOUNT user, HttpServletResponse response, Map<String, Object> map)
			throws UnsupportedEncodingException {
		T_MALL_USER_ACCOUNT sql_user = userService.getUser(user);
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
		return "redirect:/index.do";
	}

	@RequestMapping("login_out")
	public String login_out(HttpSession session,SessionStatus status) {
		session.invalidate();
		status.setComplete();
		return "redirect:/index.do";
	}
}
