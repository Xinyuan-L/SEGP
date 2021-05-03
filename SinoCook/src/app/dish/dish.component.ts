import { Component, OnInit, ChangeDetectorRef, OnDestroy } from '@angular/core';
import { Injectable } from '@angular/core';
import { Comment } from '../Comment';
import { Step } from '../Step';
import { Dish } from '../Dish';
import { HttpClient } from '@angular/common/http';
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
  public mater: any[] = ['asddas', 'asddasdd', 'asdasdasdasdasd', 'd4as6d5', 'asdasd', 'asdcvsd'
  ];
  public dish: any = {
    id: 0,
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
    details: '',
    likes: 0,
    id: 0
  };
  now: number = new Date().getTime() as unknown as number;
  public comments: Array<Comment> = [
    {
      nickname: 'yiyuan',
      details: 'i like it!',
      likes: 0,
      time: this.now,
      id: 11
    },
    {
      nickname: 'jiamin',
      details: 'i love it!',
      likes: 2,
      time: this.now,
      id: 12
    }
  ];
  public req: any;
  constructor(public comm: CommunicateService,
              private request: RequestsService,
              private http: HttpClient,
              private cdr: ChangeDetectorRef) { }

  ngOnInit(): void {
    this.getInfo();
    console.log('views:' + this.dish.views);
    this.dish.views += 1;
    setTimeout(() => {
      this.req = this.request.get('addViews',
        {Did: this.dish.id});
    }, 100);
  }

  getInfo(): void {
    this.comm.getMessage().subscribe((msg: any) => {
      console.log('dish:' + msg);
      // msg = msg.trim();
      const data: any = {name: msg};
      this.request.get('getDish', data).subscribe((response: any) => {
        this.dish.id = response.id;
        console.log('id:' + response.id);
        console.log('Did:' + this.dish.id);
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
      });
      // data = {Did: `${this.dishID}`};
      // console.log(data);
      // this.request.get('/getComments', data).subscribe((response: any) => {
      //   this.comments = response;
      // });
    });
    setTimeout(() => {
      this.getComments();
    }, 100);
  }
  getComments(): void {
    const did = this.dish.id;
    const data = {Did: did};
    console.log(data);
    this.request.get('getComments', data).subscribe((response: any) => {
      this.comments = response.comments;
      console.log(this.comments);
    });
  }
  addDishLike(): void {
    this.dish.likes += 1;
    this.dishLike = true;
    this.request.get('/addDishLike', {Did: this.dish.id});
  }
  cancelDishLike(): void {
    this.dish.likes -= 1;
    this.dishLike = false;
    this.request.get('/reduceDishLike', {Did: this.dish.id});
  }
  addLike(comment: Comment): void {
    comment.likes += 1;
    this.request.get('/addComLike', {time: comment.time});
  }
  cancelLike(comment: Comment): void {
    comment.likes -= 1;
    this.request.get('/reduceComLike', {time: comment.time});
  }
  toggleLike(comment: Comment, event: Event): void {
    if (event.target !== null) {
      const pic = event.target as HTMLImageElement;
      console.log(pic);
      if (pic.alt === 'dislike') {
        pic.src = 'assets/like.svg';
        pic.alt = 'like';
        this.addLike(comment);
        console.log('love this comment');
      }else {
        pic.src = 'assets/dislike.svg';
        pic.alt = 'dislike';
        this.cancelLike(comment);
        console.log('cancel love of this comment');
      }
    }
  }
  updateTime(comment: Comment ): Comment {
    comment.time = new Date().getTime() as unknown as number;
    return comment;
  }
  isValidComment(detail: any): boolean {
    let c: any;
    for (c in detail) {
      if (c !== ' ') {
        return false;
      }
    }
    return true;
  }
  postComment(): void {
    console.log('posting');
    if (this.newComment.nickname === '') {
      alert('Your nickname can\'t be empty.');
    } else if (this.newComment.details === '' &&
      !this.isValidComment(this.newComment.details)) {
      alert('Your comment is not valid.');
    } else {
      const newCom = this.updateTime(this.newComment);
      const data = {
        dish: this.dish.name,
        nickname: newCom.nickname,
        time: newCom.time,
        details: newCom.details,
        likes: newCom.likes,
      };
      console.log(data);
      // this.comments = this.comments.concat(newCom);
      // this.newComment.nickname = '';
      // this.newComment.detail = '';
      this.request.post('postComments', data).subscribe((response: number) => {
        newCom.id = response;
        this.comments = this.comments.concat(newCom);
        console.log(newCom);
        console.log(this.comments);
      });
      this.newInput();
    }
  }

  newInput(): void {
    // create a new Comment class for input;
    this.newComment = {
      nickname: '',
      likes: 0,
      details: '',
      time: 0,
      id: 0
    };
  }
}

