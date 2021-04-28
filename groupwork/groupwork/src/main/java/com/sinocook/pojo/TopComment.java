package com.sinocook.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class TopComment {

    private String nickname;
    private String details;
    private String picAddress;
    private String dishname;

}
