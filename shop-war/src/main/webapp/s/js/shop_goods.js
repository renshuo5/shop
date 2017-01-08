
/**
 * Goods Page Js
 * wanglele 2013/03/28
 */
 jQuery(function(){
 	jQuery("#good_num_jian").click(function(){
 		var num = jQuery("#good_nums").val();
 		num = parseInt(num);
 		num = num-1;
 		if(num<=1){
 			num = 1;
 		}
 		var price =$("#good_price").val();
 		var total = parseInt(price) * num;
 		$("#good_count").html(total);
 		jQuery("#good_nums").val(num);
 	});

 	jQuery("#good_num_jia").click(function(){
 		var num = jQuery("#good_nums").val();
 		num = parseInt(num);
 		num = num+1;
 		var price =$("#good_price").val();
 		var total = parseInt(price)* num;
 		$("#good_count").html(total);
 		jQuery("#good_nums").val(num);
 	});
 	
 	$("#good_nums").change(function(){
 		var price = $("#good_price").val();
 		var num = $(this).val();
 		if(isNaN(num)){
 			alert("请输入数字");
 			return false;
 		}
 		var total = price * num;
 		$("#good_count").html(total);
 	});
 	
 	function load(){
 		var price = $("#good_price").val();
 		var num = $("#good_nums").val();
 		var total = price * num;
 		$("#good_count").html(total);
 	};
 	load();
 });