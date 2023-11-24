import { HttpClient, HttpResponse } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { BehaviorSubject, Observable, map } from 'rxjs';
import UpdateUserRequest from '../interfaces/updateUserRequest.interface';
import MeResponse from '../interfaces/meResponse.interface';

@Injectable({
  providedIn: 'root'
})
export class UserService {

  private pathService = 'api/user';

  constructor(private httpClient: HttpClient) { }


  public me() {
    // Faites une requête HTTP au serveur pour vérifier les informations de connexion
    return this.httpClient.get<MeResponse>(`${this.pathService}/me`)
  }

  public update(updateUserRequest: UpdateUserRequest) {
    // Faites une requête HTTP au serveur pour vérifier les informations de connexion
    return this.httpClient.put<HttpResponse<any>>(`${this.pathService}/update`, updateUserRequest)
  }


}
