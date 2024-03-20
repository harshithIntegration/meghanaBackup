//class based component(color and padding change ) using createref()*****************************
// import React, { Component,createRef } from 'react'

// export default class App extends Component {
//     constructor(){
//         super()
//         this.Pref=createRef()
//     }
//     handleChange=()=>{
//         this.Pref.current.style.color="red"
//         this.Pref.current.style.padding="20px"
//     }
//   render() {
//     return (
//       <div>
//         <p ref={this.Pref}>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eaque obcaecati illum, ut sunt magni accusamus. Fugiat laudantium quidem doloremque dolore obcaecati, pariatur corporis ratione laborum veritatis voluptate! Iste, doloremque repellendus.</p>
//       <button onClick={this.handleChange}>change</button>
//       </div>
//     )
//   }
// }









//function based component using useref and createref

// import React, { useRef } from 'react'

// const App = () => {
//     let spanref=useRef()
//     let handleChange=()=>{
//         spanref.current.style.color="blue"
//     }
//   return (
//     <div>
//         <span ref={spanref}>HTML is better than java</span>
//         <button onClick={handleChange}>change</button>
//     </div>
//   )
// }

// export default App
















// play and pause the video anywhere using function based component
import React,{useRef,useState} from 'react'
import ved from './nature.mp4'

const App = () => {
    
    let videoRef=useRef()
    let[toggle,setToggle]=useState(false)

    let playOrPause=()=>{
        if(toggle){
            videoRef.current.pause()
            setToggle(false)
        }else{
            videoRef.current.play()
            setToggle(true)
        }
    }

  return (
    <div>
        <video src={ved} onClick={playOrPause} ref={videoRef}></video>
    </div>
  )
}

export default App
