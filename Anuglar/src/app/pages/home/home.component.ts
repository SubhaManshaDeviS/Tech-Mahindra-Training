import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-home',
  standalone: false,
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent {
  name: string = 'Subha Mansha Devi S';
  title: string = 'Computer Science Student';
  tagline: string = 'Passionate Computer Science student with a Knack for Problem Solving';

  constructor(private router: Router) {}

  // ✅ Function to navigate to projects
  goToProjects() {
    this.router.navigate(['/projects']);
  }

  // ✅ Function to open LinkedIn profile
}
