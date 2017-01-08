package com.rens.shop.order.entity;

import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import com.rensframework.core.entity.Auditable;
import com.rensframework.core.entity.TimeEntity;

@Entity
@Table(name="tb_order")
@Data
@ToString(callSuper = true, exclude = { "orig"})
@EqualsAndHashCode(callSuper = true, exclude = {"orig"})
public class Order extends TimeEntity implements Auditable<Order>{

	/**
	 * 
	 */
	private static final long serialVersionUID = -2762162115445621436L;

	private BigDecimal payment;
	
	@Enumerated(EnumType.STRING)
	private PaymentType paymentType;
	
	/**
	 * 支付类型，1、在线支付，2、货到付款
	 * @author renshuo
	 *
	 */
	public enum PaymentType {
		OnlinePay("在线支付"),
		DeliveryPay("货到付款");
		private String text;
		private PaymentType(String text){
			this.text=text;
		}
		public String getText() {
			return text;
		}
		
		public static Map<String,String> getPaymentTypes(){
			Map<String, String> map = new HashMap<String, String>();
			for (PaymentType ptype : PaymentType.values()) {
				map.put(ptype.name(),ptype.getText());
			}
			return map;
		}
	}
	
	private BigDecimal postFee;
	
	@Enumerated(EnumType.STRING)
	private OrderStatus status = OrderStatus.NoPayment;
	
	public enum OrderStatus {
		//状态：1、未付款，2、已付款，3、未发货，4、已发货，5、交易成功，6、退货中，7、交易关闭
		NoPayment("未付款"),
		Payment("已付款"),
		NotShipped("未发货"),
		Shipped("已发货"),
		Success("交易成功"),
		Return("退货中"),
		Close("交易关闭");
		
		private String text;
		private OrderStatus(String text){
			this.text=text;
		}
		
		public String getText(){
			return text;
		}
		
		public static Map<String,String> getOrderStatus(){
			Map<String, String> map=new HashMap<String,String>();
			for (OrderStatus os : OrderStatus.values()) {
				map.put(os.name(), os.getText());
			}
			return map;
		}
	}
	
	/**
	 * 付款时间
	 */
	private Timestamp paymentTime;
	
	/**
	 * 发货时间
	 */
	private Timestamp consignTime;
	/**
	 * 交易完成时间
	 */
	private Timestamp endTime;
	
	/**
	 * 交易关闭时间
	 */
	private Timestamp closeTime;
	
	/**
	 * 物流名称
	 */
	private String shippingName;
	
	/**
	 * 物流单号
	 */
	private String shippingCode;
	
	@Column(length=2000)
	private String buyerMessage;
	
	/**
	 * 买家昵称
	 */
	private String buyerNick;
	/**
	 * 是否已经评价
	 */
	private boolean buyerRate;
	
	//TODO 增加评价外部id
//	payment` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '实付金额。精确到2位小数;单位:元。如:200.07，表示:200元7分',
//	  `payment_type` int(2) DEFAULT NULL COMMENT '支付类型，1、在线支付，2、货到付款',
//	  `post_fee` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '邮费。精确到2位小数;单位:元。如:200.07，表示:200元7分',
//	  `status` int(10) DEFAULT NULL COMMENT '状态：1、未付款，2、已付款，3、未发货，4、已发货，5、交易成功，6、交易关闭',
//	  `create_time` datetime DEFAULT NULL COMMENT '订单创建时间',
//	  `update_time` datetime DEFAULT NULL COMMENT '订单更新时间',
//	  `payment_time` datetime DEFAULT NULL COMMENT '付款时间',
//	  `consign_time` datetime DEFAULT NULL COMMENT '发货时间',
//	  `end_time` datetime DEFAULT NULL COMMENT '交易完成时间',
//	  `close_time` datetime DEFAULT NULL COMMENT '交易关闭时间',
//	  `shipping_name` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '物流名称',
//	  `shipping_code` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '物流单号',
//	  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
//	  `buyer_message` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '买家留言',
//	  `buyer_nick` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '买家昵称',
//	  `buyer_rate` int(2) DEFAULT NULL COMMENT '买家是否已经评价',
	
	@Override
	public String getEntityName() {
		return "订单实体";
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
	private Order orig;
	

	
}
