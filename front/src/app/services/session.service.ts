import { Injectable } from '@angular/core';
import { BehaviorSubject, Observable } from 'rxjs';
import { SessionInformation } from '../features/auth/interfaces/sessionInformation.interface';
import { LocalStorageService } from './localstorage.service';
@Injectable({
  providedIn: 'root'
})
export class SessionService {

  public sessionInformation: SessionInformation | undefined;

  private isLoggedSubject = new BehaviorSubject<boolean>(!!this.localStorageService.get('token'));

  constructor(private localStorageService: LocalStorageService) {

  }  
  public $isLogged(): Observable<boolean> {
    return this.isLoggedSubject.asObservable();
  }

  public logIn(user: SessionInformation): void {
    this.localStorageService.set('token', user.token)
  }

  public logOut(): void {
    this.localStorageService.remove('token')
  }

}
