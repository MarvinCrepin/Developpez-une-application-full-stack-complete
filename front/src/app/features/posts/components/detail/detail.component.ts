import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { PostService } from '../../services/post.service';
import { Post } from '../../interfaces/post.interface';
import { ActivatedRoute } from '@angular/router';
import { CommentService } from '../services/comment.service';
import CommentRequest from '../../interfaces/commentRequest.interface';
import Comment from '../../interfaces/comment.interface';


@Component({
  selector: 'app-detail',
  templateUrl: './detail.component.html',
  styleUrls: ['./detail.component.scss']
})
export class DetailComponent implements OnInit {

  public post: Post | undefined;

  public id!: string | null;

  public comments!: Comment[]

  public form = this.fb.group({
    content: [
      '',
      [
        Validators.required
      ]
    ]
  });

  constructor(private postService: PostService,
    private activatedRoute: ActivatedRoute,
    private fb: FormBuilder,
    private commentService: CommentService) {
  }

  public ngOnInit(): void {
    this.id = this.activatedRoute.snapshot.paramMap.get('id');
    this.getPost()
  }

  public getPost() {
    if (this.id) {
      this.postService.detail(this.id).subscribe((post) => {
        this.post = post
      })
      this.getComments()
    }
  }

  public submitComment() {
    if (this.id) {
      this.commentService.postComment({ content: this.form.value.content, postId: +this.id } as CommentRequest).subscribe(() => {
        this.getComments()
      })
    }
  }


  public getComments() {
    if (this.id) {
      this.commentService.getByPost(this.id).subscribe((comments) => {
        this.comments = comments
      })
    }

  }
  public back() {
    window.history.back();
  }

}
