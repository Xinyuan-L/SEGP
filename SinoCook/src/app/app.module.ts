import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { HomepageComponent } from './homepage/homepage.component';
import { CustomizeComponent } from './customize/customize.component';
import { SlotmachineComponent } from './slotmachine/slotmachine.component';
import { DishesComponent } from './dishes/dishes.component';
import {RouterModule} from '@angular/router';

@NgModule({
  declarations: [
    AppComponent,
    HomepageComponent,
    CustomizeComponent,
    SlotmachineComponent,
    DishesComponent
  ],
    imports: [
        BrowserModule,
        RouterModule
    ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
