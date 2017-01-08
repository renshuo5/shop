package com.rens.shop.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rens.shop.product.dao.ProductDao;
import com.rens.shop.product.entity.Product;
import com.rensframework.core.service.BaseService;

@Service
@Transactional(readOnly=false)
public class ProductService extends BaseService<Product> {

	@Autowired
	private ProductDao productDao;
	@Override
	protected PagingAndSortingRepository<Product, Long> getDao() {
		return productDao;
	}
	public List<Product> findByCatalogId(Long cataId) {
		return productDao.findByCatalogId(cataId) ;
	}

}
