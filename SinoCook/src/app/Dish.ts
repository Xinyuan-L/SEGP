export interface Dish {
    name: string;
    pic: string;
    description: string;
    steps: null | [string, string][];
    likes: number;
    views: number;
    time: number;
    taste: string;
    main: [string] | null;
    other: [string] | null;
  }
  