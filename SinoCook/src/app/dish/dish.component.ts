import { Component, OnInit } from '@angular/core';
import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Dish } from '../Dish';

@Component({
  selector: 'app-dish',
  templateUrl: './dish.component.html',
  styleUrls: ['./dish.component.css']
})

@Injectable()
export class DishComponent implements OnInit {
  public dish: Dish ={
    name: '',
    pic: '',
    description: '',
    taste: 'spicy',
    likes: 0,
    views: 0,
    time: 10,
    steps: null,
    main: null,
    other: null
  }
  constructor(public http: HttpClient) { }

  ngOnInit(): void {
  }

  addLike(){
    const httpOptions = {headers: new HttpHeaders({'Content-Type': 'application/json'})};
    let api='';
    this.http.post(api, {likes: this.dish.likes+1}, httpOptions).subscribe();
  }
}
