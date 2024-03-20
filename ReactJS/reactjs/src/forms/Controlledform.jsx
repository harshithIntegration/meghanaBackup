import React,{useState} from 'react'

const Controlledform = () => {
let[username,setUsername] =useState()
let[password,setPassword] =useState()

let handleSubmit = (e) => {
e.preventDefault();
console.log({username,password});
}

  return (
    <div>
        <form action="" >
            <label htmlFor="">username: </label>
            <input type="text" onChange={(e)=>{
               setUsername (e.target.value )
            }}/> <br /><br />
            <label htmlFor="">password: </label>
            <input type="password" onChange={(e)=>{
               setPassword (e.target.value )
            }}/> <br /><br />
            <button onClick={handleSubmit}>submit</button>
        </form>
    </div>
  )
}

export default Controlledform