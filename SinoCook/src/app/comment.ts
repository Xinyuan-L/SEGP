import {Dish} from './dish';

export interface Comment {
  nickname: string;
  likes: number;
  detail: string;
  time: string;
  dish: Dish;
}

