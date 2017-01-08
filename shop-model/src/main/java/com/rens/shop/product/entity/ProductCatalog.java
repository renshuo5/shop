package com.rens.shop.product.entity;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.rensframework.core.entity.Auditable;
import com.rensframework.core.entity.TimeEntity;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Entity
@Table
@Data
@EqualsAndHashCode(callSuper=false)
public class ProductCatalog extends TimeEntity implements Auditable<ProductCatalog>{
	/**
	 * 
	 */
	private static final long serialVersionUID = 7060891262698173532L;
	
	private String name;
	
	@ManyToOne(cascade=CascadeType.REFRESH,fetch=FetchType.EAGER)
	@JoinColumn(name="parentId",insertable=false,updatable=false)
	private ProductCatalog parent;
	@Column(nullable=true)
	private Long parentId;
	
	@OneToMany(mappedBy="parent",fetch=FetchType.LAZY)
	private List<ProductCatalog> children;
	
	private boolean removed;
	/**
	 * 是否父级标签
	 */
	private boolean father;
	/**
	 * 级别,根路径为1,往下依次递增
	 */
	private int level;
	/**
	 * 类型字段,保留字段
	 */
	@Column(length = 100)
	private String type;
	
	@Override
	public String getEntityName() {
		return "商品条目";
	}

	@Override
	public String getIdStr() {
		return getId().toString();
	}

	@Override
	public String getName() {
		return name;
	}
	
	@Transient
	private ProductCatalog orig;
}