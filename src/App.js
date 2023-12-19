import React from 'react';
import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>Yo boises!!</p>
        <p>This eez de CICD stoff!!</p>
        <p>noice stoff</p>
        <p>Me write code, me push in branch, it deplooy on Amazon EBS</p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React Something
        </a>
      </header>
    </div>
  );
}

export default App;
