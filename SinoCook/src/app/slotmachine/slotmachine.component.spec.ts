import { HttpClient, HttpClientModule } from '@angular/common/http';
import { DebugElement } from '@angular/core';
import { ComponentFixture, fakeAsync, TestBed, tick } from '@angular/core/testing';
import { RouterTestingModule } from '@angular/router/testing';


import { SlotmachineComponent } from './slotmachine.component';


describe('SlotmachineComponent', () => {
  let component: SlotmachineComponent;
  let fixture: ComponentFixture<SlotmachineComponent>;
  let de: DebugElement;
  let el: HTMLElement;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SlotmachineComponent ],
      imports: [HttpClientModule, RouterTestingModule]
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

  it('should play', fakeAsync(() => {
    spyOn(component,'start');
    de = fixture.debugElement;
    el = de.nativeElement.querySelector('#button');
    el.click();
    tick(3000);
    expect(component.start).toHaveBeenCalledTimes(1);
  }));

  it('should play with stick', fakeAsync(() => {
    spyOn(component,'start');
    de = fixture.debugElement;
    el = de.nativeElement.querySelector('#stick-up');
    el.click();
    tick(3000);
    expect(component.start).toHaveBeenCalledTimes(1);
  }));

  it('should have a shadow after playing', fakeAsync(() => {
    de = fixture.debugElement;
    el = de.nativeElement.querySelector('.shadow');
    expect(el.style.display).toEqual('');
    de.nativeElement.querySelector('#button').click();
    tick(3000);
    expect(el.style.display).toEqual('block');
    el.click();
    expect(el.style.display).toEqual('none');
  }));

  it('should have a pop-up after playing', fakeAsync(() => {
    de = fixture.debugElement;
    el = de.nativeElement.querySelector('.window');
    expect(el.style.display).toEqual('');
    de.nativeElement.querySelector('#button').click();
    tick(3000);
    expect(el.style.display).toEqual('block');
    de.nativeElement.querySelector('.shadow').click();
    expect(el.style.display).toEqual('none');
  }));

  it('should have left button in pop-up', fakeAsync(() => {
    de = fixture.debugElement;
    el = de.nativeElement.querySelector('#left-button');
    de.nativeElement.querySelector('#button').click();
    tick(3000);
    el.click();
    expect(de.nativeElement.querySelector('.window').style.display).toEqual('none');
  }));

  it('should have right button in pop-up', fakeAsync(() => {
    de = fixture.debugElement;
    el = de.nativeElement.querySelector('#right-button');
    const spy = spyOn(component,'jumpToDish');
    de.nativeElement.querySelector('#button').click();
    tick(3000);
    expect(el.getAttribute("routerLink")).toEqual("/dish")
  }));


});
