package com.sinocook.pojo;

import lombok.Data;

import java.util.ArrayList;

@Data
public class Steps {

    ArrayList<String> descList;
    ArrayList<String> picAddList;

    public Steps(ArrayList<String> descList, ArrayList<String> picAddList) {
        this.descList = descList;
        this.picAddList = picAddList;
    }

    @Override
    public String toString() {
        return "Steps{" +
                "descList=" + descList +
                ", picAddList=" + picAddList +
                '}';
    }
}
