import { HttpClientModule } from '@angular/common/http';
import { TestBed } from '@angular/core/testing';
import { RequestsService } from './requests.service';
import {take} from 'rxjs/operators';

describe('RequestsService', () => {
  let service: RequestsService;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [HttpClientModule],
    })
    .compileComponents();
  });

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(RequestsService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });

  it('can get today recommendation', async (done) => {
    const data = await service.get('getTodayFood').pipe(take(1)).toPromise();
    expect(data.name).not.toBeUndefined('without dish name');
    expect(data.address).not.toBeUndefined('without dish picture');
    expect(data.description).not.toBeUndefined('without dish description');
    done();
  });

  it('can get the popular dishes', async (done) => {
    const data = await service.get('getPopular').pipe(take(1)).toPromise();
    expect(data.length).toBeGreaterThan(0);
    expect(data[0].name).not.toBeUndefined('without name');
    expect(data[0].address).not.toBeUndefined('without dish picture');
    expect(data[0].likes).not.toBeUndefined('without likes number');
    expect(data[0].views).not.toBeUndefined('without views number');
    done();
  });

  it('can get popular comment', async (done) => {
    const data = await service.get('getTopComment').pipe(take(1)).toPromise();
    expect(data.nickname).not.toBeUndefined('without name');
    expect(data.details).not.toBeUndefined('without comment detail');
    expect(data.picAddress).not.toBeUndefined('without dish picture');
    expect(data.dishname).not.toBeUndefined('without dish name');
    done();
  });

  it('can get dish comments', async (done) => {
    const data = await service.get('getComments', {Did: 8}).pipe(take(1)).toPromise();
    expect(data.total).toBeGreaterThan(0);
    expect(data.comments.length).toBeGreaterThan(0);
    done();
  });

  it('can get dish all info', async (done) => {
    const data = await service.get('getDish', {name: 'Steamed okra'}).pipe(take(1)).toPromise();
    expect(data.id).toBeGreaterThan(0);
    expect(data.likes).toBeGreaterThanOrEqual(0);
    expect(data.views).toBeGreaterThanOrEqual(0);
    expect(data.name).not.toBeUndefined('without dish name');
    expect(data.taste).not.toBeUndefined('without dish taste');
    expect(data.address).not.toBeUndefined('without dish picture');
    expect(data.description).not.toBeUndefined('without dish description');
    expect(data.time).not.toBeUndefined('without dish cooking time');
    expect(data.main.length).toBeGreaterThan(0);
    expect(data.other.length).toBeGreaterThan(0);
    expect(data.steps.length).toBeGreaterThan(0);
    done();
  });

  it('can post new comment', async (done) => {
    const comment = {
      dish: 'Steamed okra',
      nickname: 'newCom.nickname',
      time: 16202020423,
      details: 'newCom.details',
      likes: 0,
    };
    const data = await service.post('postComments', comment).pipe(take(1)).toPromise();
    // new comment's id;
    expect(data).toBeGreaterThan(0);
    done();
  });

  it('can post user\'s customized demand', async (done) => {
    const user = {
      q1: false,
      q2: 4,
      q3: false,
      q4: 2
    };
    const data = await service.post('customize', user).pipe(take(1)).toPromise();
    expect(data.length).toBeGreaterThan(0);
    expect(data[0].name).not.toBeUndefined();
    expect(data[0].address).not.toBeUndefined();
    done();
  });
});
