import React, { useEffect, useState } from 'react';
import agent from '../../api/agent';
import './Login.css';
//import loginStyles from './Login.module.sass';
import loginStyles from './Login.module.scss';

function App() {
  const [activities, setActivities] = useState([]);

  useEffect(() => {
    agent.Activities.list().then(Response => {
      console.log(Response);
      setActivities(Response);
    })
  }, [])

  return (
    <div className={loginStyles.principalLogin}>
      <div className={loginStyles.formBody}>
        <img src={require('../Imagenes/HB_Seguros.jpg')}></img>
        <div className="login-form">
          <div>
            <input id='idUsuario' type='text' placeholder='Usuario'/><li className="fa fa-user"></li>
          </div>
          <div>
            <input id='contrasenaUsuario' type='password' placeholder='Contraseña'/><li class="fas fa-key"></li>
          </div>
          <button>Iniciar Sesión</button>
        </div>
      </div>
    </div>
  );
}

export default App;