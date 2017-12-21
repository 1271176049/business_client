package com.sdp.edu.mapper;

import java.util.HashMap;
import java.util.List;

import com.sdp.edu.bean.T_MALL_SKU;
import com.sdp.edu.bean.T_MALL_USER_ACCOUNT;
import com.sdp.edu.vo.VO_ATTR_VALUE;
import com.sdp.edu.vo.VO_SKU_SPU_PP;
import com.sdp.edu.vo.VO_Sku_Detail;

public interface SearchMapper {

	List<VO_SKU_SPU_PP> select_vo_sku_spu_pp(int class2id);

	List<VO_ATTR_VALUE> select_vo_attr_values(int class_2_id);

	List<VO_SKU_SPU_PP> select_vo_sku_spu_pp_by_attr(HashMap<String, Object> map);

	VO_Sku_Detail select_vo_sku_detail(int sku_id);

	List<T_MALL_SKU> select_sku_list_by_spuid(int spu_id);

}
