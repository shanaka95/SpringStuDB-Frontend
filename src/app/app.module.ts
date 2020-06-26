import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
// import { HttpClientModule } from '@angular/common/http';
import { FormsModule } from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LoginPageComponent } from './login-page/login-page.component';
import { NgxSpinnerModule } from 'ngx-spinner';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

// import { HttpInterceptorService } from './helper/intercept';
import { HTTP_INTERCEPTORS, HttpClientModule } from '@angular/common/http';
import { ResultpageComponent } from './resultpage/resultpage.component';
import { CheckloginComponent } from './checklogin/checklogin.component';


@NgModule({
  declarations: [
    AppComponent,
    LoginPageComponent,
    ResultpageComponent,
    CheckloginComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    NgxSpinnerModule,
    HttpClientModule,
    BrowserAnimationsModule,
    FormsModule
  ],
  providers: [
    // { provide: HTTP_INTERCEPTORS, useClass: HttpInterceptorService, multi: true }
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
