import React from 'react';

const Home = () => {
  return (
    <div style={styles.container}>
      <h1>Welcome to My Portfolio</h1>
      <p>
        Hello! I'm <strong>Harshitha</strong>, a passionate Computer Science student specializing in 
        <strong> Web Development</strong> and <strong>Machine Learning</strong>. I love building 
        modern, user-friendly applications that solve real-world problems.
      </p>

      <div style={styles.section}>
        <h2>🚀 What I Do</h2>
        <ul>
          <li>💻 Web Development (React, Angular, JavaScript, HTML, CSS)</li>
          <li>🤖 Machine Learning (Python, TensorFlow, BERT)</li>
          <li>🛠️ Full-Stack Development (Node.js, Express, MongoDB, SQL)</li>
          <li>🎨 UI/UX Design (Figma, Bootstrap)</li>
        </ul>
      </div>

      <div style={styles.section}>
        <h2>📌 Featured Projects</h2>
        <p>Check out some of my recent projects:</p>
        <ul>
          <li>🔍 <strong>Sentiment Analysis Using BERT</strong> – An AI model to analyze text sentiment.</li>
          <li>⚠️ <strong>Suicidal Post Detection</strong> – A system to identify suicidal intent in social media posts.</li>
          <li>📊 <strong>Instagram Analysis</strong> – Understanding the Instagram algorithm.</li>
        </ul>
      </div>

      <div style={styles.section}>
        <h2>🌟 Get in Touch</h2>
        <p>Let's build something amazing together! Feel free to reach out via my <a href="/contact">Contact Page</a>.</p>
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

export default Home;
