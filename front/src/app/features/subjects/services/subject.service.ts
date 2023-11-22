import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import Subject from '../interfaces/subject.interface';

@Injectable({
  providedIn: 'root'
})
export class SubjectService {

  private pathService = 'api/subject';

  private subscriptionsPath = 'api/subscription'

  constructor(private httpClient: HttpClient) { }

  public all(): Observable<Subject[]> {
    return this.httpClient.get<Subject[]>(`${this.pathService}`);
  }

  public getUserSubscriptions(): Observable<Subject[]> {
    return this.httpClient.get<Subject[]>(`${this.subscriptionsPath}`);
  }

  
  public processState(id: number): Observable<Subject[]> {
    return this.httpClient.post<Subject[]>(`${this.subscriptionsPath}`, {"id": id});
  }

}
