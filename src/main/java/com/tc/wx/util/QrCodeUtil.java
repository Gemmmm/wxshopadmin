package com.tc.wx.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.protocol.HTTP;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

public class QrCodeUtil {

	/**
	 * 
	 * @param map
	 * @return
	 * @throws Exception
	 */
	public static String getSellerQrCode(Map<String, Object> map) throws Exception { 
//		String type = (String) map.get("type");

		// 获取access_token
		String result =null;
		result = HttpUtil.doPost("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid="
					+ Constants.UserAPPID + "&secret=" + Constants.UserSECRET);
//		if("1".equals(type)) {
//			result = HttpUtil.doPost("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid="
//					+ Constants.UserAPPID + "&secret=" + Constants.UserSECRET);
//		}
//		else {
//			result = HttpUtil.doPost("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid="
//					+ Constants.SellerAPPID + "&secret=" + Constants.SellerSECRET);
//		}
		
		String access_token = JSONObject.parseObject(result).getString("access_token");
		if (access_token != null) {
			Map<String, Object> params = new HashMap<>();
			String scene = (String)map.get("scene");
			if(scene!=null) {
				params.put("scene", scene);
			}else {
				params.put("scene", "a=1");
			}
			String page = (String)map.get("page");
			if(page!=null) {
				params.put("page", page);
			}
			CloseableHttpClient httpClient = HttpClientBuilder.create().build();

			HttpPost httpPost = new HttpPost(
					"https://api.weixin.qq.com/wxa/getwxacodeunlimit?access_token=" + access_token);
			httpPost.addHeader(HTTP.CONTENT_TYPE, "application/json");
			String body = JSON.toJSONString(params);
			StringEntity entity = new StringEntity(body);
			entity.setContentType("image/png");

			httpPost.setEntity(entity);
			HttpResponse response = httpClient.execute(httpPost);

			InputStream inputStream = response.getEntity().getContent();
			String folderPath= Constants.QrCodePath;
			File folder = new File(folderPath);
			if (!folder.exists()) {
				folder.mkdirs();
			}
			File targetFile=new File(folderPath+(String)map.get("sellerId") + "qrcode.png");
			if (!targetFile.exists()) {
				targetFile.createNewFile();
			}
			FileOutputStream out = new FileOutputStream(targetFile);

			byte[] buffer = new byte[8192];
			int bytesRead = 0;
			while ((bytesRead = inputStream.read(buffer, 0, 8192)) != -1) {
				out.write(buffer, 0, bytesRead);
			}
			inputStream = new FileInputStream(targetFile);
			String path = FileUtil.uploadQrCode(inputStream);
			out.flush();
			out.close();
			if (path != null) {
				return path;
			}
		} else {
			System.out.println("获取access_token错误");
		}
		return null;
	}
}
