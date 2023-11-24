import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { BehaviorSubject, Observable, map } from 'rxjs';
import { LoginRequest } from '../interfaces/loginRequest.interface';
import { RegisterRequest } from '../interfaces/registerRequest.interface';
import { LoginResponse } from '../interfaces/loginResponse.interface';
import { Router } from '@angular/router';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  private pathService = 'api/auth';

  private loggedIn = new BehaviorSubject<boolean>(false);

  constructor(private httpClient: HttpClient, private router: Router) { }

  public register(registerRequest: RegisterRequest) {
    return this.httpClient.post<void>(`${this.pathService}/register`, registerRequest);
  }

  get isLoggedIn(): Observable<boolean> {
    return this.loggedIn.asObservable();
  }

  public login(loginRequest: LoginRequest) {
    // Faites une requête HTTP au serveur pour vérifier les informations de connexion
    return this.httpClient.post<LoginResponse>(`${this.pathService}/login`, loginRequest)
      .pipe(map(response => {
        // Si l'authentification réussit, stockez le JWT dans le localStorage
        if (response && response.token) {
          localStorage.setItem('token', response.token);
          this.loggedIn.next(true);
        }
        return response;
      }));
  }

  logout(): void {
    // Supprimez le JWT du localStorage et mettez à jour l'état de connexion
    localStorage.removeItem('token');
    this.loggedIn.next(false);
    this.router.navigateByUrl('/login')
  }
}
