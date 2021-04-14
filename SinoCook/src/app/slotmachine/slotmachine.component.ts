import { Component, OnInit } from '@angular/core';
import {Step} from '../Step';

@Component({
  selector: 'app-slotmachine',
  templateUrl: './slotmachine.component.html',
  styleUrls: ['./slotmachine.component.css']
})
export class SlotmachineComponent implements OnInit {
  public steps: Step[] = [
    {pic: 'assets/麻婆豆腐.jpeg', detail: 'asdkljn n a dnas dnadkj ajk dkasb dka dnasnd adkj ajd jas djk.'},
    {pic: 'assets/麻婆豆腐.jpeg', detail: 'asdkljn n a dnas dnadkj ajk dkasb dka dnasnd adkj ajd jas djk.'},
    {pic: 'assets/麻婆豆腐.jpeg', detail: 'asdkljn n a dnas dnadkj ajk dkasb dka dnasnd adkj ajd jas djk.'}
  ];
  constructor() { }

  ngOnInit(): void {
  }

}
