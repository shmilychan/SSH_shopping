function FileUpload(buttonId) {
			$.ajaxFileUpload({
			    url : 'upload',// 用于文件上传的服务器端请求地址
			    dataType : "json",
			    secureuri : false,// 一般设置为false
			    fileElementId : 'fileToUpload',// 文件上传空间的id属性 <input type="file" id="uploadId" />
				error : function(XMLHttpRequest, textStatus, errorThrown) {
			 
			    },
			    success : function(data) {
			    	$('#viewImg').attr('src',data.message);
			    	$('#picpath').attr('value',data.message);
			    }
			 
			});
			return false;
}