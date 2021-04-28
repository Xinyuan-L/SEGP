package com.sinocook.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Popular {

    private String name;
    private String address;
    private Integer likes;
    private String views;

}
