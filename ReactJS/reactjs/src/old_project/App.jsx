import React from 'react';
import Employee  from './Employee.jsx';
import JSON from "./employee.json";

const App = () => {
  return (
    <div>
      <Employee data={JSON}/>
    </div>
  )
}

export default App;
