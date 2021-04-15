package com.sinocook.mapper;


import com.sinocook.pojo.Food;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface FoodMapper {

    Food getTodayFood(int id);

}
