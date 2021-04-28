package com.sinocook.pojo;

import lombok.Data;

import java.util.ArrayList;

@Data
public class Comments {
    private int total;
    private ArrayList<Comment> comments;

    public Comments(int total, ArrayList<Comment> comments) {
        this.total = total;
        this.comments = comments;
    }


}
