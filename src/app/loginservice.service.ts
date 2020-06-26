import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class LoginserviceService {
  isLoggedIn: boolean;
  constructor() { }
  public getLogin(){
    return this.isLoggedIn;
  }
  public setLogin(login){
    this.isLoggedIn = login;
  }

}
