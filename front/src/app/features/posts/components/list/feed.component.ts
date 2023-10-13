import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { PostService } from '../../services/post.service';
import { Post } from '../../interfaces/post.interface';


@Component({
  selector: 'app-feed',
  templateUrl: './feed.component.html',
  styleUrls: ['./feed.component.scss']
})
export class FeedComponent implements OnInit {

  public posts: Post[] | undefined;

  constructor(private postService: PostService,
              private router: Router) {
  }

  public ngOnInit(): void {
    this.getAll();
  }


  public getAll(): void {
   this.postService.all().subscribe((posts) => {
    this.posts = posts;
   })
  }
}
