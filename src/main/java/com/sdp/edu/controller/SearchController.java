package com.sdp.edu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sdp.edu.service.SearchService;
import com.sdp.edu.vo.VO_ATTR_VALUE;
import com.sdp.edu.vo.VO_SKU_SPU_PP;

@Controller
public class SearchController {
	@Autowired
	private SearchService searchService;

	@RequestMapping("goto_class_search")
	public String get_search_sku(int class_2_id, String class_2_name, ModelMap model) {
		List<VO_ATTR_VALUE> valuelist=searchService.getAttrList(class_2_id);
		List<VO_SKU_SPU_PP> vo = searchService.getSearchSku(class_2_id);
		model.put("vo", vo);
		model.put("attr", valuelist);
		return "sale_search_list";
	}
}
