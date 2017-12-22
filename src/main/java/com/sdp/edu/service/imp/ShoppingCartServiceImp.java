package com.sdp.edu.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdp.edu.bean.T_MALL_SHOPPINGCAR;
import com.sdp.edu.mapper.ShoppingCartMapper;
import com.sdp.edu.service.ShoppingCartService;

@Service
public class ShoppingCartServiceImp implements ShoppingCartService {
	@Autowired
	private ShoppingCartMapper shoppingCartMapper;

	@Override
	public List<T_MALL_SHOPPINGCAR> getShoppingCartService(int id) {
		return shoppingCartMapper.select_ShoppingCart(id);
	}

	@Override
	public void update_ShoppingCart(T_MALL_SHOPPINGCAR shoppingcart, int i) {
		shoppingCartMapper.update_ShoppingCart(shoppingcart, i);
	}

	@Override
	public void addShoppingCart(T_MALL_SHOPPINGCAR shoppingcart) {
		shoppingCartMapper.insert_ShoppingCartItem(shoppingcart);
	}

}
