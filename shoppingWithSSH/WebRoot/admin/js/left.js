// JavaScript Document

$(document).ready(function(){
	$("#allmenu").toggle(function(){
		$("#allmenu").attr("src","images/menu_minus.gif");
		$("#menu").find("ul").slideDown(100);
	},function(){		
		$("#allmenu").attr("src","images/menu_plus.gif");
		$("#menu").find("ul").slideUp(100);
	});
	
	$(".title > a").each(function(i){
		$(this).click(function(){
			var ulNode = $(".title > a").next("ul");
			ulNode.slideUp(100);	
			if($(".title > a").eq(i).next("ul").css("display")=='none'){
				$(".title > a").eq(i).next("ul").slideDown(100);
			} 
		});
	});
	/*
	$(".title > a").click(function(){
		var ulNode = $(this).next("ul");
		var pics = $(this).prev("img");
		if(ulNode.css("display")=="none"){
			pics.attr("src","/Public/images/admin/menu_minus.gif");
			ulNode.show(600);
		} else {
			ulNode.hide(600);
			pics.attr("src","/Public/images/admin/menu_plus.gif");
		}
	});
	*/
});

function JumpMenu(url){
	parent.mainFrame.document.location=url;
}