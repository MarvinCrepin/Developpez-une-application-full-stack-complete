// auth.guard.ts

import { Injectable } from '@angular/core';
import { CanActivate, Router } from '@angular/router';
import { AuthService } from '../features/auth/services/auth.service';
import { LocalStorageService } from '../services/localstorage.service';

@Injectable({
  providedIn: 'root'
})
export class LoggedInGuard implements CanActivate {

  constructor(private authService: AuthService, private router: Router, private localStorageService: LocalStorageService) {}
  canActivate(): boolean {
    const isLoggedIn = !!this.localStorageService.get('token')
    if (this.router.url === "/") {
      this.router.navigate(['/feed']);
      return false;
    } else {
      return true;
    }
  }
}