package com.sinocook.mapper;


import com.sinocook.pojo.*;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Mapper
@Repository
public interface FoodMapper {

    Food getTodayFood(int id);
    TopComment getTopComment();
    DishPart1 getDishPart1(String name);
    Step getStep(String name);
    StepPicture getStepPicture(String name);
    List<Popular> getPopular();
    Integer getTotalComments(String name);
    ArrayList<Comment> getComments(String name);
}
