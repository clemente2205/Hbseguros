import React, { useEffect, useState } from 'react';
import logo from './logo.svg';
import './App.css';
import axios from 'axios';
import { Header, List } from 'semantic-ui-react';

function App() {
  const [activities, setActivities] = useState([]);

  useEffect(() => {
    axios.get('http://localhost:5000/WeatherForecast').then(Response => {
      console.log(Response);
      setActivities(Response.data);
    })
  }, [])

  return (
    <div>
      <Header as='h2' icon='user' content='Reactivities'/>
      <List>
          {activities.map((activity: any) => (
            <List.Item key={activity.id}>
              {activity.date}
              {activity.temperatureC}
              {activity.temperatureF}
              {activity.summary}
            </List.Item>
          ))}
        </List>
    </div>
  );
}

export default App;
