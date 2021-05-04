import { HttpClientModule } from '@angular/common/http';
import { DebugElement } from '@angular/core';
import { ComponentFixture, fakeAsync, flush, TestBed, tick } from '@angular/core/testing';
import { FormsModule } from '@angular/forms';
import { By } from '@angular/platform-browser';
import { RouterTestingModule } from '@angular/router/testing';

import { DishComponent } from './dish.component';

describe('DishComponent', () => {
  let component: DishComponent;
  let fixture: ComponentFixture<DishComponent>;
  let de: DebugElement;
  let el: HTMLElement;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ DishComponent ],
      imports: [ HttpClientModule, RouterTestingModule,FormsModule ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(DishComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });

  it('should like or dislike dishes', () => {
    de = fixture.debugElement;
    el = de.nativeElement.querySelector('#like-dish');
    const num = component.dish.likes;
    expect(component.dishLike).toBeFalse();
    expect(de.nativeElement.querySelector('#dislike-dish')).toBeNull();
    el.click();
    expect(component.dishLike).toBeTrue();
    expect(component.dish.likes - num == 1).toBeTrue();
    fixture.detectChanges();
    expect(de.nativeElement.querySelector('#like-dish')).toBeNull();
    el = de.nativeElement.querySelector('#dislike-dish');
    el.click();
    expect(component.dishLike).toBeFalse();
    expect(num == component.dish.likes).toBeTrue();
  });

  it('should like or dislike comments', () => {
    de = fixture.debugElement;
    el = de.nativeElement.querySelector('#like');
    const num = component.comments[0].likes;
    expect(el.getAttribute('src')).toEqual("assets/dislike.svg");
    el.click();
    fixture.detectChanges();
    expect(el.getAttribute('src')).toEqual("assets/like.svg");
    expect(component.comments[0].likes - num == 1).toBeTrue();
    fixture.detectChanges();
    el.click();
    fixture.detectChanges();
    expect(el.getAttribute('src')).toEqual("assets/dislike.svg");
    expect(num == component.comments[0].likes).toBeTrue();
  });

  it('should submit', fakeAsync(() => {
    de = fixture.debugElement;
    const nickname: HTMLInputElement = de.nativeElement.querySelector('#nickname');
    const detail: HTMLInputElement = de.nativeElement.querySelector('textarea');
    const details: String = 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality';

    spyOn(component,'postComment')

    nickname.value = 'Leslie';
    nickname.dispatchEvent(new Event('input'));
    fixture.detectChanges();
    expect(component.newComment.nickname).toEqual('Leslie');

    detail.value = 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality';
    detail.dispatchEvent(new Event('input'));
    fixture.detectChanges();
    expect(component.newComment.details).toEqual(details);

    el = de.nativeElement.querySelector('#submit input');
    el.click();
    tick();
    fixture.detectChanges();
    expect(component.postComment).toHaveBeenCalled();
  }));

  it('should get data', fakeAsync(() => {
    spyOn(component,'getInfo');
    component.ngOnInit();
    tick();
    expect(component.getInfo).toHaveBeenCalled();
    flush();
  }));

  it('should like dishes about func', fakeAsync(() => {
    spyOn(component,'addDishLike');
    de = fixture.debugElement;
    el = de.nativeElement.querySelector('#like-dish');
    el.click();
    tick()
    expect(component.addDishLike).toHaveBeenCalled();
  }));

  it('should dislike dishes about func', fakeAsync(() => {
    spyOn(component,'cancelDishLike');
    de = fixture.debugElement;
    component.dishLike = true;
    fixture.detectChanges();
    el = de.nativeElement.querySelector('#dislike-dish');
    el.click();
    tick()
    expect(component.cancelDishLike).toHaveBeenCalled();
  }));

  it('should like or dislike comments about func', fakeAsync(() => {
    spyOn(component,'toggleLike');
    de = fixture.debugElement;
    el = de.nativeElement.querySelector('#like');
    el.click();
    tick();
    expect(component.toggleLike).toHaveBeenCalledTimes(1);
    fixture.detectChanges();
    el.click();
    tick();
    expect(component.toggleLike).toHaveBeenCalledTimes(2);
  }));

});
