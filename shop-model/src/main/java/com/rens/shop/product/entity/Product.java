package com.rens.shop.product.entity;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.Data;
import lombok.EqualsAndHashCode;

import com.rensframework.core.entity.Auditable;
import com.rensframework.core.entity.TimeEntity;

@Entity
@Table
@Data
@EqualsAndHashCode(callSuper=false)
public class Product extends TimeEntity implements Auditable<Product> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7683998850081906378L;

	private String name;
	
	/**
	 * 卖点
	 */
	private String sellPoint;
	
	/**
	 * 商品价格：元
	 */
	private BigDecimal price;
	
	/**
	 * 库存
	 */
	private Integer num;
	
	private String barCode;
	
	/**
	 * 所属类目
	 */
	@ManyToOne(cascade = CascadeType.REFRESH,fetch =FetchType.EAGER)
	@JoinColumn(name="catalogId")
	private ProductCatalog catalog; 
	@Column(nullable=false,insertable = false, updatable = false)
	private Long catalogId;
	
	private String imagePath;
	
	@Enumerated(EnumType.STRING)
	private ProductStatus status;
	
	public enum ProductStatus {
//		商品状态，1-正常，2-下架，3-删除
		Normal("正常"),
		Offshelf("下架"),
		Removed("删除");
		
		private String text;
		public String getText(){
			return text;
		}
		
		private ProductStatus(String text){
			this.text = text;
		}
		public static Map<String,String> getProductStatus(){
			Map<String,String> map= new HashMap<String,String>();
			for (ProductStatus ps : ProductStatus.values()) {
				map.put(ps.name(), ps.getText());
			}
			return map;		
		}
	}
	
	//TODO 图片集
	
//	`title` varchar(100) NOT NULL COMMENT '商品标题',
//	  `sell_point` varchar(500) DEFAULT NULL COMMENT '商品卖点',
//	  `price` bigint(20) NOT NULL COMMENT '商品价格，单位为：分',
//	  `num` int(10) NOT NULL COMMENT '库存数量',
//	  `barcode` varchar(30) DEFAULT NULL COMMENT '商品条形码',
//	  `image` varchar(500) DEFAULT NULL COMMENT '商品图片',
//	  `cid` bigint(10) NOT NULL COMMENT '所属类目，叶子类目',
//	  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '商品状态，1-正常，2-下架，3-删除',
//	  `created` datetime NOT NULL COMMENT '创建时间',
//	  `updated` datetime NOT NULL COMMENT '更新时间',
	
	
	@Override
	public String getEntityName() {
		return "商品";
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
	private Product orig;

}
