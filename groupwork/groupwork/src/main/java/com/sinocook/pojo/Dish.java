package com.sinocook.pojo;

import lombok.Data;

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
    private String main;
    private String other;
    private Steps steps;

    public Dish(DishPart1 dishPart1, Steps steps) {
        id=dishPart1.getId();
        name=dishPart1.getName();
        taste=dishPart1.getTaste();
        time=dishPart1.getTime();
        address=dishPart1.getAddress();
        description=dishPart1.getDescription();
        likes=dishPart1.getLikes();
        views=dishPart1.getViews();
        main=dishPart1.getMain();
        other=dishPart1.getOther();
        this.steps = steps;
    }

}
