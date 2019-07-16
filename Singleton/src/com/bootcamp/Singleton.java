package com.bootcamp;

public class Singleton {

    public static void main(String[] args) {
        Worker obj = Worker.getInstance();

        obj.info();
    }
}
