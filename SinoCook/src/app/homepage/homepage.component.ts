import { Component, OnInit } from '@angular/core';
import {Dish} from '../dish';
import {Comment} from '../comment';

@Component({
  selector: 'app-homepage',
  templateUrl: './homepage.component.html',
  styleUrls: ['./homepage.component.css']
})
export class HomepageComponent implements OnInit {
  today: Dish = {
    name: 'mapo tofu',
    pic: '"assets/麻婆豆腐.jpeg"',
    description: 'One of the traditional famous dishes in Sichuan Province.',
    steps: null,
    likes: 7777,
    views: 6666
  };
  today2: Dish = {
    name: 'yuxiang shredded pork',
    pic: '"assets/麻婆豆腐.jpeg"',
    description: 'One of the traditional famous dishes in Sichuan Province.',
    steps: null,
    likes: 7777,
    views: 6666
  };
  top: Comment = {
    nickname: 'John Smith',
    likes: 456,
    detail: 'blablabal balbalbala bllablal balbal bal balbl abla bla blab lab blabla balbalbalbalabllablalbalbalbalbalblablablablablab.',
    time: '2021-04-03',
    dish: this.today2
  };
  constructor() { }

  ngOnInit(): void {
  }
  imgReplace(): string {
    return `url(${this.today.pic})`;
  }
}
