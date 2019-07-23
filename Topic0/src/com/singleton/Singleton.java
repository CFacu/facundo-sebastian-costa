package com.singleton;

public class Singleton {
    static String url="database.com";
    public static void main(String[] args) {
        SingleConnect conn = SingleConnect.connectTo(url);

    }
}