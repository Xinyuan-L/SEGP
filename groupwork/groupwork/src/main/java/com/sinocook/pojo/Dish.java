package com.sinocook.pojo;

import lombok.Data;

import java.util.ArrayList;

@Data
public class Dish {
    private int id;
    private String name;
    private String taste;
    private int time;
    private String address;
    private String description;
    private int likes;
    private int views;
    private String[] main;
    private String[] other;
    private ArrayList<ComStep> steps;

    public Dish(DishPart1 dishPart1, ArrayList<ComStep> steps) {
        id=dishPart1.getId();
        name=dishPart1.getName();
        taste=dishPart1.getTaste();
        time=dishPart1.getTime();
        address=dishPart1.getAddress();
        description=dishPart1.getDescription();
        likes=dishPart1.getLikes();
        views=dishPart1.getViews();
        this.main=dishPart1.getMain().split(",");
        this.other=dishPart1.getOther().split(",");
        this.steps = steps;
    }

}
