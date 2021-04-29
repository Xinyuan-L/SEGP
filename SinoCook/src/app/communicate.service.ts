import { Injectable } from '@angular/core';
import { ReplaySubject, Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class CommunicateService {
  private message: ReplaySubject<any> = new ReplaySubject<any>(1);

  constructor() { }

  /**
   * 向其他组件发送信息
   * @param msg 需要发送的信息
   */
  public sendMessage(msg: any): void {
    this.message.next(msg);
  }

  /**
   * 订阅其他组件发送来的消息
   * @return Observable<any>
   */

  public getMessage(): Observable<any> {
    console.log('getting message...');
    console.log(this.message.asObservable());
    return this.message.asObservable();
  }
}
