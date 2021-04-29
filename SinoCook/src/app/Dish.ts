import { Step } from './Step';

export interface Dish {
    name: string;
    pic: string;
    description: string;
    steps: null | Array<any>;
    likes: number;
    views: number;
    time: number;
    taste: string;
    main: Array<any> | null;
    other: Array<any> | null;
  }


