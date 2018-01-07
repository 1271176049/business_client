package com.sdp.edu.mapper;

import java.util.List;
import java.util.Set;

import org.apache.ibatis.annotations.Param;

import com.sdp.edu.bean.T_MALL_SHOPPINGCAR;

public interface ShoppingCartMapper {

	List<T_MALL_SHOPPINGCAR> select_ShoppingCart(int id);

	void update_ShoppingCart(@Param("shoppingcart") T_MALL_SHOPPINGCAR shoppingcart, @Param("shuliang") int i);

	void insert_ShoppingCartItem(T_MALL_SHOPPINGCAR shoppingcart);

	void insert_ShoppingCartItemlist(@Param("list") List<T_MALL_SHOPPINGCAR> jsonarray_json_list,
			@Param("userid") int id);

	void insert_ShoppingCartItem_merge(T_MALL_SHOPPINGCAR shoppingcart, int id);

	void update_ShoppingCart_shfxz(String shfxz, int id);

	void delete_by_id(int gwch_id);

	void delete_by_id_bach(@Param("set") Set<Integer> shoppingcart_id);

}
