package com.singleton;

public class Worker {

    String lastName, firstName;
    int phone, id;

    private static Worker instance = new Worker();

    private Worker(){
        this.lastName = "Johnson";
        this.firstName = "James";
        this.phone = 351646;
        this.id = 123;
    }

    public static Worker getInstance(){
        return instance;
    }

    public void showInfo(){
        System.out.println("First Name: " + this.firstName + "\nLast Name: " + this.lastName + "\nPhone: " + this.phone + "\nID: " + this.id);
    }
}