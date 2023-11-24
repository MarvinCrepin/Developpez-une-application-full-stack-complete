import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Observable } from 'rxjs';
import { SessionService } from './services/session.service';
import { LocalStorageService } from './services/localstorage.service';
import { MatDialog } from '@angular/material/dialog';
import { ModalComponent } from './features/modal/components/modal.component';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  constructor(
    private router: Router,
    private  localStorageService: LocalStorageService,
    public dialog: MatDialog){
  }


  openModal(): void {
    const dialogRef = this.dialog.open(ModalComponent, {
      width: '50%',
      height: '100%'
    });
  }

  closeModal(): void {
    this.dialog.closeAll();
  }

  public isLogged() {
    return !!this.localStorageService.get('token');
  }

  public logout(): void {
    this.router.navigate([''])
  }
}
