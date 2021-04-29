package com.sinocook.controller;



import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
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


    @GetMapping("/getDish")
    @CrossOrigin
    public Dish getDish(@RequestParam(value = "name", required = false) String name){
        DishPart1 dishPart1=foodMapper.getDishPart1(name);
        ArrayList<ComStep> comSteps=new ArrayList<>();
        Step step=foodMapper.getStep(name);
        StepPicture stepPicture=foodMapper.getStepPicture(name);
        if(step.getStep1()!=null){
            comSteps.add(new ComStep(stepPicture.getSpic_address1(),step.getStep1()));
        }
        if(step.getStep2()!=null){
            comSteps.add(new ComStep(stepPicture.getSpic_address2(),step.getStep2()));
        }
        if(step.getStep3()!=null){
            comSteps.add(new ComStep(stepPicture.getSpic_address3(),step.getStep3()));
        }
        if(step.getStep4()!=null){
            comSteps.add(new ComStep(stepPicture.getSpic_address4(),step.getStep4()));
        }
        if(step.getStep5()!=null){
            comSteps.add(new ComStep(stepPicture.getSpic_address5(),step.getStep5()));
        }
        if(step.getStep6()!=null){
            comSteps.add(new ComStep(stepPicture.getSpic_address6(),step.getStep6()));
        }
        Dish dish=new Dish(dishPart1,comSteps);
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


    @GetMapping("/addDishLike")
    @CrossOrigin
    public void addDishLike(@RequestParam(value = "Did", required = false) int id){
        foodMapper.addDishLike(id);
    }

    @GetMapping("/reduceDishLike")
    @CrossOrigin
    public void reduceDishLike(@RequestParam(value = "Did", required = false) int id){
        foodMapper.reduceDishLike(id);
    }

    @GetMapping("/addViews")
    @CrossOrigin
    public void addViews(@RequestParam(value = "Did", required = false) int id){
        foodMapper.addViews(id);
    }

    @GetMapping("/addComLike")
    @CrossOrigin
    public void addComLike(@RequestParam(value = "time", required = false) long time){
        String ctime=time+"";
        foodMapper.addComLike(ctime);
    }

    @GetMapping("/reduceComLike")
    @CrossOrigin
    public void reduceComLike(@RequestParam(value = "time", required = false) long time){
        String ctime=time+"";
        foodMapper.reduceComLike(ctime);
    }

    @PostMapping("/postComments")
    @CrossOrigin
    @ResponseBody
    public void postComments(@RequestBody JSONObject s){
        Com com = (Com)JSONObject.toJavaObject(s,Com.class);

    }

}
