package com.sinocook.controller;



import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.sinocook.mapper.FoodMapper;
import com.sinocook.pojo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
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
        int n=step.getSNumber();
        if(n>=1){
            comSteps.add(new ComStep(stepPicture.getSpic_address1(),step.getStep1()));
        }
        if(n>=2){
            comSteps.add(new ComStep(stepPicture.getSpic_address2(),step.getStep2()));
        }
        if(n>=3){
            comSteps.add(new ComStep(stepPicture.getSpic_address3(),step.getStep3()));
        }
        if(n>=4){
            comSteps.add(new ComStep(stepPicture.getSpic_address4(),step.getStep4()));
        }
        if(n>=5){
            comSteps.add(new ComStep(stepPicture.getSpic_address5(),step.getStep5()));
        }
        if(n>=6){
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
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("nickname",com.getNickname());
        map.put("likes",com.getLikes());
        map.put("detail",com.getDetail());
        String cTime=Long.toString(com.getTime());
        map.put("time",cTime);
        map.put("dish",com.getDish());
        String name=com.getDish();
        map.put("Did", foodMapper.getDid(name));
        int cid=foodMapper.getCid()+1;
        map.put("Cid",cid);
        foodMapper.postComments(map);
    }

    @GetMapping("/customize")
    @CrossOrigin
    public void getCustomize(){

    }

}
