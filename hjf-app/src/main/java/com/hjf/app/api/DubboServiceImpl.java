package com.hjf.app.api;

public class DubboServiceImpl implements DubboService {
	 public String hello(String name) {
	        return name + " service2 say hello word service2!";
	    }
}
