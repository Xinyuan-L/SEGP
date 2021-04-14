import { Step } from './Step';

export interface Dish {
    name: string;
    pic: string;
    description: string;
    steps: null | Array<Step>;
    likes: number;
    views: number;
    time: number;
    taste: string;
    main: Array<string> | null;
    other: Array<string> | null;
  }


