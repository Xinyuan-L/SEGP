import { HttpClientModule } from '@angular/common/http';
import { TestBed } from '@angular/core/testing';

import { RequestsService } from './requests.service';

describe('RequestsService', () => {
  let service: RequestsService;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [HttpClientModule]
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
});
