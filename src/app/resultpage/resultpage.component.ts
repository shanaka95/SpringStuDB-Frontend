import { Component, OnInit } from '@angular/core';
import {Router} from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { HttpHeaders } from '@angular/common/http';
import { NgxSpinnerService } from 'ngx-spinner';

@Component({
  selector: 'app-resultpage',
  templateUrl: './resultpage.component.html',
  styleUrls: ['./resultpage.component.css']
})
export class ResultpageComponent implements OnInit {

  constructor(private SpinnerService: NgxSpinnerService, private httpClient: HttpClient, private router: Router ) { }
  student: any;
  exams: any;
  results = [];
  exindex: any;
  examname: string;
  t: any;
  gpa = {'A+': 4, 'A' : 4,'A-': 3.7,'B+': 3.3 ,'B': 3,'B-': 2.7,'C+': 2.3,'C': 2,'C-': 1.7,'D+': 1.3,'D': 1,'F': 0};
  cgpa: any;
  sgpa: any;
  comment = {'A+': 'Excellent', 'A' : 'Excellent','A-': 'Excellent','B+': 'Good','B': 'Good','B-': 'Good','C+': 'Pass','C': 'Pass','C-': 'Weak Pass','D+': 'Conditional Pass','D': 'Conditional Pass','F': 'Failed',};
  changeExam(e){
    // this.exindex = e.target.value;
    this.results = [];
    let c = 0;
    let allc = 0;
    for (let i of this.t){
      
      if (i.examid === e.target.value){
        console.log(i);
        c = c + Number(i.credits) * this.gpa[i.result];
        allc = allc + Number(i.credits);
        this.results.push(i);
      }
    }
    this.sgpa = c / allc;
    this.examname = this.results[0].name;
  }
  ngOnInit(): void {
    const auth = localStorage.getItem('basic');
    if (auth == null){
      this.router.navigate(['/login']);
    }
    else{
      let headers = new HttpHeaders({
        'Content-Type': 'application/json',
        'Authorization':  "Basic " + auth
      });
      this.httpClient.get('https://springapi.vitaz.dev/profile' , {headers : headers} ).subscribe(data => {
        console.log(data);
        this.student = data;
      },
      err => {
        console.log(err);
        //this.router.navigate(['/login']);
      }
      );
      this.httpClient.get('https://springapi.vitaz.dev/exams' , {headers : headers} ).subscribe(data => {
        console.log(data);
        this.exams = data;
      },
      err => {
        console.log(err);
        //this.router.navigate(['/login']);
      }

      );
      this.httpClient.get('https://springapi.vitaz.dev/results' , {headers : headers} ).subscribe(data => {
        console.log(data);
        this.t = data;
        this.examname = this.t[0].name;
        let s = 0;
        let allcredits = 0;
        let c = 0;
        let allc = 0;
        for (let i of this.t){
          s = s + Number(i.credits) * this.gpa[i.result];
          allcredits = allcredits + Number(i.credits);
          if (i.examid === this.t[0].examid){
            c = c + Number(i.credits) * this.gpa[i.result];
            allc = allc + Number(i.credits);
            this.results.push(i);
          }
        }
        this.cgpa = s / allcredits;
        this.sgpa = c / allc;
      },
      err => {
        console.log(err);
        //this.router.navigate(['/login']);
      }

      );


    }
  }

}
