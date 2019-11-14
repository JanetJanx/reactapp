import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

class App extends Component {
  render() {
    return (
      <div className="App">
        <div className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h2>Welcome to My React App</h2>
        </div>
        <p className="App-intro">
          This app has been deployed using Docker and GCP
        </p>
        <p className="App-body">
          By Janet
        </p>
      </div>
    );
  }
}

export default App;
