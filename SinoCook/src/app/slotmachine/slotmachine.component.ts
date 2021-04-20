import {Component, OnInit, ViewChild} from '@angular/core';

@Component({
  selector: 'app-slotmachine',
  templateUrl: './slotmachine.component.html',
  styleUrls: ['./slotmachine.component.css']
})
export class SlotmachineComponent implements OnInit {
  public start = 1;
  public list: any[] = [
    {
      name: 'dish1',
      address: ''
    },
    {
      name: 'dish2',
      address: ''
    },
    {
      name: 'dish3',
      address: ''
    },
    {
      name: 'dish4',
      address: ''
    },
    {
      name: 'dish5',
      address: ''
    }
  ];
  @ViewChild('')
  list1 = document.getElementById('list1');
  list2 = document.getElementById('list2');
  list3 = document.getElementById('list3');
  constructor() { }

  ngOnInit(): void {
  }

  reverse(): void{
    this.start = -this.start;
  }
}
