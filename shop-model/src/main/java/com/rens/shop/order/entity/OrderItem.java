package com.rens.shop.order.entity;

import java.math.BigDecimal;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.Data;
import lombok.EqualsAndHashCode;

import com.rens.shop.product.entity.Product;
import com.rensframework.core.entity.Auditable;
import com.rensframework.core.entity.TimeEntity;

@Entity
@Table
@Data
@EqualsAndHashCode(callSuper=false)
public class OrderItem extends TimeEntity implements Auditable<OrderItem>{
	/**
	 * 
	 */
	private static final long serialVersionUID = -9008897015580162262L;

	@ManyToOne(cascade=CascadeType.REFRESH, optional =false, fetch=FetchType.EAGER)
	@JoinColumn(name="orderId", nullable=false)
	private Order order;
	@Column(insertable = false, updatable = false, nullable = false)
	private Long orderId;
	
	@ManyToOne(cascade=CascadeType.REFRESH,optional = false,fetch = FetchType.EAGER)
	@JoinColumn(name="productId", nullable=false)
	private Product product;
	@Column(insertable = false, updatable = false, nullable = false)
	private Long productId;
	
	private Integer num;
	/**
	 * 订单详细总价格
	 */
	private BigDecimal totalFee; 
	
//	  `item_id` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '商品id',
//	  `order_id` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '订单id',
//	  `num` int(10) DEFAULT NULL COMMENT '商品购买数量',
//	  `title` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '商品标题',
//	  `price` bigint(50) DEFAULT NULL COMMENT '商品单价',
//	  `total_fee` bigint(50) DEFAULT NULL COMMENT '商品总金额',
//	  `pic_path` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '商品图片地址',
	
	@Override
	public String getEntityName() {
		return "订单详细";
	}

	@Override
	public String getIdStr() {
		return getId().toString();
	}

	@Override
	public String getName() {
		return null;
	}
	
	@Transient
	private OrderItem orig;

}
