package com.sdp.edu.vo;

import com.sdp.edu.bean.T_MALL_PRODUCT;
import com.sdp.edu.bean.T_MALL_SKU;
import com.sdp.edu.bean.T_MALL_TRADE_MARK;

public class VO_SKU_SPU_PP extends T_MALL_SKU {
	private T_MALL_PRODUCT spu;
	private T_MALL_TRADE_MARK pp;

	public T_MALL_PRODUCT getSpu() {
		return spu;
	}

	public void setSpu(T_MALL_PRODUCT spu) {
		this.spu = spu;
	}

	public T_MALL_TRADE_MARK getPp() {
		return pp;
	}

	public void setPp(T_MALL_TRADE_MARK pp) {
		this.pp = pp;
	}

}
