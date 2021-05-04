import { TestBed } from '@angular/core/testing';
import { By } from '@angular/platform-browser';
import { RouterTestingModule } from '@angular/router/testing';
import { AppComponent } from './app.component';

describe('AppComponent', () => {

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [
        RouterTestingModule
      ],
      declarations: [
        AppComponent
      ],
    }).compileComponents();
  });

  it('should create the app', () => {
    const fixture = TestBed.createComponent(AppComponent);
    const app = fixture.componentInstance;
    expect(app).toBeTruthy();
  });

  it(`should have as title 'SinoCook'`, () => {
    const fixture = TestBed.createComponent(AppComponent);
    const app = fixture.componentInstance;
    expect(app.title).toEqual('SinoCook');
  });

  it('should render toolbar title', () => {
    const fixture = TestBed.createComponent(AppComponent);
    fixture.detectChanges();
    const compiled = fixture.nativeElement;
    let span = compiled.querySelector('#home-tb span');
    expect(span.textContent).toEqual('Home');
    span = compiled.querySelector('#cust-tb span');
    expect(span.textContent).toEqual('Customize');
    span = compiled.querySelector('#about-tb span');
    expect(span.textContent).toEqual('About us');
  });

  it('should jump right', () => {
    const fixture = TestBed.createComponent(AppComponent);
    fixture.detectChanges();
    let el = fixture.debugElement.query(By.css('#logo-tb')).nativeElement.getAttribute('href');
    expect(el).toEqual('/home');
    el = fixture.debugElement.query(By.css('#home-tb')).nativeElement.getAttribute('href');
    expect(el).toEqual('/home');
    el = fixture.debugElement.query(By.css('#cust-tb')).nativeElement.getAttribute('href');
    expect(el).toEqual('/cust');
    el = fixture.debugElement.query(By.css('#about-tb')).nativeElement.getAttribute('href');
    expect(el).toEqual('https://github.com/Xinyuan-L/SEGP');
  });
});
