import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppComponent } from './app.component';
import { AppRoutingModule } from './app-routing.module';
import { HomeComponent } from './pages/home/home.component';
import { ProjectsComponent } from './pages/projects/projects.component';
import { ProjectCardComponent } from './pages/projects/project-card/project-card.component';
import { ProjectsService } from './services/projects.service';
import { MenubarComponent } from './common/header/menubar/menubar.component';
import { AboutComponent } from './pages/about/about.component';
import { ToolsComponent } from './pages/tools/tools.component';
import { HeaderComponent } from './common/header/header.component';
import { FormsModule } from '@angular/forms';

import { ContactComponent } from './pages/contact/contact.component'; // Import HomeComponent
import { HttpClientModule } from '@angular/common/http';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    ProjectsComponent,
    ProjectCardComponent,
    MenubarComponent,
    AboutComponent,
    ToolsComponent,
    HeaderComponent,


    ContactComponent // Add HomeComponent here
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule
  ],
  providers: [ProjectsService],
  bootstrap: [AppComponent]
})
export class AppModule { }
