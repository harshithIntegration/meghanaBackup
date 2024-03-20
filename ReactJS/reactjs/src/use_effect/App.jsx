import React,{useEffect,useState} from 'react'

const App = () => {
    let [count,setCount]=useState(0)
    let handleIncrement=()=>{
        setCount(count+1)
    }
    useEffect(()=>{
        document.title=`you have clicked ${count} times`
    },[count])
  return (
    <div>
    <h1>{count}</h1>
    <button onClick={handleIncrement}>click +</button>
    </div>
  )
}

export default App