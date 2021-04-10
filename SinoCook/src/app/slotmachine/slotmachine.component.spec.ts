import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SlotmachineComponent } from './slotmachine.component';

describe('SlotmachineComponent', () => {
  let component: SlotmachineComponent;
  let fixture: ComponentFixture<SlotmachineComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SlotmachineComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(SlotmachineComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
