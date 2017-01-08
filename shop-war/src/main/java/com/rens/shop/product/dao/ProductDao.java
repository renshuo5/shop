package com.rens.shop.product.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.rens.shop.product.entity.Product;

public interface ProductDao extends PagingAndSortingRepository<Product, Long>,
		JpaSpecificationExecutor<Product> {

	public List<Product> findByCatalogId(Long cataId);

}
