package com.buaa.shopping.action;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.buaa.shopping.util.FileUtils;
import com.opensymphony.xwork2.ActionSupport;



public class FileUploadAction extends ActionSupport {
	private File file;  //注意file名与表单name对应
    private String fileFileName;  //file+FileName为固定写法,否则取不到
    private String fileContentType; //file+ContentType为固定写法
    
    private String message = "上传图片成功";
    public void upload() throws IOException{
    	 String path = ServletActionContext.getRequest().getSession().getServletContext().getRealPath("/admin/upload");  
    	 System.out.println(path);
    	 try {  
             if(this.getFileFileName().endsWith(".exe")){  
                 message="文件错误";  
             }  
             String filename = FileUtils.saveFile(file, path, fileFileName);             
             this.setMessage("admin/upload/"+filename);  
         } catch (Exception e) {  
             e.printStackTrace();  
             message = "上传异常!!!!";  
         }  
         returnJson();
    }
    
    public void returnJson() throws IOException{
    	
	    HttpServletResponse response=ServletActionContext.getResponse();  
	    /* 
	     * 在调用getWriter之前未设置编码(既调用setContentType或者setCharacterEncoding方法设置编码), 
	     * HttpServletResponse则会返回一个用默认的编码(既ISO-8859-1)编码的PrintWriter实例。这样就会 
	     * 造成中文乱码。而且设置编码时必须在调用getWriter之前设置,不然是无效的。 
	     * */  
	    response.setContentType("text/html;charset=utf-8");  
	    //response.setCharacterEncoding("UTF-8");  
	    PrintWriter out = response.getWriter();  
	    //JSON在传递过程中是普通字符串形式传递的，这里简单拼接一个做测试  
	    String jsonString="{\"message\":\""+message+"\"}";  
	    out.println(jsonString);  
	    out.flush();  
	    out.close();  
  	}
    
	public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	public String getFileFileName() {
		return fileFileName;
	}
	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}
	public String getFileContentType() {
		return fileContentType;
	}
	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
    
    
}
