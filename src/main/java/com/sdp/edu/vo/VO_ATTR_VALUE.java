package com.sdp.edu.vo;

import java.util.List;

import com.sdp.edu.bean.T_MALL_ATTR;
import com.sdp.edu.bean.T_MALL_VALUE;

public class VO_ATTR_VALUE extends T_MALL_ATTR {
	private List<T_MALL_VALUE> values_list;

	public List<T_MALL_VALUE> getValues_list() {
		return values_list;
	}

	public void setValues_list(List<T_MALL_VALUE> values_list) {
		this.values_list = values_list;
	}

}
