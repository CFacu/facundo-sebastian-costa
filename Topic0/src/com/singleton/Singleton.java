package com.singleton;

public class Singleton {

    public static void main(String[] args) {
        Worker worker = Worker.getInstance();

        worker.showInfo();
    }
}
