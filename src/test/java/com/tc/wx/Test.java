package com.tc.wx;

public class Test {


    public static void main(String[] args) {

        String str="1234567890123";
        char[] chars = str.toCharArray();
        StringBuilder sb=new StringBuilder();
        for (int i=8;i<chars.length;i++) {
            sb.append(chars[i]);
        }
        System.out.println(sb.toString());

    }
}
