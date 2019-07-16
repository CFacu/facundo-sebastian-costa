package com.bootcamp;

public class Worker {

    private String firstname, lastname;
    private int age, id;

    private static Worker instance = new Worker();

    private Worker(){
        this.firstname = "James";
        this.lastname = "Johnson";
        this.age = 28;
        this.id = 123456;
    }

    public static Worker getInstance(){
        return instance;
    }
    public void info(){
        System.out.println("Firstname: "+this.firstname+"\nLastname: "+this.lastname+"\nAge: "+this.age+"\nID: "+this.id);
    }
}
