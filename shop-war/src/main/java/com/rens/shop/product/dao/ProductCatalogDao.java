package com.rens.shop.product.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.rens.shop.product.entity.ProductCatalog;

public interface ProductCatalogDao extends PagingAndSortingRepository<ProductCatalog, Long>,
		JpaSpecificationExecutor<ProductCatalog> {

	public List<ProductCatalog> findByParentIdIsNull();

	public List<ProductCatalog> findByParentIdIsNotNull();

	public List<ProductCatalog> findByIdIn(List<Long> ids);

	public List<ProductCatalog> findByParentIdIn(List<Long> ids);

}
