import React from 'react';

const About = () => {
  return (
    <div style={styles.container}>
      <h1>About Me</h1>
      <p>
        Hey there! I'm <strong>Harshitha</strong>, a Computer Science student who enjoys working on 
        exciting tech projects. I specialize in <strong>frontend & backend development</strong> and 
        have a keen interest in AI and Machine Learning.
      </p>

      <div style={styles.section}>
        <h2>📚 My Skills</h2>
        <ul>
          <li>💻 Programming Languages: JavaScript, Python, C++</li>
          <li>🌐 Web Development: React, Angular, Node.js</li>
          <li>📊 Data Science & AI: TensorFlow, NLP, Deep Learning</li>
          <li>🛠️ Tools & Frameworks: Git, Docker, Bootstrap, Figma</li>
        </ul>
      </div>

      <div style={styles.section}>
        <h2>🎓 Education</h2>
        <p>
          I am currently pursuing my <strong>Bachelor’s in Computer Science</strong>, where I have 
          explored various fields such as Web Development, AI, and Software Engineering.
        </p>
      </div>

      <div style={styles.section}>
        <h2>📖 Interests & Hobbies</h2>
        <ul>
          <li>🚀 Exploring new technologies</li>
          <li>🎨 UI/UX Designing</li>
          <li>📚 Reading about AI and startups</li>
          <li>✍️ Blogging about tech trends</li>
        </ul>
      </div>

      <div style={styles.section}>
        <h2>💡 Let's Connect!</h2>
        <p>
          Want to collaborate? Let's discuss ideas and create something incredible!
          Connect with me on <a href="https://linkedin.com">LinkedIn</a>.
        </p>
      </div>
    </div>
  );
}

const styles = {
  container: {
    textAlign: "center",
    padding: "50px",
  },
  section: {
    marginTop: "30px",
  },
};

export default About;
