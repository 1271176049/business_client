package com.sdp.edu.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sdp.edu.bean.T_MALL_SKU;
import com.sdp.edu.bean.T_MALL_SKU_ATTR_VALUE;
import com.sdp.edu.model.MODEL_T_MALL_SKU_ATTR_VALUE;
import com.sdp.edu.service.SearchService;
import com.sdp.edu.vo.VO_ATTR_VALUE;
import com.sdp.edu.vo.VO_SKU_SPU_PP;
import com.sdp.edu.vo.VO_Sku_Detail;

@Controller
public class SearchController {
	@Autowired
	private SearchService searchService;

	@RequestMapping("goto_class_search")
	public String get_search_sku(int class_2_id, String class_2_name, ModelMap model) {
		List<VO_ATTR_VALUE> valuelist = searchService.getAttrList(class_2_id);
		List<VO_SKU_SPU_PP> vo = searchService.getSearchSku(class_2_id);
		model.put("vo", vo);
		model.put("attr", valuelist);
		return "sale_search_list";
	}

	@RequestMapping("attr_search")
	public String attr_search(int class_2_id, @RequestParam("list_av[]") String[] list_av, ModelMap model) {
		List<T_MALL_SKU_ATTR_VALUE> sku_attr_values = new ArrayList<>();
		for (int i = 0; i < list_av.length; i++) {
			String[] strings = list_av[i].split("_");

			T_MALL_SKU_ATTR_VALUE t_MALL_SKU_ATTR_VALUE = new T_MALL_SKU_ATTR_VALUE();
			t_MALL_SKU_ATTR_VALUE.setShxm_id(Integer.parseInt(strings[0]));
			t_MALL_SKU_ATTR_VALUE.setShxzh_id(Integer.parseInt(strings[1]));

			sku_attr_values.add(t_MALL_SKU_ATTR_VALUE);
		}

		List<VO_SKU_SPU_PP> vo = searchService.getSearchAttrSku(class_2_id, sku_attr_values);
		model.put("vo", vo);
		return "sale_search_sku_list";
	}

	@RequestMapping("sku_detail")
	public String sku_detail(int sku_id, int spu_id,ModelMap model) {
		VO_Sku_Detail detail = searchService.sku_detail(sku_id);
		List<T_MALL_SKU> skulist = searchService.get_sku_list_by_spuid(spu_id);
		model.put("obj_sku", detail);
		model.put("list_sku", skulist);
		return "sku_detil";
	}
}
