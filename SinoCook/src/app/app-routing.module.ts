import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { CustomizeComponent } from './customize/customize.component';
import { SlotmachineComponent } from './slotmachine/slotmachine.component';
import { DishComponent } from './dish/dish.component';
const routes: Routes = [
  {path: 'home', component: HomeComponent},
  {path: 'cust', component: CustomizeComponent},
  {path: 'slot', component: SlotmachineComponent},
  {path: 'dish', component: DishComponent},
  {path: '**', redirectTo: 'home'},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
