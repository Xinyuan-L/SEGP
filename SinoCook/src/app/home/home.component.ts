import { Component, OnInit } from '@angular/core';
import { Injectable } from '@angular/core';

import { RequestsService } from '../requests.service';
import { CommunicateService } from '../communicate.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})

@Injectable()
export class HomeComponent implements OnInit {
  public today: any = {
    name: 'yuxiang rousi',
    pic: 'assets/麻婆豆腐.jpeg',
    description: 'hhhhhhhhhhhhhhhhhhhhhhhh',
    steps: null,
    likes: 1234,
    views: 2345
  };
  public popDish: any = {
    dish1: {
      name: this.today.name,
      address: this.today.pic,
      likes: 9999,
      views: 9999
    },
    dish2: {
      name: this.today.name,
      address: this.today.pic,
      likes: 9999,
      views: 9999
    },
    dish3: {
      name: this.today.name,
      address: this.today.pic,
      likes: 9999,
      views: 9999
    }
  };
  public topComment: any = {
    nickname: 'nickname',
    detail: 'blablabla l lab lab lba lbaldb labdskl abdlab d kjabd djab labf ljbfb jafb la l lab lab lba lbaldb labdskl abdlab d kjabd djab labf ljbfb jafb la l lab lab lba lbaldb labdskl abdlab d kjabd djab labf ljbfb jafb l',
    pic: this.today.pic,
    dishName: this.today.name
  };

  constructor(private request: RequestsService,
              public comm: CommunicateService) {
  }

  ngOnInit(): void {
    this.getTodayFood();
    this.getPopular();
    this.getTopComment();
  }

  getTodayFood(): void {
    this.request.get('getTodayFood').subscribe((response: any) => {
      this.today.name = response.name;
      this.today.description = response.description;
      this.today.pic = response.address;
    });
  }
  getPopular(): void {
    this.request.get('getPopular').subscribe((response: Array<any>) => {
      this.popDish.dish1 = response[0];
      this.popDish.dish2 = response[1];
      this.popDish.dish3 = response[2];
    });
  }
  getTopComment(): void {
    this.request.get('getTopComment').subscribe((response: any) => {
      this.topComment.nickname = response.nickname;
      this.topComment.detail = response.details;
      this.topComment.pic = response.picAddress;
      this.topComment.dishName = response.dishname;
    });
  }
}
