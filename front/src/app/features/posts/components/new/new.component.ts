import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { PostService } from '../../services/post.service';
import { Post } from '../../interfaces/post.interface';
import { ActivatedRoute } from '@angular/router';
import { CommentService } from '../services/comment.service';
import CommentRequest from '../../interfaces/commentRequest.interface';
import Comment from '../../interfaces/comment.interface';
import PostRequest from '../../interfaces/postRequest.interface';
import { SubjectService } from '../../services/subject.service';
import { Subject } from '../../interfaces/subject.interface';


@Component({
  selector: 'app-new-post',
  templateUrl: './new.component.html',
  styleUrls: ['./new.component.scss']
})
export class NewComponent implements OnInit {

  public subjects!: Subject[]|null

  public form = this.fb.group({
    subject_id: '',
    title: '',
    content: ''
  });

  constructor(private postService: PostService,
    private router: Router,
    private fb: FormBuilder,
    private subjectService: SubjectService) {
  }

  public ngOnInit(): void {
    this.subjectService.all().subscribe(subjects => {
      this.subjects = subjects;
    });

  }

  public submit() {
    this.postService.new(this.form.value as PostRequest).subscribe(() => {
      this.router.navigateByUrl('home')
    })
  }
  get subject() { return this.form.get("subject") }


  public back() {
    window.history.back();
  }

}
