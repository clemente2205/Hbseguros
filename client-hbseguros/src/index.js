import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import HomePage from './app/features/home/HomePage';
import reportWebVitals from './reportWebVitals';
import NavBar from './app/features/navbar/NavBar';
import { BrowserRoute } from 'react-router-dom';
import Login from './app/features/login/Login';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <Login/>
  /*<NavBar>
   <HomePage/>
  </NavBar>*/
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
