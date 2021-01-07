package com.tc.wx.util;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.omg.CosNaming.NamingContextExtPackage.StringNameHelper;

public class StringUtil {
	
	public static Date StrToDate(String source)  {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date =null;
		try {
			date= sdf.parse(source);
		} catch (ParseException e) {
		}
		if(date!=null) {
			return date;
		}
		return null;
		
	}
	
	public static boolean isEmpty(String str) {
		if (str == null || str.length() == 0) {
			return true;
		}
		return false;
	}

	public static boolean isNotEmpty(String str) {
		return !isEmpty(str);
	}
	//随机生成6位数主键
	public static Integer verifyCode(){
		//随机生成6位随机数
		return (int)((Math.random()*9+1)*100000);
	}
	//随机生成19位数主键
	public static Long seqGenerate(){
		//获取当前时间毫秒数
		long mTime = System.currentTimeMillis();
		//随机生成6位随机数
		long radomNum = (int)((Math.random()*9+1)*100000);
		long seq = mTime*1000000+radomNum;
		return seq;
	}
	
	//MD5加密
	public static String EncoderByMd5(String password) {
		try {
			MessageDigest md=MessageDigest.getInstance("MD5");
			md.update(password.getBytes());
			// digest()最后确定返回md5 hash值，返回值为8为字符串。因为md5 hash值是16位的hex值，实际上就是8位的字符
			// BigInteger函数则将8位的字符串转换成16位hex值，用字符串来表示；得到字符串形式的hash值
			return new BigInteger(1, md.digest()).toString(16);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		return "";
	}
	
	
	public static boolean compare(String strId,Integer targetId) {
		boolean  flag=true;
		String[] IdStrList = strId.split("-");
		int i=0;
		for ( i=0;i<IdStrList.length;i++ ) {
			if(targetId.toString().equals(IdStrList[i]))
				break;
		}
		if(i==IdStrList.length)
			flag=false;
		return flag;
	}
	
	public static String locusTypeForName(String type) {
		String name=new String();
		if (type != null && !"".equals(type))
			switch (type) {
			case "1":
				name = "资讯";
				break;
			case "2":
				name = "商品";
				break;
			case "3":
				name = "案例";
				break;
			case "4":
				name = "视频";
				break;
			case "5":
				name = "海报";
				break;
			case "6":
				name = "优惠券";
				break;
			case "7":
				name = "名片";
				break;
			case "8":
				name = "咨询";
				break;
			default:
				name = "其他";
				break;
			}
		return name;
	}
	
	public static String messageTypeForName(String type) {
		String name=new String();
		if (type != null && !"".equals(type))
			switch (type) {
			case "0":
				name = "文字";
				break;
			case "1":
				name = "资讯";
				break;
			case "2":
				name = "商品";
				break;
			case "3":
				name = "案例";
				break;
			case "4":
				name = "视频";
				break;
			case "5":
				name = "海报";
				break;
			default:
				
				break;
			}
		return name;
	}

	
}
