package com.sinocook.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Comment2 {
    int id;
    String nickname;
    Long time;
    int likes;
    String details;
}
