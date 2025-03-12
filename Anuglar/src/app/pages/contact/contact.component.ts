import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';

@Component({
  selector: 'app-contact',
  standalone: false,
  templateUrl: './contact.component.html',
  styleUrl: './contact.component.css'
})
export class ContactComponent {
  name: string = '';
  email: string = '';
  message: string = '';
  successMessage: string = '';
  errorMessage: string = '';

  constructor(private http: HttpClient) {}

  submitForm() {
    if (!this.name || !this.email || !this.message) {
      this.errorMessage = "All fields are required!";
      setTimeout(() => this.errorMessage = '', 3000);
      return;
    }

    const formData = { name: this.name, email: this.email, message: this.message };

    this.http.post('http://localhost:4500/contacts', formData).subscribe({
      next: () => {
        this.successMessage = "Message sent successfully!";
        this.name = '';
        this.email = '';
        this.message = '';
        setTimeout(() => this.successMessage = '', 3000);
      },
      error: () => {
        this.errorMessage = "Failed to send message.";
        setTimeout(() => this.errorMessage = '', 3000);
      }
    });
  }
}