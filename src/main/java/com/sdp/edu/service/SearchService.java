package com.sdp.edu.service;

import java.util.List;

import com.sdp.edu.vo.VO_ATTR_VALUE;
import com.sdp.edu.vo.VO_SKU_SPU_PP;

public interface SearchService {

	List<VO_SKU_SPU_PP> getSearchSku(int class_2_id);

	List<VO_ATTR_VALUE> getAttrList(int class_2_id);

}
