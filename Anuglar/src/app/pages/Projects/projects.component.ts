import { Component, OnInit  } from '@angular/core';
import { Project } from '../../model/project';
import { ProjectsService } from '../../services/projects.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-projects',
  standalone: false,
  templateUrl: './projects.component.html',
  styleUrl: './projects.component.css'
})
export class ProjectsComponent implements OnInit {
  projects: Project[] = [];
  filteredProjects: Project[] = [];
  categories: string[] = ['All', 'Web', 'Design', 'AI', 'Data Science'];
  selectedCategory = 'All';

  constructor(private projectsService: ProjectsService) {}

  ngOnInit(): void {
    this.projectsService.getProjects().subscribe(
      data => {
        console.log('Fetched Projects:', data); // ✅ Debugging Step
        this.projects = data;
        this.filteredProjects = this.projects;
      },
      error => {
        console.error('Error fetching projects:', error);
      }
    );
  }

  filterProjects(category: string): void {
    this.selectedCategory = category;
    if (category === 'All') {
      this.filteredProjects = this.projects;
    } else {
      this.filteredProjects = this.projects.filter(project => project.category === category);
    }
  }
}