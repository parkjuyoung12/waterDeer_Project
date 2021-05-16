package com.water.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ImagePreViewAction implements Action{
	@Override
	public ActionFoward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO
		response.setContentType("text/html; charset=UTF-8");
		
		String savePath = "C:\\Users\\zhsel\\eclipse-workspace\\bizpoll\\WebContent\\images\\board";
		
		String fileName = request.getParameter("fileName");
		String articleno = request.getParameter("articleno");
		
		System.out.println("fileName ===> " + fileName);
		
		OutputStream out = response.getOutputStream();
		
		String path = savePath + "\\" + articleno + "\\" + fileName;
		File imageFile = new File(path);
		
		response.setHeader("Cache-Ccontrol", "no-cache");
		response.addHeader("Content-disposition", "attachment);fileName= " + fileName);
		
		FileInputStream in = new FileInputStream(imageFile);
		
		byte[] buffer = new byte[8 * 1024];
		
		while(true) {
			int count = in.read();
			
			if(count == -1) {
				break;
			}
			
			out.write(buffer, 0, count);
		}
		
		in.close();
		out.close();
		
		return null;
	}

}
