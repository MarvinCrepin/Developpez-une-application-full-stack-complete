import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Post } from '../interfaces/post.interface';
import PostRequest from '../interfaces/postRequest.interface';
import { Subject } from '../interfaces/subject.interface';

@Injectable({
  providedIn: 'root'
})
export class SubjectService {

  private pathService = 'api/subject';

  constructor(private httpClient: HttpClient) { }

  public all(): Observable<Subject[]> {
    return this.httpClient.get<Subject[]>(`${this.pathService}`);
  }

  
}
