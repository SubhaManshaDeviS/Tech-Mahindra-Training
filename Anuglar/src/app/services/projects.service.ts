import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Project } from '../model/project';

@Injectable({
  providedIn: 'root'
})
export class ProjectsService {
  private apiUrl = 'http://localhost:4500/projects'; // Fetch data from JSON

  constructor(private http: HttpClient) {}

  // Get all projects
  getProjects(): Observable<Project[]> {
    return this.http.get<Project[]>(this.apiUrl);
  }

  // Get a single project by ID
  getProjectById(id: number): Observable<Project> {
    return this.http.get<Project>(`${this.apiUrl}/${id}`);
  }

  // Add a new project
  addProject(project: Project): Observable<Project> {
    return this.http.post<Project>(this.apiUrl, project);
  }

  // Update an existing project
  updateProject(id: number, project: Project): Observable<Project> {
    return this.http.put<Project>(`${this.apiUrl}/${id}`, project);
  }

  // Delete a project
  deleteProject(id: number): Observable<void> {
    return this.http.delete<void>(`${this.apiUrl}/${id}`);
  }
}
