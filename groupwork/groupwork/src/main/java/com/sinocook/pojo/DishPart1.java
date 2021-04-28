package com.sinocook.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DishPart1 {
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
}
