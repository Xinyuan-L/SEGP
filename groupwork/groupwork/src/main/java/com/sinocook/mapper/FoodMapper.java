package com.sinocook.mapper;


import com.sinocook.pojo.*;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Mapper
@Repository
public interface FoodMapper {

    Food getTodayFood(int id);
    TopComment getTopComment();
    DishPart1 getDishPart1(String name);
    Step getStep(String name);
    StepPicture getStepPicture(String name);
    List<Popular> getPopular();
    Integer getTotalComments(int id);
    ArrayList<Comment> getComments(int id);
    void addDishLike(int id);
    void reduceDishLike(int id);
    void addViews(int id);
    void addComLike(String ctime);
    void reduceComLike(String ctime);
    void postComments(Map<String,Object> map);
    Integer getCid();
    Integer getDid(String name);
}
