package com.sdp.edu.utils;

import org.apache.cxf.jaxws.JaxWsProxyFactoryBean;
import org.springframework.beans.factory.FactoryBean;

public class MyWsFactoryBean<T> implements FactoryBean<T> {
	String url;
	Class<T> t;

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Class<T> getT() {
		return t;
	}

	public void setT(Class<T> t) {
		this.t = t;
	}

	@SuppressWarnings({ "unchecked", "hiding" })
	public <T> T getWs(String value, Class<T> t) {
		JaxWsProxyFactoryBean jaxWsProxyFactoryBean = new JaxWsProxyFactoryBean();
		jaxWsProxyFactoryBean.setAddress(value);
		jaxWsProxyFactoryBean.setServiceClass(t);
		return (T) jaxWsProxyFactoryBean.create();
	}

	/**
	 * 返回的实例对象
	 */
	@Override
	public T getObject() throws Exception {
		return this.getWs(this.url, this.t);
	}

	@Override
	public Class<?> getObjectType() {
		// TODO Auto-generated method stub
		return this.t;
	}

	/**
	 * 是否单例
	 */
	@Override
	public boolean isSingleton() {
		return true;
	}

}
