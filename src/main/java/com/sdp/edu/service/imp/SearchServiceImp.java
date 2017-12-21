package com.sdp.edu.service.imp;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdp.edu.bean.T_MALL_SKU;
import com.sdp.edu.bean.T_MALL_SKU_ATTR_VALUE;
import com.sdp.edu.mapper.SearchMapper;
import com.sdp.edu.service.SearchService;
import com.sdp.edu.vo.VO_ATTR_VALUE;
import com.sdp.edu.vo.VO_SKU_SPU_PP;
import com.sdp.edu.vo.VO_Sku_Detail;

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

	@Override
	public List<VO_SKU_SPU_PP> getSearchAttrSku(int class_2_id, List<T_MALL_SKU_ATTR_VALUE> list_av) {
		// 最刺激的时刻来了
		HashMap<String, Object> map = new HashMap<>();
		map.put("class2id", class_2_id);
		StringBuffer sql = new StringBuffer();
		if (list_av.size() == 1) {
			sql.append("(select sku_id from t_mall_sku_attr_value where shxm_id=" + list_av.get(0).getShxm_id()
					+ " and shxzh_id=" + list_av.get(0).getShxzh_id() + ")");
			map.put("sql", sql);
		} else {
			sql.append(" (select sku1.sku_id from ");
			for (int i = 0; i < list_av.size(); i++) {
				sql.append("(select sku_id from t_mall_sku_attr_value where shxm_id=" + list_av.get(i).getShxm_id()
						+ " and shxzh_id=" + list_av.get(i).getShxzh_id() + ") sku" + i);
				if (i != list_av.size() - 1) {
					sql.append(",");
				}
			}
			sql.append(" where ");
			for (int i = 0; i < list_av.size() - 1; i++) {
				sql.append(" sku" + i + ".sku_id=sku" + (i + 1) + ".sku_id and ");
			}
			sql.append("1=1 )");
			map.put("sql", sql);
		}
		List<VO_SKU_SPU_PP> vo = searchMapper.select_vo_sku_spu_pp_by_attr(map);
		return vo;
	}

	@Override
	public VO_Sku_Detail sku_detail(int sku_id) {
		
		return searchMapper.select_vo_sku_detail(sku_id);
	}

	@Override
	public List<T_MALL_SKU> get_sku_list_by_spuid(int spu_id) {
		return searchMapper.select_sku_list_by_spuid(spu_id);
	}

}
