import { Component, OnInit } from '@angular/core';
import { RequestsService } from '../requests.service';
import { CommunicateService } from '../communicate.service';

@Component({
  selector: 'app-slotmachine',
  templateUrl: './slotmachine.component.html',
  styleUrls: ['./slotmachine.component.css']
})
export class SlotmachineComponent implements OnInit {
  public initList: any[] = [
    {
      name: 'Mapo Tofu',
      address: 'assets/麻婆豆腐.jpeg'
    },
    {
      name: 'Yuxiang Pork',
      address: 'assets/鱼香肉丝.jpg'
    },
    {
      name: 'Braised Pork',
      address: 'assets/红烧肉.jpg'
    },
    {
      name: 'Toon scrambled eggs',
      address: 'assets/香椿炒鸡蛋.jpeg'
    },
    {
      name: 'Braised Fish Nuggets',
      address: 'assets/红烧鱼块.jpeg'
    }
  ];
  public list: any[] = [
    {
      name: 'Mapo Tofu',
      address: 'assets/麻婆豆腐.jpeg'
    },
    {
      name: 'Yuxiang Pork',
      address: 'assets/鱼香肉丝.jpg'
    },
    {
      name: 'Braised Pork',
      address: 'assets/红烧肉.jpg'
    },
    {
      name: 'Toon scrambled eggs',
      address: 'assets/香椿炒鸡蛋.jpeg'
    },
    {
      name: 'Braised Fish Nuggets',
      address: 'assets/红烧鱼块.jpeg'
    }
  ];
  public firstImagesList: any;
  public secondsImagesList: any;
  public thirdImagesList: any;
  // public checkWin:boolean=false;
  public finalDish: any;
  public window: any;
  public shadow: any;
  public index: number;
  public button: any;
  public disbutton: any;

  public stickPic = 'assets/stick.png';
  public stick = 1;
  constructor(public request: RequestsService,
              private comm: CommunicateService) {
    this.index = 4;
  }

  ngOnInit(): void {
    this.getCustomize();
    this.firstImagesList = (document.getElementsByClassName('images')[0] as HTMLImageElement);
    this.secondsImagesList = (document.getElementsByClassName('images')[1] as HTMLImageElement);
    this.thirdImagesList = (document.getElementsByClassName('images')[2] as HTMLImageElement);
    this.window = (document.getElementsByClassName('window')[0] as HTMLImageElement);
    this.shadow = (document.getElementsByClassName('shadow')[0] as HTMLImageElement);
    this.button = (document.getElementById('button')as HTMLImageElement);
    this.disbutton = (document.getElementById('disabled-button')as HTMLImageElement);
    this.finalDish = this.list[4];
    this.longList();

    const imageHeight = 156;
    const listHeight = this.firstImagesList.scrollHeight;
    const startTranslateYHeight = listHeight - 99 * imageHeight - 1;
    this.initPosition(startTranslateYHeight);
  }
  getCustomize(): void {
    // 获取问卷页面的表单信息；
    this.comm.getMessage().subscribe((msg: any) => {
      // 将表单发给后端，获取响应；
      this.request.post('/customize', msg).subscribe((response: any) => {
        this.initList = response;
      });
    });
  }
  reserve(): void {
    this.stick = -this.stick;
    if (this.stick > 0){
      this.stickPic = 'assets/stick.png';
    }else {
      this.stickPic = 'assets/stick-down.png';
    }
  }

  initPosition(startTranslateYHeight: number): void {
    this.firstImagesList.style.transform = `translateY(${startTranslateYHeight}px)`;
    this.secondsImagesList.style.transform = `translateY(${startTranslateYHeight}px)`;
    this.thirdImagesList.style.transform = `translateY(${startTranslateYHeight}px)`;
 }

  start(resultNum: number): void {
  let isEnd = false;
  let random: number;
  const imageHeight = 156;
  this.reserve();
  this.button.style.display = 'none';
  this.disbutton.style.display = 'block';
  this.addTranstion();
  do{
    random = Math.floor(Math.random() * resultNum);
  }while (this.index === random);
  // let radom1 = Math.floor(Math.random()*resultNum);
  // let radom2 = Math.floor(Math.random()*resultNum);
  this.finalDish = this.list[random];
  this.index = random;
  this.firstImagesList.style.transform = `translateY(${-imageHeight * random}px)`;
  setTimeout(() => {
    this.secondsImagesList.style.transform = `translateY(${-imageHeight * random}px)`;
  }, 500);
  setTimeout(() => {
    this.thirdImagesList.style.transform = `translateY(${-imageHeight * random}px)`;
    isEnd = true;
  }, 1000);
  setTimeout(() => {
    if (isEnd){
      this.openWindow();
    }
  }, 3000);
}

  addTranstion(): void {
  this.firstImagesList.classList.add('transtion');
  this.secondsImagesList.classList.add('transtion');
  this.thirdImagesList.classList.add('transtion');
}

  removeTranstion(): void {
  this.firstImagesList.classList.remove('transtion');
  this.secondsImagesList.classList.remove('transtion');
  this.thirdImagesList.classList.remove('transtion');
}

  openWindow(): void {
  this.window.style.display = 'block';
  this.shadow.style.display = 'block';
}

  closeWindow(): void {
  this.window.style.display = 'none';
  this.shadow.style.display = 'none';
  this.reserve();
  this.button.style.display = 'block';
  this.disbutton.style.display = 'none';
}

  jumpToDish(): void {
    this.comm.sendMessage(this.finalDish.name);
    window.location.href = '/dish';
}

  longList(): void {
    let i = 0;
    do{
      this.list = this.list.concat(this.initList);
      i++;
    }while ( i < 20);
  }
}
