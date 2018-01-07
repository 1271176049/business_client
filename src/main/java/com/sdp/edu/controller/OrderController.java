package com.sdp.edu.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sdp.edu.bean.T_MALL_ADDRESS;
import com.sdp.edu.bean.T_MALL_ORDER_INFO;
import com.sdp.edu.bean.T_MALL_SHOPPINGCAR;
import com.sdp.edu.bean.T_MALL_USER_ACCOUNT;
import com.sdp.edu.exception.OverSaleException;
import com.sdp.edu.server.UserAddressServer;
import com.sdp.edu.service.AddressService;
import com.sdp.edu.service.OrderService;
import com.sdp.edu.service.ShoppingCartService;
import com.sdp.edu.utils.JaxWsProxyFactoryBeanUtils;
import com.sdp.edu.utils.PropertiesUtils;
import com.sdp.edu.vo.VO_FLOW;
import com.sdp.edu.vo.VO_ORDER;

@Controller
@SessionAttributes("order")
public class OrderController {
	@Autowired
	private OrderService orderService;
	@Autowired
	private ShoppingCartService shoppingCartService;

	@RequestMapping("order_pay")
	public String order_pay(@ModelAttribute("order") VO_ORDER order) {
		try {
			orderService.pay_order(order);
		} catch (OverSaleException e) {
			//捕获业务性异常后，跳转到购买失败的界面
			return "pay_fail/oversale";
		}
		//购买成功
		return "pay_success";
	}

	/**
	 * 确认提交订单，在这个界面提交的时候选择地址,我们要调到支付界面
	 * 
	 * @return
	 */
	@RequestMapping("save_order")
	public String save_order(int address_id, @ModelAttribute("order") VO_ORDER order, HttpSession session) {
		T_MALL_USER_ACCOUNT user = (T_MALL_USER_ACCOUNT) session.getAttribute("user");
		// 第一步持久化订单
		UserAddressServer userAddressServer = JaxWsProxyFactoryBeanUtils
				.getWs(PropertiesUtils.getValue("ws.properties", "soap.useraddress"), UserAddressServer.class);
		T_MALL_ADDRESS address = userAddressServer.getAddress_by_userid_addressid(user.getId(), address_id);
		//
		orderService.save_Order(order, address);
		// 第二步更新session中的购物车
		List<T_MALL_SHOPPINGCAR> list = shoppingCartService.getShoppingCartService(user.getId());
		session.setAttribute("list_shoppingcart", list);

		return "redirect:/goto_cashier.do";
	}

	@RequestMapping("goto_cashier")
	public String goto_cashier(@ModelAttribute("order") VO_ORDER order, BigDecimal sum) {

		return "sale_cashier";

	}

	@RequestMapping("goto_check_order")
	public String goto_check_order(HttpSession session, ModelMap model) {
		T_MALL_USER_ACCOUNT user = (T_MALL_USER_ACCOUNT) session.getAttribute("user");
		if (user == null) {

		} else {
			// 从session中获取cartlist
			List<T_MALL_SHOPPINGCAR> list = (List<T_MALL_SHOPPINGCAR>) session.getAttribute("list_shoppingcart");
			// 创建order对象
			VO_ORDER order = new VO_ORDER();
			order.setJdh(0);
			order.setYh_id(user.getId());
			// order.setZje(zje);
			// 计算购物车中所有选中的商品的总金额
			BigDecimal zje = new BigDecimal("0");
			for (T_MALL_SHOPPINGCAR shoppingcart : list) {
				if (shoppingcart.getShfxz().equals("1")) {
					// 选中了
					double num = shoppingcart.getSku_jg() * shoppingcart.getTjshl();
					zje = zje.add(new BigDecimal(num + ""));
				}
			}
			order.setZje(zje);
			// 创建HashSet存放地址,用于分物流包裹
			Set<String> set = new HashSet<String>();
			for (T_MALL_SHOPPINGCAR shoppingcart : list) {
				if (shoppingcart.getShfxz().equals("1")) {
					set.add(shoppingcart.getKcdz());
				}
			}
			// 創建VO_FLOW集合對象，用于存放物流包裹
			List<VO_FLOW> list_flow = new ArrayList<VO_FLOW>();
			Iterator<String> iterator = set.iterator();
			while (iterator.hasNext()) {
				String next = iterator.next();
				VO_FLOW vo_flow = new VO_FLOW();
				// vo_flow.setDd_id(dd_id);
				vo_flow.setYh_id(user.getId());
				// 判断一下
				vo_flow.setPsfsh("顺丰快递");
				vo_flow.setMqdd(next);
				// 创建包裹
				List<T_MALL_ORDER_INFO> order_info_list = new ArrayList<T_MALL_ORDER_INFO>();
				// 遍历cartlist,
				for (T_MALL_SHOPPINGCAR shoppingcart : list) {
					// 创建Order_info集合

					if (shoppingcart.getShfxz().equals("1") && shoppingcart.getKcdz().equals(next)) {
						T_MALL_ORDER_INFO order_info = new T_MALL_ORDER_INFO();
						order_info.setGwch_id(shoppingcart.getId());
						order_info.setShp_tp(shoppingcart.getShp_tp());
						order_info.setSku_id(shoppingcart.getSku_id());
						order_info.setSku_jg(shoppingcart.getSku_jg());
						order_info.setSku_kcdz(next);
						order_info.setSku_mch(shoppingcart.getSku_mch());
						order_info.setSku_shl(shoppingcart.getTjshl());
						// vo_flow.setList_order_info(list_order_info);
						order_info_list.add(order_info);
					}

				}
				vo_flow.setList_order_info(order_info_list);
				list_flow.add(vo_flow);
			}
			order.setList_flow(list_flow);
			model.put("order", order);
			UserAddressServer userAddressServer = JaxWsProxyFactoryBeanUtils
					.getWs(PropertiesUtils.getValue("ws.properties", "soap.useraddress"), UserAddressServer.class);
			List<T_MALL_ADDRESS> address_by_userid = userAddressServer.getAddress_by_userid(user.getId());
			model.put("list_address", address_by_userid);
		}

		// model.put("list_address",)
		return "sale_check_order";
	}
}
