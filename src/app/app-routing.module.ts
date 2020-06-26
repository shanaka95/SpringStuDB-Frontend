import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginPageComponent } from './login-page/login-page.component';
import { ResultpageComponent } from './resultpage/resultpage.component';
import { CheckloginComponent } from './checklogin/checklogin.component';


const routes: Routes = [
{ path: 'result', component: ResultpageComponent },
{ path: 'login', component: LoginPageComponent },
{ path: '', component: CheckloginComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
