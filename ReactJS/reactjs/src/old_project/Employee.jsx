import React from 'react'

const Employee = (props) => {
    let data=props.data;
  return (
    <div className="mainblock">
      <div>
        <h3>EmpId: {data[0].emp_id}</h3>
        <h3>EmpName: {data[0].emp_name}</h3>
        <h3>EmpDesignation: {data[0].emp_designation}</h3>
     <img src={data[0].emp_photo} alt="" />    
      </div>
      <div>
        <h3>EmpId: {data[1].emp_id}</h3>
        <h3>EmpName: {data[1].emp_name}</h3>
        <h3>EmpDesignation: {data[1].emp_designation}</h3>
     <img src={data[1].emp_photo} alt="" />    
      </div>
      <div>
        <h3>EmpId: {data[2].emp_id}</h3>
        <h3>EmpName: {data[2].emp_name}</h3>
        <h3>EmpDesignation: {data[2].emp_designation}</h3>
     <img src={data[2].emp_photo} alt="" />    
      </div>
    </div>
  )
}

export default Employee
