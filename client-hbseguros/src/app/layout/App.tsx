import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Header, List } from 'semantic-ui-react';
import agent from '../api/agent';

function App() {
  const [activities, setActivities] = useState([]);

  useEffect(() => {
    agent.Activities.list().then(Response => {
      setActivities(Response);
    })
  }, [])

  return (
    <div>
      <Header as='h2' icon='user' content='Reactivities'/>
      <List>
          {activities && activities.map((activity: any) => (
            <List.Item key={activity.id}>
              {activity.title}
              {activity.date}
              {activity.description}
              {activity.category}
              {activity.city}
              {activity.venue}
            </List.Item>
          ))}
        </List>
    </div>
  );
}

export default App;
