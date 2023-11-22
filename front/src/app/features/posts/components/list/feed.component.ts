import { Component, HostListener, OnInit, Output } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { PostService } from '../../services/post.service';
import { Post } from '../../interfaces/post.interface';
import { MediaMatcher } from '@angular/cdk/layout';
import { EventEmitter } from '@angular/core';

@Component({
  selector: 'app-feed',
  templateUrl: './feed.component.html',
  styleUrls: ['./feed.component.scss']
})
export class FeedComponent implements OnInit {
  @Output() mobileStatusChange = new EventEmitter<boolean>();
  isMobile!: boolean;

  public posts: Post[] | undefined;

  constructor(private postService: PostService,
    private mediaMatcher: MediaMatcher) {
  }

  public ngOnInit(): void {
    this.getAll();
  }
  checkIfMobile() {
    this.isMobile = window.innerWidth <= 768; // Adapter la valeur selon vos besoins
    this.mobileStatusChange.emit(this.isMobile);
  }

  public getAll(): void {
    this.postService.all().subscribe((posts) => {
      this.posts = posts;
    })
  }
  @HostListener('window:resize', ['$event'])
  onResize(event: any) {
    console.log(this.isMobile)
    this.checkIfMobile();
  }
}
