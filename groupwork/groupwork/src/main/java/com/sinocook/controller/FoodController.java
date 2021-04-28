package com.sinocook.controller;



import com.sinocook.mapper.FoodMapper;
import com.sinocook.pojo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;


@RestController
public class FoodController {

    @Autowired
    private FoodMapper foodMapper;

    @GetMapping("/getTodayFood")
    @CrossOrigin
    public Food getTodayFood(){
        Calendar c = Calendar.getInstance();
        int day=c.get(Calendar.DATE);
        int id=day%30+1;
        Food food = foodMapper.getTodayFood(id);
        return food;
    }

    // @RequestMapping("/getDish")
    @GetMapping("/getDish")
    @CrossOrigin
    public Dish getDish(@RequestParam(value = "name", required = false) String name){
        // String name="Purple cabbage yogurt salad";
        DishPart1 dishPart1=foodMapper.getDishPart1(name);
        System.out.println(name);
        ArrayList<String> descList=new ArrayList<>();
        ArrayList<String> picAddList=new ArrayList<>();
        Step step=foodMapper.getStep(name);
        if(step.getStep1()!=null){
            descList.add(step.getStep1());
        }
        if(step.getStep2()!=null){
            descList.add(step.getStep2());
        }
        if(step.getStep3()!=null){
            descList.add(step.getStep3());
        }
        if(step.getStep4()!=null){
            descList.add(step.getStep4());
        }
        if(step.getStep5()!=null){
            descList.add(step.getStep5());
        }
        if(step.getStep6()!=null){
            descList.add(step.getStep6());
        }
        StepPicture stepPicture=foodMapper.getStepPicture(name);
        if(stepPicture.getSpic_address1()!=null){
            picAddList.add(stepPicture.getSpic_address1());
        }
        if(stepPicture.getSpic_address2()!=null){
            picAddList.add(stepPicture.getSpic_address2());
        }
        if(stepPicture.getSpic_address3()!=null){
            picAddList.add(stepPicture.getSpic_address3());
        }
        if(stepPicture.getSpic_address4()!=null){
            picAddList.add(stepPicture.getSpic_address4());
        }
        if(stepPicture.getSpic_address5()!=null){
            picAddList.add(stepPicture.getSpic_address5());
        }
        if(stepPicture.getSpic_address6()!=null){
            picAddList.add(stepPicture.getSpic_address6());
        }
        Steps steps=new Steps(descList,picAddList);
        Dish dish=new Dish(dishPart1,steps);
        return dish;
    }

    @GetMapping("/getPopular")
    @CrossOrigin
    public List<Popular> getPopular(){
        List<Popular> populars=foodMapper.getPopular();
        return populars;
    }

    @GetMapping("/getTopComment")
    @CrossOrigin
    public TopComment getTopComment(){
        TopComment topComment=foodMapper.getTopComment();
        return topComment;
    }


    @GetMapping("/getComments")
    @CrossOrigin
    public Comments getComments(){
        String name="Dry-fry green beans";
        int total=foodMapper.getTotalComments(name);
        ArrayList<Comment> commentArrayList=foodMapper.getComments(name);
        Comments comments=new Comments(total,commentArrayList);
        return comments;
    }
/*
    @RequestMapping("/getDish")
    public void getParam(@RequestParam(value = "name", required = false) String name){
        System.out.println(name);
    }
    */

}
