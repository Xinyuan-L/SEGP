package com.sinocook.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Food {

    //private int id;
    private String name;
    private String address;
    private String description;

}
