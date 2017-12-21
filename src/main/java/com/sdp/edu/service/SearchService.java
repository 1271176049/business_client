package com.sdp.edu.service;

import java.util.List;

import com.sdp.edu.bean.T_MALL_SKU;
import com.sdp.edu.bean.T_MALL_SKU_ATTR_VALUE;
import com.sdp.edu.vo.VO_ATTR_VALUE;
import com.sdp.edu.vo.VO_SKU_SPU_PP;
import com.sdp.edu.vo.VO_Sku_Detail;

public interface SearchService {

	List<VO_SKU_SPU_PP> getSearchSku(int class_2_id);

	List<VO_ATTR_VALUE> getAttrList(int class_2_id);

	List<VO_SKU_SPU_PP> getSearchAttrSku(int class_2_id, List<T_MALL_SKU_ATTR_VALUE> list_av);

	VO_Sku_Detail sku_detail(int sku_id);

	List<T_MALL_SKU> get_sku_list_by_spuid(int spu_id);

}
