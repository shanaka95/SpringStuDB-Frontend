import { Component, OnInit } from '@angular/core';
import { NgxSpinnerService } from 'ngx-spinner';
import { HttpClient } from '@angular/common/http';
import { HttpHeaders } from '@angular/common/http';
import { AuthserviceService } from '../authservice.service';
import {Router} from '@angular/router';

// import { Headers } from '@angular/http';
@Component({
  selector: 'app-login-page',
  templateUrl: './login-page.component.html',
  styleUrls: ['./login-page.component.css']
})
export class LoginPageComponent implements OnInit {
  username1: any;
  password1: any;
  // tslint:disable-next-line:max-line-length
  constructor(private router: Router, private authenticationService: AuthserviceService , private SpinnerService: NgxSpinnerService, private httpClient: HttpClient) { }

  login(){
    this.SpinnerService.show();

    // this.authenticationService.authenticationService('user', 'password').subscribe((result) => {
    //   console.log(result);
    // });
    const cred = btoa(this.username1 + ':' + this.password1);
    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': "Basic " + cred
    });
    console.log(cred);
    // this.httpClient.get('https://springapi.vitaz.dev/login', {headers} );
    // tslint:disable-next-line:max-line-length
    this.httpClient.get('https://springapi.vitaz.dev/login' , {headers : headers} ).subscribe(res => {
      localStorage.setItem('basic', cred);
      this.SpinnerService.hide();
      this.router.navigate(['/result']);

    },
    err => {
      document.getElementById('errdiv').style.visibility = "visible";
      this.SpinnerService.hide();
    }
    );
    // const headerDict = {
    //   'Content-Type': 'application/json',
    //   'Accept': 'application/json',
    //   'Access-Control-Allow-Headers': 'Content-Type',
    // };

    // tslint:disable-next-line:max-line-length
    // const requestOptions = {
    //   headers: new Headers(headerDict),
    // };

    // this.httpClient.get('https://springapi.vitaz.dev/login', {headers : {'Accept': 'application/cson'}} );


  }
 
  ngOnInit(): void {
    document.getElementById('errdiv').style.visibility = "hidden";

  }

}
