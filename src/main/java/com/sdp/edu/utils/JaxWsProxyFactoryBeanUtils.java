package com.sdp.edu.utils;

import org.apache.cxf.jaxws.JaxWsProxyFactoryBean;


public class JaxWsProxyFactoryBeanUtils {

	@SuppressWarnings("unchecked")
	public static <T> T getWs(String value, Class<T> t) {
		JaxWsProxyFactoryBean jaxWsProxyFactoryBean = new JaxWsProxyFactoryBean();
		jaxWsProxyFactoryBean.setAddress(value);
		jaxWsProxyFactoryBean.setServiceClass(t);
		return (T) jaxWsProxyFactoryBean.create();
	}

}
