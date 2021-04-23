import {Component, OnInit} from '@angular/core';

@Component({
  selector: 'app-slotmachine',
  templateUrl: './slotmachine.component.html',
  styleUrls: ['./slotmachine.component.css']
})
export class SlotmachineComponent implements OnInit {
  public initList: any[] = [
    {
      name: 'dish1',
      address: '/dish'
    },
    {
      name: 'dish2',
      address: '/dish'
    },
    {
      name: 'dish3',
      address: '/dish'
    },
    {
      name: 'dish4',
      address: '/dish'
    },
    {
      name: 'dish5',
      address: '/dish'
    }
  ];
  public list: any[] = [
    {
      name: 'dish1',
      address: '/dish'
    },
    {
      name: 'dish2',
      address: '/dish'
    },
    {
      name: 'dish3',
      address: '/dish'
    },
    {
      name: 'dish4',
      address: '/dish'
    },
    {
      name: 'dish5',
      address: '/dish'
    }
  ];

  public firstImagesList:any;
  public secondsImagesList:any;
  public thirdImagesList:any;
  // public checkWin:boolean=false;

  public finalDish:any;

  public window:any;
  public shadow:any;
  public index:number;

  constructor() {
    this.index=4;
  }

  ngOnInit(): void {
    this.firstImagesList = <HTMLImageElement>document.getElementsByClassName('images')[0];
    this.secondsImagesList = <HTMLImageElement>document.getElementsByClassName('images')[1];
    this.thirdImagesList = <HTMLImageElement>document.getElementsByClassName('images')[2];
    this.window = <HTMLImageElement>document.getElementsByClassName('window')[0];
    this.shadow = <HTMLImageElement>document.getElementsByClassName('shadow')[0];
    this.finalDish=this.list[4];
    this.longList();

    const imageHeight = 156;
    const listHeight = this.firstImagesList.scrollHeight;
    const startTranslateYHeight = listHeight - 99*imageHeight-1;
    
    this.initPosition(startTranslateYHeight);
  }
  
  initPosition(startTranslateYHeight: number) {
    this.firstImagesList.style.transform = `translateY(${startTranslateYHeight}px)`;
    this.secondsImagesList.style.transform = `translateY(${startTranslateYHeight}px)`;
    this.thirdImagesList.style.transform = `translateY(${startTranslateYHeight}px)`;
 }

 start(resultNum:number) {
  let timeout1;
  let timeout2;
  let timeout3;

  let isEnd = false;

  let random: number;

  const imageHeight=156;
  this.addTranstion();
  do{
    random = Math.floor(Math.random()*resultNum);
  }while(this.index==random)
  // let radom1 = Math.floor(Math.random()*resultNum);
  // let radom2 = Math.floor(Math.random()*resultNum);

  this.finalDish=this.list[random];
  this.index=random;
  this.firstImagesList.style.transform = `translateY(${-imageHeight * random}px)`;
  timeout1 = setTimeout(() => {
    this.secondsImagesList.style.transform = `translateY(${-imageHeight * random}px)`;
  },500)
  timeout2 = setTimeout(() => {
    this.thirdImagesList.style.transform = `translateY(${-imageHeight * random}px)`;
    isEnd = true;
  },1000)
  
  timeout3 = setTimeout(() => {
    if(isEnd){
      this.openWindow();
    }
  },3000)

}

addTranstion() {
  this.firstImagesList.classList.add('transtion');
  this.secondsImagesList.classList.add('transtion');
  this.thirdImagesList.classList.add('transtion');
}

removeTranstion() {
  this.firstImagesList.classList.remove('transtion');
  this.secondsImagesList.classList.remove('transtion');
  this.thirdImagesList.classList.remove('transtion');
}

openWindow(){
  this.window.style.display="block";
  this.shadow.style.display="block";
}

closeWindow(){
  this.window.style.display="none";
  this.shadow.style.display="none";
}

jumpToDish(){
  window.location.href=this.finalDish.address;
}

longList(){
  let i = 0;
  do{
    this.list = this.list.concat(this.initList);
    i++;
  }while(i<20)
}
}
