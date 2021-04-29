import { Injectable } from '@angular/core';
import { Observable, of, throwError } from 'rxjs';
import { catchError, map, tap } from 'rxjs/operators';
import {
  HttpHeaders,
  HttpClient,
  HttpRequest,
  HttpHandler,
  HttpErrorResponse,
  HttpEvent,
  HttpResponse,
  HttpInterceptor, HttpParams,
} from '@angular/common/http';
import Config from '../config/index';

@Injectable({
  providedIn: 'root',
})

export class RequestsService implements HttpInterceptor {
  constructor(private http: HttpClient) {}

  baseUrl = Config.baseUrl;
  // 基础接口url

  /**
   *  GET请求处理（一般用于获取数据）
   * @param url 后台接口api 例如：/api/test/6
   * @param data 数据提交
   */
  public get(url: string, data?: any): Observable<any> {
    const option = data ? {params: new HttpParams()} : {params: undefined};
    let p = option.params;
    if (p !== undefined) {
      for (const [key, value] of Object.entries(data)) {
        p = p.set(key, value as string);
      }
    }
    option.params = p;
    // console.log(option);
    return this.http
      .get(`${this.baseUrl}${url}`, option)
      .pipe(catchError(this.handleError));
  }

  /**
   * POST请求处理（一般用于保存数据）
   * @param url 后台接口api
   * @param data 参数
   */
  public post(url: string, data: any): Observable<any> {
    const option = {headers: new HttpHeaders({'Content-Type': 'application/json'})};
    console.log('posted');
    return this.http
      .post(`${this.baseUrl}${url}`, JSON.stringify(data), option)
      .pipe(catchError(this.handleError));
  }

  /**
   * PUT请求处理（一般用于更新数据）
   * @param url 后台接口api 例如：/api/test/6
   * @param data 参数
   */
  public put(url: string, data: any): Observable<any> {
    return this.http
      .put(`${this.baseUrl}${url}`, data)
      .pipe(catchError(this.handleError));
  }

  /**
   * DELETE请求处理（一般用于删除数据）
   * @param url 后台接口api 例如：/api/test/6
   */
  // public delete(url: string): Observable<{}> {
  //   return this.http
  //     .delete(`${this.baseUrl}${url}`)
  //     .pipe(map(this.extractData), catchError(this.handleError));
  // }

  /**
   * get方式过滤自动拼接数据
   * @param data Object
   */
  // private getParamsFormatter(data: object): string {
  //   if (typeof data === 'object') {
  //     const value = Object.assign({}, data);
  //     let params = '?';
  //     Object.entries(value).forEach((el, i) => {
  //       if (i > 0) {
  //         params += `&${el[0]}=${el[1]}`;
  //       } else {
  //         params += `${el[0]}=${el[1]}`;
  //       }
  //     });
  //     return params;
  //   }
  //   return '';
  // }

  /**
   *  提取数据
   * @param res 返回结果
   */
  // private extractData(res: any): any {
  //   return res || {};
  // }

  /**
   * 错误消息类
   * @param error info
   */
  private handleError(error: HttpErrorResponse): Observable<never> {
    console.log(error, 'res112212');
    if (error.error instanceof ErrorEvent) {
      console.error('An error occurred:', error.error.message);
    } else {
      console.error(
        `Backend returned code ${error.status}, ` + `body was: ${error.error}`
      );
    }
    return throwError('Something bad happened; please try again later.');
  }

  intercept(
    request: HttpRequest<any>,
    next: HttpHandler
  ): Observable<HttpEvent<any>> {
    return next.handle(request).pipe(
      map((event: HttpEvent<any>) => {
        if (event instanceof HttpResponse) {
          console.log(event.body.code, 'code');

          switch (event.body.code) {
            case 200:
              break;
            case 401:
              localStorage.removeItem('token');
              window.location.href = '/login';
              break;
            case 500:
              // this.OpenMessage('提示', '数据错误500')
              break;
          }
        }
        return event;
      })
    );
  }
}
