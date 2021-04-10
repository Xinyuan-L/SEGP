import { Component } from '@angular/core';
import { Dish } from './dish';
import { Comment } from './comment';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent{
  title = 'SinoCook';
}
