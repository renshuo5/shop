package com.rens.shop.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rens.shop.product.dao.ProductCatalogDao;
import com.rens.shop.product.entity.ProductCatalog;
import com.rensframework.core.service.BaseService;

@Service
@Transactional(readOnly=false)
public class ProductCatalogService extends BaseService<ProductCatalog> {
	
	@Autowired
	private ProductCatalogDao productCatalogDao;

	@Override
	protected PagingAndSortingRepository<ProductCatalog, Long> getDao() {
		return productCatalogDao;
	}
	
	public List<ProductCatalog> findByParentIdIsNull(){
		return productCatalogDao.findByParentIdIsNull();
	}
	
	public List<ProductCatalog> findByParentIdIsNotNull(){
		return productCatalogDao.findByParentIdIsNotNull();
	}

	public List<ProductCatalog> findByIds(List<Long> ids) {
		return productCatalogDao.findByIdIn(ids);
	}

	public List<ProductCatalog> findByParentIds(List<Long> ids) {
		return productCatalogDao.findByParentIdIn(ids);
	}

}
