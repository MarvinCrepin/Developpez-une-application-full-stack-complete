import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Post } from '../../interfaces/post.interface';
import CommentRequest from '../../interfaces/commentRequest.interface';
import Comment from "../../interfaces/comment.interface"
@Injectable({
  providedIn: 'root'
})
export class CommentService {

  private pathService = 'api/comment';

  constructor(private httpClient: HttpClient) { }

  public postComment(commentRequest: CommentRequest): Observable<Comment> {
    return this.httpClient.post<Comment>(`${this.pathService}`, {...commentRequest});
  }

  public getByPost(postId: string): Observable<Comment[]> {
    return this.httpClient.get<Comment[]>(`${this.pathService}/posts/${postId}`);
  }
}
