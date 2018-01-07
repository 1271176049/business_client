package com.sdp.edu.vo;

import java.util.List;

import com.sdp.edu.bean.T_MALL_ORDER;

public class VO_ORDER extends T_MALL_ORDER {
	private List<VO_FLOW> list_flow;

	public List<VO_FLOW> getList_flow() {
		return list_flow;
	}

	public void setList_flow(List<VO_FLOW> list_flow) {
		this.list_flow = list_flow;
	}

}
