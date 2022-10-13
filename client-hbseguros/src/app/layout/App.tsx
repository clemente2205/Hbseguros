import React, { useEffect, useState } from 'react';
import agent from '../api/agent';
import './Login.css';

function App() {
  const [activities, setActivities] = useState([]);

  useEffect(() => {
    agent.Activities.list().then(Response => {
      setActivities(Response);
    })
  }, [])

  return (
    <div className='principalLogin'>
      <div className='form-body'>
        <img src={require('./Imagenes/HB_Seguros.jpg')}></img>
        <div className="login-form">
          <div>
            <input id='idUsuario' type='text' placeholder='Usuario'></input>
          </div>
          <div>
            <input id='contrasenaUsuario' type='password' placeholder='Contraseña'></input>
          </div>
        </div>
      </div>
    </div>
  );
}

export default App;
