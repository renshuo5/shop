package com.rens.shop.controller;
		

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rens.shop.product.entity.ProductCatalog;
import com.rens.shop.product.service.ProductCatalogService;
import com.rensframework.core.entity.user.User;


@Controller
public class ManageController {
	protected final Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private ProductCatalogService productCatalogService;
	
	@RequestMapping({"/"})
	public String login(Model model){
		logger.info("ManageController终于有日志啦");
		model.addAttribute("user", 
				(User) model.asMap().get(CommonController.ATTR_LOGIN_USER));
		List<ProductCatalog>  list = productCatalogService.findByParentIdIsNull();
//		List<Long> ids = new ArrayList<Long>();
//		for (ProductCatalog cata : list) {
//			ids.add(cata.getId());
//		}
//		List<ProductCatalog>  childlist = productCatalogService.findByParentIds(ids);
//		ids.clear();
//		for (ProductCatalog cata : childlist) {
//			ids.add(cata.getId());
//		}
//		List<ProductCatalog>  detailList = productCatalogService.findByParentIds(ids);
		
		model.addAttribute("cataList", list);
//		model.addAttribute("childList", childlist);
//		model.addAttribute("detailList", detailList);
		return "manage/index";
	}
}
