package com.proxy;

public class Proxy {

    public static void main(String[] args){

        Image proxyImage = new ProxyImage("test.jpg");

        //Using the proxy image
        proxyImage.display();

        System.out.println("----------");

        //Using the real image
        Image noProxyImage = new RealImage("test.jpg");

        noProxyImage.display();

    }

}