package com.sinocook.pojo;

import lombok.Data;

import java.util.ArrayList;

@Data
public class Comments {
    private int total;
    private ArrayList<Comment2> comments;

    public Comments(int total, ArrayList<Comment2> comments) {
        this.total = total;
        this.comments = comments;
    }


}
