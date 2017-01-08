package com.rens.shop.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rens.shop.product.entity.Product;
import com.rens.shop.product.entity.ProductCatalog;
import com.rens.shop.product.service.ProductService;

@Controller
@RequestMapping("/product/")
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@RequestMapping(method=RequestMethod.GET)
	public String index(Model model){
		
		return "";
	}
	
	@RequestMapping(value="/catalog/{catalogId}", method=RequestMethod.GET)
	public String index(@PathVariable(value="catalogId") ProductCatalog cata, Model model){
		List<Product> list = productService.findByCatalogId(cata.getId());
		model.addAttribute("cata", cata);
		model.addAttribute("list", list);
		return "product/list";
	}
	
	@RequestMapping(value="/detail/{id}",method=RequestMethod.GET)
	public String detail(@PathVariable(value="id")Product product,Model model){
		model.addAttribute("entity", product);
		return "product/detail";
	}
}
