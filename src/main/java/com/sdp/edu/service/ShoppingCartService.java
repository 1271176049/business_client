package com.sdp.edu.service;

import java.util.List;

import com.sdp.edu.bean.T_MALL_SHOPPINGCAR;

public interface ShoppingCartService {

	List<T_MALL_SHOPPINGCAR> getShoppingCartService(int id);

	void update_ShoppingCart(T_MALL_SHOPPINGCAR shoppingcart, int i);

	void addShoppingCart(T_MALL_SHOPPINGCAR shoppingcart);

}
