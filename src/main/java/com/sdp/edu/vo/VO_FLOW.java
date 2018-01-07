package com.sdp.edu.vo;

import java.util.List;

import com.sdp.edu.bean.T_MALL_FLOW;
import com.sdp.edu.bean.T_MALL_ORDER_INFO;

public class VO_FLOW extends T_MALL_FLOW {
	private List<T_MALL_ORDER_INFO> list_order_info;

	public List<T_MALL_ORDER_INFO> getList_order_info() {
		return list_order_info;
	}

	public void setList_order_info(List<T_MALL_ORDER_INFO> list_order_info) {
		this.list_order_info = list_order_info;
	}

}
