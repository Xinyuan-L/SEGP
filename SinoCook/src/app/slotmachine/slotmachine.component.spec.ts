import { HttpClient, HttpClientModule } from '@angular/common/http';
import { ComponentFixture, TestBed } from '@angular/core/testing';
import { CommunicateService } from '../communicate.service';
import { RequestsService } from '../requests.service';

import { SlotmachineComponent } from './slotmachine.component';


describe('SlotmachineComponent', () => {
  let component: SlotmachineComponent;
  let fixture: ComponentFixture<SlotmachineComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SlotmachineComponent ],
      imports: [HttpClientModule]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(SlotmachineComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    // const request: RequestsService = new RequestsService();
    const comm: CommunicateService = new CommunicateService();
    expect(comm).toBeTruthy();
    expect(component).toBeTruthy();
  });
});
