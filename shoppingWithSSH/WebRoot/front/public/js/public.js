$(function(){
	/*------------------------------购物车效果-----------------------------------*/	   
	$(".cart-section").hover(function(){
		$(".hidden-cart").css("display","block");
		$(".hidden-cart-c").css("display","block");
	},function(){
		$(".hidden-cart").css("display","none");
		$(".hidden-cart-c").css("display","none");
		})	
	
	$(".hidden-cart-c ul li ins").click(function(){
		$(this).parents('li').remove();
	})
	


	var $subblock = $(".subpage"), $head=$subblock.find('h2'), $ul = $("#proinfo"), $lis = $ul.find("li"), inter=false;
	
	$head.click(function(e){
		e.stopPropagation();
		if(!inter){
			$ul.show();
		}else{
			$ul.hide();
		}
		inter=!inter;
	});
	
	$ul.click(function(event){
		event.stopPropagation();
	});
	
	$(document).click(function(){
		$ul.hide();
		inter=!inter;
	});

	$lis.hover(function(){
		if(!$(this).hasClass('nochild')){
			$(this).addClass("prosahover");
			$(this).find(".prosmore").removeClass('hide');
		}
	},function(){
		if(!$(this).hasClass('nochild')){
			if($(this).hasClass("prosahover")){
				$(this).removeClass("prosahover");
			}
			$(this).find(".prosmore").addClass('hide');
		}
	});
	//购物数量加
	   $('.add_btn').click(function(){
				var onum=Number($('.input-count').val())+1;
				$('.input-count').attr('value',onum);
		});
	   
	   //购物数量减
	   $('.min_btn').click(function(){
				var onum=Number($('.input-count').val())-1;
				if(onum>=1){
					$('.input-count').attr('value',onum);
				}
		});
})
