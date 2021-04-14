import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from "@angular/common/http";
import { AppRoutingModule } from './app-routing.module';
import { FormsModule } from '@angular/forms';
import { AppComponent } from './app.component';
import { HomeComponent } from './home/home.component';
import { CustomizeComponent } from './customize/customize.component';
import { SlotmachineComponent } from './slotmachine/slotmachine.component';
import { DishComponent } from './dish/dish.component';


@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    CustomizeComponent,
    SlotmachineComponent,
    DishComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
