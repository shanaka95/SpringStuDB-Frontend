import { Component, OnInit } from '@angular/core';
import { LoginserviceService } from '../loginservice.service';
import { HttpClient } from '@angular/common/http';
import { HttpHeaders } from '@angular/common/http';
import {Router} from '@angular/router';
@Component({
  selector: 'app-checklogin',
  templateUrl: './checklogin.component.html',
  styleUrls: ['./checklogin.component.css']
})
export class CheckloginComponent implements OnInit {

  constructor( private router: Router, private httpClient: HttpClient, public loginservice: LoginserviceService) {

  }

  ngOnInit(): void {
    console.log(this.loginservice.getLogin());
    const auth = localStorage.getItem('basic');
    if (auth == null){
      this.router.navigate(['/login']);
    }
    else{
      let headers = new HttpHeaders({
        'Content-Type': 'application/json',
        'Authorization': auth
      });
      this.httpClient.get('https://springapi.vitaz.dev/login' , {headers : headers} ).subscribe(res => {
        this.router.navigate(['/result']);
      },
      err => {
        this.router.navigate(['/login']);
      }
      );
      this.loginservice.setLogin(true);
      console.log(this.loginservice.getLogin());
    }
  }

}
