// import React,{useState,useEffect} from 'react'

// const App = () => {
//     let [userData,setUserdata]=useState([])
//     useEffect(()=>{
//         fetch("https://api.github.com/users")
//         .then((response)=>response.json())
//         .then((data)=>setUserdata(data))
//         .catch((error)=>alert(error))
//     },[])
//   return (
//     <div className='mainblock'>
//         {
//             userData.map((x)=>{
//                 return(
//                     <div className='card'>
//                       <h2>{x.login}</h2>
//                       <h2>{x.id}</h2>
//                       <img src={x.avatar_url} alt="" />
//                     </div>
//                 )
//             })
//         }
//     </div>
//   )
// }

// export default App









