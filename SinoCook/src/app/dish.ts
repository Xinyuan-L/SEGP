export interface Dish {
  name: string;
  pic: string;
  description: string;
  steps: null | [string, string][];
  likes: number;
  views: number;
}


