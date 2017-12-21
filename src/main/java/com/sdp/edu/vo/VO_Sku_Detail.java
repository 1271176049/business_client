package com.sdp.edu.vo;

import java.util.List;

import com.sdp.edu.bean.T_MALL_ATTR;
import com.sdp.edu.bean.T_MALL_PRODUCT;
import com.sdp.edu.bean.T_MALL_PRODUCT_IMAGE;
import com.sdp.edu.bean.T_MALL_SKU;
import com.sdp.edu.bean.T_MALL_SKU_AV_NAME;

public class VO_Sku_Detail extends T_MALL_SKU {
	private T_MALL_PRODUCT spu;
	private List<T_MALL_PRODUCT_IMAGE> list_image;
	private List<T_MALL_SKU_AV_NAME> list_attr_name;
	public T_MALL_PRODUCT getSpu() {
		return spu;
	}
	public void setSpu(T_MALL_PRODUCT spu) {
		this.spu = spu;
	}
	public List<T_MALL_PRODUCT_IMAGE> getList_image() {
		return list_image;
	}
	public void setList_image(List<T_MALL_PRODUCT_IMAGE> list_image) {
		this.list_image = list_image;
	}
	public List<T_MALL_SKU_AV_NAME> getList_attr_name() {
		return list_attr_name;
	}
	public void setList_attr_name(List<T_MALL_SKU_AV_NAME> list_attr_name) {
		this.list_attr_name = list_attr_name;
	}

}
