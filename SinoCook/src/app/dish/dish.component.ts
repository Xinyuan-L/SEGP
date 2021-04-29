import { Component, OnInit } from '@angular/core';
import { Injectable } from '@angular/core';
import { Comment } from '../Comment';
import { Step } from '../Step';
import { Dish } from '../Dish';
import {HttpClient, HttpHeaders} from '@angular/common/http';
import {HttpParams} from '@angular/common/http';
import { CommunicateService } from '../communicate.service';
import { RequestsService } from '../requests.service';

@Component({
  selector: 'app-dish',
  templateUrl: './dish.component.html',
  styleUrls: ['./dish.component.css']
})

@Injectable()
export class DishComponent implements OnInit {
  public steps: any[] = [
    {picture: 'assets/麻婆豆腐.jpeg', detail: 'asdkljn n a dnas dnadkj ajk dkasb dka dnasnd adkj ajd jas djk.'},
    {picture: 'assets/麻婆豆腐.jpeg', detail: 'asdkljn n a dnas dnadkj ajk dkasb dka dnasnd adkj ajd jas djk.'},
    {picture: 'assets/麻婆豆腐.jpeg', detail: 'asdkljn n a dnas dnadkj ajk dkasb dka dnasnd adkj ajd jas djk.'}
  ];
  public mater: any[] = [
    'asddas',
    'asddasdd',
    'asdasdasdasdasd',
    'd4as6d5',
    'asdasd',
    'asdcvsd'
  ];
  private dishID: number | undefined;
  public dish: Dish = {
    name: 'mapo tofu',
    pic: 'assets/麻婆豆腐.jpeg',
    description: 'sichuan food',
    taste: 'spicy',
    likes: 230,
    views: 120,
    time: 10,
    steps: this.steps,
    main: this.mater,
    other: this.mater
  };
  public dishLike = false;
  public newComment: Comment = {
    nickname: '',
    time: 0,
    detail: '',
    likes: 0,
    dish: this.dish.name
  };
  now: number = new Date().getTime() as unknown as number;
  public comments: Comment[] = [
    {
      nickname: 'yiyuan',
      detail: 'i like it!',
      likes: 0,
      time: this.now,
      dish: this.dish.name
    },
    {
      nickname: 'jiamin',
      detail: 'i love it!',
      likes: 2,
      time: this.now,
      dish: this.dish.name
    }
  ];
  constructor(public comm: CommunicateService,
              private request: RequestsService,
              private http: HttpClient) { }

  ngOnInit(): void {
    this.getInfo();
    this.dish.views += 1;
    this.request.put('addViews',
      {Did: this.dishID, views: this.dish.views});
  }

  getInfo(): void {
    this.comm.getMessage().subscribe((msg: any) => {
      console.log(msg);
      msg = msg.trim();
      let data: any = {name: msg};
      this.request.get('getDish', data).subscribe((response: any) => {
        this.dishID = response.id;
        this.dish.name = msg;
        this.dish.pic = response.address;
        this.dish.description = response.description;
        this.dish.taste = response.taste;
        this.dish.likes = response.likes;
        this.dish.views = response.views;
        this.dish.time = response.time;
        this.dish.steps = response.steps;
        this.dish.main = response.main;
        this.dish.other = response.other;
        // console.log(this.dish.steps);
        // console.log(this.dish.main);
        // console.log(this.dish.other);
      });
      data = {Did: `${this.dishID}`};
      this.request.get('/getComments', data).subscribe((response: any) => {
        this.comments = response;
      });
    });
  }
  addDishLike(): void {
    this.dish.likes += 1;
    this.dishLike = true;
    this.request.put('/addDishLike', {Did: this.dishID});
  }
  cancelDishLike(): void {
    this.dish.likes -= 1;
    this.dishLike = false;
    this.request.put('/addDishLike', {Did: this.dishID});
  }
  addLike(comment: Comment): void {
    comment.likes += 1;
    this.request.put('/addLike', {time: comment.time});
  }
  cancelLike(comment: Comment): void {
    comment.likes -= 1;
    this.request.put('/cancelLike', {time: comment.time});
  }
  updateTime(comment: Comment): Comment {
    comment.time = new Date().getTime() as unknown as number;
    comment.detail = comment.detail.trim();
    return comment;
  }
  isValidComment(detail: any): boolean {
    detail = detail.trim();
    return detail !== '';
    // let char: any;
    // for (char in detail){
    //   if (char !== ' '){
    //     return true;
    //   }
    // }
    // return false;
  }
  postComment(): void {
    console.log('posting');
    if (this.newComment.nickname === '') {
      alert('Your nickname can\'t be empty.');
    } else if (this.newComment.detail === '' &&
      !this.isValidComment(this.newComment.detail)) {
      alert('Your comment is not valid.');
    } else {
      const newCom = this.updateTime(this.newComment);
      this.request.post('postComments', newCom).subscribe(() => {
        this.comments.concat(newCom);
        this.newComment.nickname = '';
        this.newComment.detail = '';
      });
      // const api = 'http://localhost:9090/postComments';
      // const options = {headers: new HttpHeaders({'Content-Type': 'application/json'})};
      // this.http.post(api, JSON.stringify(this.newComment), options).subscribe((res: any) => {
      //   console.log('ok');
      // });
      // this.request.post('/postComments', this.updateTime(this.newComment));
    }
  }


}

