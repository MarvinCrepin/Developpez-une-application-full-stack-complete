import { NgModule } from '@angular/core';
import { MatSnackBarModule } from '@angular/material/snack-bar';
import { MatButtonModule } from '@angular/material/button';
import { MatToolbarModule } from '@angular/material/toolbar';
import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeComponent } from './pages/home/home.component';
import { MatCardModule } from '@angular/material/card';
import { MatIconModule } from '@angular/material/icon';
import { HTTP_INTERCEPTORS, HttpClientModule } from '@angular/common/http';
import { LoginComponent } from './features/auth/components/login/login.component';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { RegisterComponent } from './features/auth/components/register/register.component';
import { FeedComponent } from './features/posts/components/list/feed.component';
import { JwtInterceptor } from './interceptors/jwt.interceptor';
import { LocalStorageService } from './services/localstorage.service';
import {MatGridListModule} from '@angular/material/grid-list';
import { ListComponent } from './features/subjects/components/list/list.component';
import { DetailComponent } from './features/posts/components/detail/detail.component';
import { NewComponent } from './features/posts/components/new/new.component';
import { MatOptionModule } from '@angular/material/core';
import { MatSelectModule } from '@angular/material/select';
import { ProfileComponent } from './features/user/components/profile/profile.component';
import { MatDialogModule } from '@angular/material/dialog';
import {MatListModule} from '@angular/material/list';
import { MatSidenavModule } from '@angular/material/sidenav';
import { ModalComponent } from './features/modal/components/modal.component';

const materialModule = [
  MatButtonModule,
  MatCardModule,
  MatIconModule,
  MatSnackBarModule,
  MatToolbarModule,
  MatFormFieldModule,
  MatInputModule,
  MatGridListModule,
  MatOptionModule,
  MatSelectModule,
  MatDialogModule,
  MatListModule,
  MatSidenavModule
]

@NgModule({
  declarations: [AppComponent, HomeComponent, LoginComponent, RegisterComponent, FeedComponent, ListComponent, DetailComponent, NewComponent, ProfileComponent, ModalComponent],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule,
    ...materialModule
  ],
  providers: [ { provide: HTTP_INTERCEPTORS, useClass: JwtInterceptor, multi: true }, LocalStorageService],
  bootstrap: [AppComponent],
})
export class AppModule {}
