import { HttpClientModule } from '@angular/common/http';
import { DebugElement } from '@angular/core';
import { ComponentFixture, fakeAsync, TestBed, tick } from '@angular/core/testing';
import { By } from '@angular/platform-browser';
import { RouterTestingModule } from '@angular/router/testing';

import { HomeComponent } from './home.component';

describe('HomeComponent', () => {
  let component: HomeComponent;
  let fixture: ComponentFixture<HomeComponent>;
  

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ HomeComponent ],
      imports: [ RouterTestingModule, HttpClientModule ],
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(HomeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });

  it('should jump right', () => {
    let el = fixture.nativeElement.querySelectorAll('a');
    expect(el[0].getAttribute('href')).toEqual('/cust');
    expect(el[1].getAttribute('href')).toEqual('/dish');
    expect(el[2].getAttribute('href')).toEqual('/dish');
    expect(el[3].getAttribute('href')).toEqual('/dish');
    expect(el[4].getAttribute('href')).toEqual('/dish');
    expect(el[5].getAttribute('href')).toEqual('/dish');
  });
  
  it('should get data', fakeAsync(() => {
    spyOn(component,'getPopular');
    spyOn(component,'getTodayFood');
    spyOn(component,'getTopComment');
    component.ngOnInit();
    tick();
    expect(component.getPopular).toHaveBeenCalled();
    expect(component.getTodayFood).toHaveBeenCalled();
    expect(component.getTopComment).toHaveBeenCalled();
  }));
});
