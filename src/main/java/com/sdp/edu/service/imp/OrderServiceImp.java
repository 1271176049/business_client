package com.sdp.edu.service.imp;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdp.edu.bean.T_MALL_ADDRESS;
import com.sdp.edu.bean.T_MALL_ORDER_INFO;
import com.sdp.edu.exception.OverSaleException;
import com.sdp.edu.mapper.OrderMapper;
import com.sdp.edu.mapper.ShoppingCartMapper;
import com.sdp.edu.service.OrderService;
import com.sdp.edu.utils.CalendarUtils;
import com.sdp.edu.vo.VO_FLOW;
import com.sdp.edu.vo.VO_ORDER;

@Service
public class OrderServiceImp implements OrderService {
	@Autowired
	private OrderMapper orderMapper;
	@Autowired
	private ShoppingCartMapper shoppingCartMapper;

	@Override
	public void save_Order(VO_ORDER order, T_MALL_ADDRESS address) {
		// 保存订单
		System.out.println("");
		orderMapper.insert_Order(order, address);
		// 保存物流信息
		List<VO_FLOW> list_flow = order.getList_flow();
		// 存放购物车id,使用set
		Set<Integer> shoppingcart_id = new HashSet<Integer>();
		for (VO_FLOW flow : list_flow) {
			orderMapper.insert_flow(flow, order.getId(), address);

			// 保存订单详情信息
			List<T_MALL_ORDER_INFO> list_order_info = flow.getList_order_info();
			for (T_MALL_ORDER_INFO order_info : list_order_info) {
				orderMapper.insert_order_info(order.getId(), order_info, flow.getId());
				shoppingCartMapper.delete_by_id(order_info.getGwch_id());
				// 存放购物车的id
				shoppingcart_id.add(order_info.getGwch_id());
			}
		}
		// 更新购物车
		shoppingCartMapper.delete_by_id_bach(shoppingcart_id);
	}

	/**
	 * 用户支付成功后，进行该操作，修改订单的状态、物流的状态、减少库存。
	 * <p>
	 * 并加事务和行级写锁（其它的事务如果想要查询和修改就要等待） 避免超卖的现象
	 * @throws OverSaleException 
	 */
	@Override
	public void pay_order(VO_ORDER order) throws OverSaleException {
		// 设置订单表中的预计到达时间
		order.setYjsdshj(CalendarUtils.getTime(3));
		//修改数据库中的订单
		orderMapper.update_time(order);
		//生成一部分物流信息
		List<VO_FLOW> list_flow = order.getList_flow();
		for (VO_FLOW flow : list_flow) {
			flow.setPsshj(CalendarUtils.getTime(1));
			flow.setPsmsh("商品出库，等待业务员");
			flow.setYwy("老大");
			flow.setLxfsh("110");
			orderMapper.update_flow(flow);
			//修改库存信息，判断购买数量是否>=库存数量
			List<T_MALL_ORDER_INFO> list_order_info = flow.getList_order_info();
			for (T_MALL_ORDER_INFO order_info : list_order_info) {
				//获取skuid
				int sku_id = order_info.getSku_id();
				//查询库存数量,加上写锁,避免发生超卖现象
				int count=orderMapper.select_skushl_by_skuid_for_update(sku_id);
				int xl=orderMapper.select_skuxl_by_skuid(sku_id);
				//获取要购买的数量
				int shl = order_info.getSku_shl();
				//如果购买数量<=购物车数量，就ok
				if(shl<=count) {
					//减少库存,增加销量
					orderMapper.update_sku(count-shl,xl+shl,sku_id);
				}else {
					throw new OverSaleException("库存不够了");
				}
			}
		}
	}

}
