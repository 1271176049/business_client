package com.sdp.edu.server;

import java.util.List;

import javax.jws.WebService;

import com.sdp.edu.bean.T_MALL_ADDRESS;

@WebService
public interface UserAddressServer {
	// 新增地址信息
	public abstract void addAddress(T_MALL_ADDRESS address);

	// 查询地址信息
	public abstract List<T_MALL_ADDRESS> getAddress_by_userid(int id);

	// 选中地址信息:修改地址信息
	public abstract void updateUserAddress(int userid, int addressid);

	// 查询地址详情
	public abstract T_MALL_ADDRESS getAddress_by_userid_addressid(int userid, int addressid);

}
