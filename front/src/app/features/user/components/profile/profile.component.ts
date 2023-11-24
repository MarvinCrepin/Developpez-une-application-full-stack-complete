import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import UpdateUserRequest from '../../interfaces/updateUserRequest.interface';
import { UserService } from '../../services/user.service';
import { HttpResponse } from '@angular/common/http';
import { SubjectService } from 'src/app/features/subjects/services/subject.service';
import Subject from 'src/app/features/subjects/interfaces/subject.interface';
import { AuthService } from 'src/app/features/auth/services/auth.service';
@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.scss']
})
export class ProfileComponent implements OnInit {

  public form = this.fb.group({
    email: '',
    username: ''
  });
  public subjects!: Subject[];
  constructor(private userService: UserService,
    private subjectService: SubjectService,
    private fb: FormBuilder,
    private authService: AuthService,
    private router: Router
  ) {
  }

  public ngOnInit(): void {
    this.getAllSubjects();

    this.userService.me().subscribe((response) => {
      const { email, username } = response
      this.form.setValue({ email, username })
    })
  }


  public submit(): void {
    const updateUserRequest = this.form.value as UpdateUserRequest;
    this.userService.update(updateUserRequest).subscribe((response) => {
      if (response.status === 200) {
        const { email, username } = response.body
        this.form.setValue(email, username)
      }
    })
  }


  public getAllSubjects(): void {
    this.subjectService.all().subscribe((subjects) => {
      this.subjectService.getUserSubscriptions().subscribe((subscriptions) => {
        this.subjects = subjects.filter((subject) => subscriptions.map((sub) => sub.id).includes(subject.id))
      })
    })

  }

  public processState(id: number): void {
    this.subjectService.processState(id).subscribe(() => {
      this.getAllSubjects()
    })
  }

  public logOut() {
    this.authService.logout()
    this.router.navigateByUrl('/login')
  }
  
  public back() {
    window.history.back();
  }
}
