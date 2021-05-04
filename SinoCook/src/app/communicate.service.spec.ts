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

  it('should send the message and get the message', () => {
    service.sendMessage('hello');
    service.getMessage().subscribe((msg: any) => {
      expect(msg).toEqual('hello');
    });
  });
});
