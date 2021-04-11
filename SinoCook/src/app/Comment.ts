import {Dish} from './Dish';

export interface Comment {
  nickname: string;
  likes: number;
  detail: string;
  time: string;
  dish: Dish | null;
}

