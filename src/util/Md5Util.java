package util;

import java.security.MessageDigest;
import sun.misc.BASE64Encoder;

public class Md5Util {
	public static String EncoderByMd5(String str) throws Exception{
		MessageDigest md5=MessageDigest.getInstance("MD5");
        BASE64Encoder base64en = new BASE64Encoder();
        String newstr=base64en.encode(md5.digest(str.getBytes("utf-8")));
        return newstr;
    }
	
	public static void main(String[] args) {
		try {
			System.out.println(EncoderByMd5("123456"));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
