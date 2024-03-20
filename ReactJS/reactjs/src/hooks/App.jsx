// import React from 'react'
// import { useState } from 'react'

// const App = () => {
//     let[username,setUsername]=useState("meghs")
//     let[password,setPassword]=useState("124567")
//     return (
//       <div>
//         <h1>{username}</h1>
//         <h1>{password}</h1>
//       </div>
//     )
//   }
  
//   export default App




// import React from 'react'
// import { useState } from 'react'

// const App = () => {
//     let[userdata,setUserdata]=useState({
//         username:"meghs",
//         password:"<df2345>",
//         mobno:9663593790
//     })
   
//     return (
//       <div>
//         <h1>{userdata.username}</h1>
//         <h1>{userdata.password}</h1>
//         <h1>{userdata.mobno}</h1>
//       </div>
//     )
//   }
// export default App







// UPDATING

import  { useState } from'react'
import React from 'react'

const App = () => {
    let[username,setUsername]=useState("megha")
    let[age,setage]=useState(23)

    let handlechange=()=>{
        setUsername('chethan')
        setage(25)
    }
  return (
    <div> 8
    <h1>{username}</h1>
    <h1>{age}</h1>
    <button onClick={handlechange}>change</button>
    </div>
  )
}

export default App


  
