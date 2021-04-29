import { Component, OnInit, AfterViewInit } from '@angular/core';
import { CommunicateService } from '../communicate.service';
import {iterator} from 'rxjs/internal-compatibility';

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
    q3: false,
    q4: {
      option1: false,
      option2: false,
      option3: false,
      option4: false,
    }
  };

  constructor(private comm: CommunicateService) { }

  ngOnInit(): void {
  }

  ngAfterViewInit(): void {
  }

  doSubmit(): void {
    const check1 = (document.getElementById('prompt1') as HTMLElement);
    const check3 = (document.getElementById('prompt3') as HTMLElement);
    const check4 = (document.getElementById('prompt4') as HTMLElement);

    if (!(this.isChecked1() && this.isChecked3() && this.isChecked4())){
      if (!this.isChecked1()){
        check1.style.display = 'block';
      }else{
        check1.style.display = 'none';
      }
      if (!this.isChecked3()){
        check3.style.display = 'block';
      }else{
        check3.style.display = 'none';
      }
      if (!this.isChecked4()){
        check4.style.display = 'block';
      }else{
        check4.style.display = 'none';
      }
    }else{
      console.log(this.data);
      this.comm.sendMessage(this.data);
      window.location.href = '/slot';
    }
  }

  toChange1(event: any): void {
    event.target.id === 'q1_1' ? this.data.q1 = true : this.data.q1 = false;
  }

  toChange3(event: any): void {
    event.target.id === 'q3_1' ? this.data.q3 = true : this.data.q3 = false;
  }
  setValue(o: number): void {
    switch (o) {
      case 1:
        const q21 = document.getElementById('q2_1') as HTMLInputElement;
        if (q21.checked) {
          this.data.q2.option1 = true;
        }
        break;
      case 2:
        const q22 = document.getElementById('q2_2') as HTMLInputElement;
        if (q22.checked) {
          this.data.q2.option2 = true;
        }
        break;
      case 3:
        const q23 = document.getElementById('q2_3') as HTMLInputElement;
        if (q23.checked) {
          this.data.q2.option3 = true;
        }
        break;
    }
    const q24 = document.getElementById('q2_4') as HTMLInputElement;
    q24.checked = false;
    this.data.q2.option4 = false;
  }
  noRestrict(): void {
    console.log('ok');
    const q24 = document.getElementById('q2_4') as HTMLInputElement;
    if (q24.checked) {
      const rs = document.getElementsByName('restrict');
      for (const r of rs) {
        (r as HTMLInputElement).checked = false;
      }
    }
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
  isChecked1(): boolean{
    const checked1 = (document.getElementById('q1_1') as HTMLInputElement);
    const checked2 = (document.getElementById('q1_2') as HTMLInputElement);
    return checked1.checked || checked2.checked;
  }

  isChecked3(): boolean{
    const checked1 = (document.getElementById('q3_1') as HTMLInputElement);
    const checked2 = (document.getElementById('q3_2') as HTMLInputElement);
    return checked1.checked || checked2.checked;
  }

  isChecked4(): boolean{
    const checked1 = (document.getElementById('q4_1') as HTMLInputElement);
    const checked2 = (document.getElementById('q4_2') as HTMLInputElement);
    const checked3 = (document.getElementById('q4_3') as HTMLInputElement);
    const checked4 = (document.getElementById('q4_4') as HTMLInputElement);
    return checked1.checked || checked2.checked || checked3.checked || checked4.checked;
  }

}
