import React,{useRef} from 'react'

const Uncontrolledform = () => {
    let usernameRef=useRef();
    let passwordRef=useRef();
    let handleSubmit=(e)=>{
        e.preventDefault();
        // let username=usernameRef.current.value;
        // let password=passwordRef.current.value;
        // if(username==="admin" && password==="123abc"){
        //     alert("Login Successfull")
        // }else{
        //     alert("Invalid Username or Password")
        // }
        console.log(usernameRef.current.value);
        console.log(passwordRef.current.value);
    }
  return (
    <div>
        <form onClick={handleSubmit}>
            <input type="text" placeholder="Enter Username" ref={usernameRef}/>
            <input type="password" placeholder="Enter Password" ref={passwordRef}/>
            <button type="submit">Login</button>
        </form>
    </div>
  )
}

export default Uncontrolledform