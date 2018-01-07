package com.sdp.edu.mapper;

import org.apache.ibatis.annotations.Param;

import com.sdp.edu.bean.T_MALL_ADDRESS;
import com.sdp.edu.bean.T_MALL_ORDER_INFO;
import com.sdp.edu.vo.VO_FLOW;
import com.sdp.edu.vo.VO_ORDER;

public interface OrderMapper {

	void insert_Order(@Param("order") VO_ORDER order, @Param("address") T_MALL_ADDRESS address);

	void insert_flow(@Param("flow") VO_FLOW flow, @Param("orderid") Integer id,
			@Param("address") T_MALL_ADDRESS address);

	void insert_order_info(@Param("orderid") Integer id, @Param("orderinfo") T_MALL_ORDER_INFO order_info,
			@Param("flowid") int flowid);

	void update_time(@Param("order") VO_ORDER order);

	void update_flow(@Param("flow") VO_FLOW flow);

	int select_skushl_by_skuid_for_update(int sku_id);

	void update_sku(int i, int j, int sku_id);

	int select_skuxl_by_skuid(int sku_id);

}
