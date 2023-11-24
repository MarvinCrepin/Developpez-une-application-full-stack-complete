import { HttpHandler, HttpInterceptor, HttpRequest } from "@angular/common/http";
import { Injectable } from "@angular/core";
import { SessionService } from '../services/session.service';
import { LocalStorageService } from "../services/localstorage.service";

@Injectable({ providedIn: 'root' })
export class JwtInterceptor implements HttpInterceptor {
  
  public token = this.localStorageService.get('token')

  constructor(private sessionService: SessionService, private localStorageService: LocalStorageService) {}

  public intercept(request: HttpRequest<any>, next: HttpHandler) {
    if (this.token) {
      request = request.clone({
        setHeaders: {
          Authorization: `Bearer ${this.token}`,
        },
      });
    }
    return next.handle(request);
  }
}
