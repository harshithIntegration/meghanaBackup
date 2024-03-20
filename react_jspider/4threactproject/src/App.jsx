import React from 'react';
import Employee  from './Employee.jsx';
import JSON from "./employee.json";
import "./global.css";

const App = () => {
  return (
    <div>
      <Employee data={JSON}/>
    </div>
  )
}

export default App;




// [
//   {
// "emp_id":"101",
// "emp_name":"yash",
// "emp_designation":"software engineer",
// "emp_photo":"https://tse1.mm.bing.net/th?id=OIF.MD05ETzncKL5txp36Wku5Q&pid=Api&P=0&h=180"
//   },
//   {
//       "emp_id":"102",
//       "emp_name":"srimuruli",
//       "emp_designation":" fullstack_developer",
//       "emp_photo":"https://tse3.mm.bing.net/th?id=OIP.eKdgG-z5QaRB14mMlSqEAgHaK0&pid=Api&P=0&h=180"
//   },
//   {
//       "emp_id":"103",
//       "emp_name":"puneeth_rajkumar",
//       "emp_designation":"Android_developer",
//       "emp_photo":" https://tse3.explicit.bing.net/th?id=OIP.nDofcLng2OdraThZRiKltQHaG6&pid=Api&P=0&h=180"
//   }
// ]



// import React from 'react'

// const Employee = (props) => {
//     let data=props.data;
//   return (
//     <div className="mainblock">
//       <div>
//         <h3>EmpId: {data[0].emp_id}</h3>
//         <h3>EmpName: {data[0].emp_name}</h3>
//         <h3>EmpDesignation: {data[0].emp_designation}</h3>
//      <img src={data[0].emp_photo} alt="" />    
//       </div>
//       <div>
//         <h3>EmpId: {data[1].emp_id}</h3>
//         <h3>EmpName: {data[1].emp_name}</h3>
//         <h3>EmpDesignation: {data[1].emp_designation}</h3>
//      <img src={data[1].emp_photo} alt="" />    
//       </div>
//       <div>
//         <h3>EmpId: {data[2].emp_id}</h3>
//         <h3>EmpName: {data[2].emp_name}</h3>
//         <h3>EmpDesignation: {data[2].emp_designation}</h3>
//      <img src={data[2].emp_photo} alt="" />    
//       </div>
//     </div>
//   )
// }

// export default Employee






// import {createRoot} from "react-dom/client";
// import App from "./App";
// createRoot(document.getElementById("root")).render(<App/>)