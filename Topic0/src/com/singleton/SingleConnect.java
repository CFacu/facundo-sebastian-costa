package com.singleton;

public class SingleConnect {
    private String url;
    private static Connection conn;

    private SingleConnect(String url){
        this.url = url;
    }

    private static class Connection{
        static SingleConnect singleConnect;
        private Connection(String url){
            singleConnect = new SingleConnect(url);
        }
    }

    public static SingleConnect connectTo(String url){
        System.out.println("Connected to " + url);
        return conn.singleConnect;
    }
}