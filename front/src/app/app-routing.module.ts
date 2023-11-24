import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './pages/home/home.component';
import { LoginComponent } from './features/auth/components/login/login.component';
import { RegisterComponent } from './features/auth/components/register/register.component';
import { FeedComponent } from './features/posts/components/list/feed.component';
import { ListComponent } from './features/subjects/components/list/list.component';
import { DetailComponent } from './features/posts/components/detail/detail.component';
import { NewComponent } from './features/posts/components/new/new.component';
import { ProfileComponent } from './features/user/components/profile/profile.component';
import { AuthGuard } from './guards/auth.guard';
import { LoggedInGuard } from './guards/loggedIn.guard';

// consider a guard combined with canLoad / canActivate route option
// to manage unauthenticated user to access private routes
const routes: Routes = [{ path: '', component: HomeComponent,  canActivate: [LoggedInGuard]},
 {path: 'login', component: LoginComponent, canActivate: [LoggedInGuard]},
 {path: 'register', component: RegisterComponent },
 { path: 'feed', component: FeedComponent, canActivate: [AuthGuard] },
 { path: 'new_post', component: NewComponent, canActivate: [AuthGuard] },
 { path: 'post/:id', component: DetailComponent, canActivate: [AuthGuard] },
 { path: 'subjects', component: ListComponent, canActivate: [AuthGuard] },
 { path: 'profile', component: ProfileComponent, canActivate: [AuthGuard] }]

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
