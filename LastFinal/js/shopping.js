/*
 * 计算所有订单的总和
 */
function keyUp() {
	var total = 0;
	var totalquaantity = 0;
	// 对每行的值求和
	$("#tab tr").each(function() {
		var tr = $(this);
		var quantity = tr.find("#quantity");
		var quantityVal = quantity.val();
		var price = tr.find("#price");
		var priceVal = parseFloat(price.val());
		var quantityNum = quantityVal ? parseInt(quantityVal) : 0;

		if (quantityNum > 0) {
			total += quantityNum * priceVal;
			totalquaantity += quantityNum;
		}
	});

	$("#totalPrice").html(changeTwoDecimal_f(total));
	$("#yingfuMoney").val(changeTwoDecimal_f(total));
	$("#shuliang").html(totalquaantity);
}
/* 获取初始值 */
$(function(){ 

keyUp();

});
function pay(){
	payForm.submit(); 
}
/* 商品数量+1 */
function numAdd(obj) {
	var curr = $(obj);
	var quantity = curr.prev();
	var quantityVal = quantity.val();
	var price = curr.parent().next().find("input");
	var num_add = quantityVal ? parseInt(quantityVal) + 1 : 1;// 判断quantityVal为""的情况
	var priceVal = parseFloat(price.val());// 加一次则不需要乘以次数，直接在总和上+单价即可。
	var totalPrice = $("#totalPrice");
	var totalPriceVal = $("#totalPrice").html();
	var totalquaantity = parseInt(isNaN($("#shuliang").text()) ? 0 : $("#shuliang").text());


	// 总价为""
	if (totalPriceVal === "") {
		totalPriceVal = 0;
	} else {
		totalPriceVal = parseFloat(totalPriceVal);
	}

	quantity.val(num_add);
	totalquaantity +=1;

	totalPrice.html(changeTwoDecimal_f(totalPriceVal + priceVal));// 以前的总和加上这次的单价就是加之后的总和。
	$("#yingfuMoney").val(changeTwoDecimal_f(totalPriceVal + priceVal));
    $("#shuliang").html(totalquaantity);
}

/* 商品数量-1 */
function numDec(obj) {
	var curr = $(obj);
	var quantity = curr.next();
	var quantityVal = quantity.val();
	var price = curr.parent().next().find("input");
	var num_dec = parseInt(quantityVal) - 1;
	var priceVal = parseFloat(price.val());// 减一次则不需要乘以次数，直接在总和上-单价即可。
	var totalPrice = $("#totalPrice");
	var totalPriceVal = $("#totalPrice").html();
	var totalquaantity = parseInt(isNaN($("#shuliang").text()) ? 0 : $("#shuliang").text());

	if (num_dec < 1) {
		// 购买数量必须大于或等于1
		alert("不能小于一件");
	} else {
		quantity.val(num_dec);
		totalquaantity -=1;
		totalPrice.html(changeTwoDecimal_f(parseFloat(totalPriceVal) - priceVal));
		$("#yingfuMoney").val(changeTwoDecimal_f(parseFloat(totalPriceVal) - priceVal));
		$("#shuliang").html(totalquaantity);
	}
}

// 保留两位小数
function changeTwoDecimal_f(floatvar) {
	var f_x = parseFloat(floatvar);
	if (isNaN(f_x)) {
		alert('function:changeTwoDecimal->parameter error');
		return false;
	}
	var f_x = Math.round(f_x * 100) / 100;
	var s_x = f_x.toString();
	var pos_decimal = s_x.indexOf('.');
	if (pos_decimal < 0) {
		pos_decimal = s_x.length;
		s_x += '.';
	}
	while (s_x.length <= pos_decimal + 2) {
		s_x += '0';
	}
	return s_x;
}
