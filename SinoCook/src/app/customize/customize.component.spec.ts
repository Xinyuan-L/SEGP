import { DebugElement } from '@angular/core';
import { ComponentFixture, TestBed } from '@angular/core/testing';
import { By } from '@angular/platform-browser';

import { CustomizeComponent } from './customize.component';

describe('CustomizeComponent', () => {
  let component: CustomizeComponent;
  let fixture: ComponentFixture<CustomizeComponent>;
  let de: DebugElement;
  let el: HTMLElement;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CustomizeComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(CustomizeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });

  it('should show option required', () => {
    de = fixture.debugElement;
    // check q1
    el = de.nativeElement.querySelector('#q1_1');
    expect(component.isChecked1()).toBeFalse();
    el.click();
    expect(component.isChecked1()).toBeTrue();
    // check q3
    el = de.nativeElement.querySelector('#q3_1');
    expect(component.isChecked3()).toBeFalse();
    el.click();
    expect(component.isChecked3()).toBeTrue();
    // check q4
    el = de.nativeElement.querySelector('#q4_1');
    expect(component.isChecked4()).toBeFalse();
    el.click();
    expect(component.isChecked4()).toBeTrue();
  });

  it('should get correct data ', () => {
    de = fixture.debugElement;
    el = de.nativeElement.querySelector('#q1_1');
    el.click();
    expect(component.data.q1).toBeTrue();
    el = de.nativeElement.querySelector('#q1_2');
    el.click();
    expect(component.data.q1).toBeFalse();

    el = de.nativeElement.querySelector('#q2_1');
    el.click();
    el = de.nativeElement.querySelector('#q2_2');
    el.click();
    el = de.nativeElement.querySelector('#q2_3');
    el.click();
    el = de.nativeElement.querySelector('#q2_4');
    el.click();
    expect(component.data.q2.option1).toBeTrue();
    expect(component.data.q2.option2).toBeTrue();
    expect(component.data.q2.option3).toBeTrue();
    expect(component.data.q2.option4).toBeTrue();

    el = de.nativeElement.querySelector('#q3_1');
    el.click();
    expect(component.data.q3).toBeTrue();
    el = de.nativeElement.querySelector('#q3_2');
    el.click();
    expect(component.data.q3).toBeFalse();

    el = de.nativeElement.querySelector('#q4_1');
    el.click();
    expect(component.data.q4.option1).toBeTrue();
    expect(component.data.q4.option2).toBeFalse();
    expect(component.data.q4.option3).toBeFalse();
    expect(component.data.q4.option4).toBeFalse();
    el = de.nativeElement.querySelector('#q4_2');
    el.click();
    expect(component.data.q4.option1).toBeFalse;
    expect(component.data.q4.option2).toBeTrue();
    expect(component.data.q4.option3).toBeFalse();
    expect(component.data.q4.option4).toBeFalse();
    el = de.nativeElement.querySelector('#q4_3');
    el.click();
    expect(component.data.q4.option1).toBeFalse;
    expect(component.data.q4.option2).toBeFalse();
    expect(component.data.q4.option3).toBeTrue();
    expect(component.data.q4.option4).toBeFalse();
    el = de.nativeElement.querySelector('#q4_4');
    el.click();
    expect(component.data.q4.option1).toBeFalse;
    expect(component.data.q4.option2).toBeFalse();
    expect(component.data.q4.option3).toBeFalse();
    expect(component.data.q4.option4).toBeTrue();
  });
  
  it('should really submit', () => {
    de = fixture.debugElement;
    const submit = de.nativeElement.querySelector('#submit');
    el = de.nativeElement.querySelector('#q1_1');
    el.click();
    expect(component.data.q1).toBeTrue();
    expect(de.nativeElement.querySelector('#q2')).toBeNull;
    submit.click();
    expect(component.isSubmitted).toBeFalse;
    el = de.nativeElement.querySelector('#q3_2');
    el.click();
    expect(component.data.q3).toBeFalse();
    el = de.nativeElement.querySelector('#q4_1');
    el.click();
    submit.click();
    expect(component.isSubmitted).toBeTrue;
  });
});
