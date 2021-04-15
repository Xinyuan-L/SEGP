package com.sinocook.controller;



import com.sinocook.mapper.FoodMapper;
import com.sinocook.pojo.Food;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin
public class FoodController {

    @Autowired
    private FoodMapper foodMapper;

    @GetMapping("/getTodayFood")
    public Food getTodayFood(){
        int id=1;
        Food food = foodMapper.getTodayFood(id);
        return food;
    }


}
