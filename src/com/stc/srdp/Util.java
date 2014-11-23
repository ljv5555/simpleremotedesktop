package com.stc.srdp;

import java.io.IOException;

import org.apache.tomcat.util.codec.binary.Base64;

public class Util
{
	 static String bytesToBase64Url(byte[] in,String contentType) throws IOException 
	 {
		  StringBuffer out = new StringBuffer();
		  out.append(Base64.encodeBase64URLSafeString(in));
		  return out.toString();
	}

		 static byte[] decodeArray(String in) throws IOException {
		  byte[] buf = Base64.decodeBase64(in);
		  return buf;
		 }
}