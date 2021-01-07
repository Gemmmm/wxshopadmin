package com.tc.wx.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;



public class ResponseUtil {
	
	//返回json数据到response中
	public static void renderData(HttpServletResponse response,String data) {
		response.setCharacterEncoding("utf-8");
		//设置返回数据为json数据
		response.setContentType("application/json");
		PrintWriter printWriter=null;
		try {
			printWriter = response.getWriter();
			printWriter.print(data);
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			if(printWriter!=null) {
				printWriter.flush();
				printWriter.close();
			}
		}
		
	}
}
