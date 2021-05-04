import { Injectable } from '@angular/core';
import { ReplaySubject, Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class CommunicateService {
  private message: ReplaySubject<any> = new ReplaySubject<any>(1);

  constructor() { }

  /**
   * sent msg to other component;
   * @param msg msg the component want to send;
   */
  public sendMessage(msg: any): void {
    this.message.next(msg);
  }

  /**
   * get msg from other component;
   * @return Observable<any>
   */

  public getMessage(): Observable<any> {
    console.log('getting message...');
    console.log(this.message.asObservable());
    return this.message.asObservable();
  }
}
