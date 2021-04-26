import { TestBed } from '@angular/core/testing';

import { CommunicateService } from './communicate.service';

describe('CommunicateService', () => {
  let service: CommunicateService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(CommunicateService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
