import { Component, OnInit } from '@angular/core';
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, throwError } from 'rxjs';
import { catchError, retry } from 'rxjs/operators';
import { Dish } from '../Dish';
import { Comment } from "../Comment";


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})

@Injectable()
export class HomeComponent implements OnInit {
  public today: any ={
    name: 'yuxiang rousi',
    pic: 'assets/麻婆豆腐.jpeg',
    description: 'hhhhhhhhhhhhhhhhhhhhhhhh',
    steps: null,
    likes: 1234,
    views: 2345
  }

  public topComment: any ={
    nickname: 'nickname',
    detail: 'blablabla l lab lab lba lbaldb labdskl abdlab d kjabd djab labf ljbfb jafb la l lab lab lba lbaldb labdskl abdlab d kjabd djab labf ljbfb jafb la l lab lab lba lbaldb labdskl abdlab d kjabd djab labf ljbfb jafb l',
    pic: this.today.pic,
    dishName: this.today.name
  }

  constructor(private http: HttpClient) { 
  }

  ngOnInit(): void {
    // this.getTodayFood();
    // this.getTopComment();
  }

  imgReplace(){
    return 'url('+this.today.pic+')';
  }

  // getTodayFood(){
  //   let api = "http://localhost:9090/getTodayFood";
  //   this.http.get(api).subscribe((response:any)=>{
  //     this.today.name = response.name;
  //     this.today.description = response.description;
  //     this.today.pic = response.address;
  //   })
  // }

  // getTopComment(){
  //   let api = "http://localhost:9090/getTopComment";
  //   this.http.get(api).subscribe((response: any)=>{
  //     this.topComment.nickname = response.nickname;
  //     this.topComment.detail = response.details;
  //     this.topComment.pic = response.picAddress;
  //     this.topComment.dishName = response.dishname;
  //   })
  // }
}
