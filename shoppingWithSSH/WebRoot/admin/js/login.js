// JavaScript Document

function check(u,p,c,form){
	if($(u).val()==""){
		//alert("-管理员登录名不能为空");
		$("#error_name").html("管理员用户名不能为空");
		$(u).focus();
		return false;
	}
	if($(p).val()==""){
		$("#error_pass").html("管理员密码不能为空");
		$(p).focus();
		return false;
	}
	if($(c).val()==""){
		$("#error_verify").html("验证码不能为空");
		$(c).focus();
		return false;
	}
	$(form).submit();
}
function reflashCode(){
	document.getElementById("imgCode").src="/admin.php?do=code&"+Math.random();
}

$(document).ready(function(){				   
	/*$("#verifyCode").keyup(function(){
		$("#verifyCode").val($("#verifyCode").val().toUpperCase());
	});*/	
	$("#enter").click(function(){
		check('#username','#password','#verifyCode','#form_login');
	});

	$("#username").hover(function(){
		$("#username").addClass("inputBgin");
	},function(){
		$("#username").removeClass("inputBgin");
	});
	$("#password").hover(function(){
		$("#password").addClass("inputBgin");
	},function(){
		$("#password").removeClass("inputBgin");
	});
	$("#verifyCode").hover(function(){
		$("#verifyCode").addClass("inputBgin_verify");
	},function(){
		$("#verifyCode").removeClass("inputBgin_verify");
	});
});

