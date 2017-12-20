package com.sdp.edu.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdp.edu.mapper.SearchMapper;
import com.sdp.edu.service.SearchService;
import com.sdp.edu.vo.VO_ATTR_VALUE;
import com.sdp.edu.vo.VO_SKU_SPU_PP;

@Service
public class SearchServiceImp implements SearchService {
	@Autowired
	private SearchMapper searchMapper;

	@Override
	public List<VO_SKU_SPU_PP> getSearchSku(int class_2_id) {
		List<VO_SKU_SPU_PP> list = searchMapper.select_vo_sku_spu_pp(class_2_id);
		return list;
	}

	@Override
	public List<VO_ATTR_VALUE> getAttrList(int class_2_id) {
		
		return searchMapper.select_vo_attr_values(class_2_id);
	}

}
