import React, { useEffect, useState } from 'react';
import axios from 'axios';

const Projects = () => {
  const [projects, setProjects] = useState([]);

  useEffect(() => {
    axios.get('http://localhost:5000/projects') // Use local API
      .then(response => setProjects(response.data))
      .catch(error => console.error('Error fetching data:', error));
  }, []);

  return (
    <div className="container mt-5">
      <h1>Projects</h1>
      <div className="row">
        {projects.map(project => (
          <div key={project.id} className="col-md-4">
            <div className="card p-3 mb-3">
              <h5>{project.title}</h5>
              <p>{project.body}</p>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Projects;

