package com.sdp.edu.service;

import com.sdp.edu.bean.T_MALL_ADDRESS;
import com.sdp.edu.exception.OverSaleException;
import com.sdp.edu.vo.VO_ORDER;

public interface OrderService {

	void save_Order(VO_ORDER order, T_MALL_ADDRESS address);

	void pay_order(VO_ORDER order) throws OverSaleException;

}
