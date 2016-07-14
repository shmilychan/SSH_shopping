package com.buaa.shopping.util;

import java.io.File;
import java.util.UUID;

import org.aspectj.util.FileUtil;

public class FileUtils {

	/**
	 * 保存文件功能
	 * 
	 * @param orgFile
	 *            要保存的文件
	 * @param savePath
	 *            保存的路径(物理路径)
	 * @param orgFileName
	 *            原文件名(用来取得扩展名)
	 * @return
	 * @throws Exception
	 */
	public static String saveFile(File orgFile, String savePath,
			String orgFileName) throws Exception {
		// 生成文件名
		String fileName = UUID.randomUUID().toString();
		// 处理扩展名
		String extName = orgFileName.substring(orgFileName.lastIndexOf("."));
		File os = new File(savePath,fileName+extName);
		FileUtil.copyFile(orgFile, os);
		return fileName + extName;
	}

	public static void deleteFile(String filePath, String fileName) {
		File file = new File(filePath, fileName);
		if (file.exists()) {
			file.delete();
		}
	}

}
