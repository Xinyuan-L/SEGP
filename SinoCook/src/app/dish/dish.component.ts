import { Component, OnInit } from '@angular/core';
import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Comment } from '../Comment';
import { Step } from '../Step';
import { Dish } from '../Dish';

@Component({
  selector: 'app-dish',
  templateUrl: './dish.component.html',
  styleUrls: ['./dish.component.css']
})

@Injectable()
export class DishComponent implements OnInit {
  public dish: Dish = {
    name: 'mapo tofu',
    pic: 'assets/麻婆豆腐.jpeg',
    description: 'sichuan food',
    taste: 'spicy',
    likes: 230,
    views: 120,
    time: 10,
    steps: null,
    main: null,
    other: null
  };
  public newComment: Comment = {
    nickname: '',
    time: 0,
    detail: '',
    likes: 0,
    dish: this.dish.name
  };
  public steps: Step[] = [
    {pic: 'assets/麻婆豆腐.jpeg', detail: 'asdkljn n a dnas dnadkj ajk dkasb dka dnasnd adkj ajd jas djk.'},
    {pic: 'assets/麻婆豆腐.jpeg', detail: 'asdkljn n a dnas dnadkj ajk dkasb dka dnasnd adkj ajd jas djk.'},
    {pic: 'assets/麻婆豆腐.jpeg', detail: 'asdkljn n a dnas dnadkj ajk dkasb dka dnasnd adkj ajd jas djk.'}
  ];
  public mater: any[] = [
    'asddas',
    'asddasdd',
    'asdasdasdasdasd',
    'd4as6d5',
    'asdasd',
    'asdcvsd'
  ];
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
  constructor(public http: HttpClient) { }

  ngOnInit(): void {
  }


  addLike(): void {
    // const httpOptions = {headers: new HttpHeaders({'Content-Type': 'application/json'})};
    // const api = '';
    // this.http.post(api, {likes: this.dish.likes + 1}, httpOptions).subscribe();
  }

  uploadComment(): void {
    // const httpOptions = {headers: new HttpHeaders({'Content-Type': 'application/json'})};
    // const api = 'http://localhost:9090/updateComment';
    // const now: Date = new Date();
    // this.newComment.time = now.getTime as unknown as number;
    // this.http.post(api, this.newComment, httpOptions).subscribe();
  }


}

