import { Component, OnInit, AfterViewInit } from '@angular/core';
import { CommunicateService } from '../communicate.service';

@Component({
  selector: 'app-customize',
  templateUrl: './customize.component.html',
  styleUrls: ['./customize.component.css'],
})
export class CustomizeComponent implements OnInit, AfterViewInit {

  public data: any = {
    q1: false,
    q2: {
      option1: false,
      option2: false,
      option3: false,
      option4: false,
    },
    q3: true,
    q4: {
      option1: false,
      option2: false,
      option3: false,
      option4: true,
    }
  };

  constructor(private comm: CommunicateService) { }

  ngOnInit(): void {
  }

  ngAfterViewInit(): void {
  }

  doSubmit(): void {
    console.log(this.data);
    this.comm.sendMessage(this.data);
    // const httpOptions = {headers : new HttpHeaders({'Content-Type' : 'application | json'})};
    //
    // let api = "http://localhost:9090/customize";
    // this.http.post(api,this.data,httpOptions).subscribe((response) =>{
    //   console.log(response);
    // });
  }

  toChange1(event: any): void {
    event.target.id === 'q1_1' ? this.data.q1 = true : this.data.q1 = false;
  }

  toChange3(event: any): void {
    event.target.id === 'q3_1' ? this.data.q3 = true : this.data.q3 = false;
  }

  toggleCheckbox(event: any): void {
    switch (event.target.id){
      case 'q4_1':
        this.data.q4.option1 = true;
        this.data.q4.option2 = false;
        this.data.q4.option3 = false;
        this.data.q4.option4 = false;
        break;
      case 'q4_2':
        this.data.q4.option1 = false;
        this.data.q4.option2 = true;
        this.data.q4.option3 = false;
        this.data.q4.option4 = false;
        break;
      case 'q4_3':
        this.data.q4.option1 = false;
        this.data.q4.option2 = false;
        this.data.q4.option3 = true;
        this.data.q4.option4 = false;
        break;
      case 'q4_4':
        this.data.q4.option1 = false;
        this.data.q4.option2 = false;
        this.data.q4.option3 = false;
        this.data.q4.option4 = true;
        break;
    }
  }

}
