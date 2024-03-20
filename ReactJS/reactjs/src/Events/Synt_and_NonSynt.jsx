// SYNTHETIC EVENTS************************

// import React from 'react'

// const Synt_and_NonSynt = () => {
//     let handleClick=(e)=>{
//         console.log(e)
//         console.log("yes this is synthetic events");
//     }
//   return (
//     <div>
//         <h1>this is function base component</h1>
//         <button onClick={handleClick}>Click Me</button>
//     </div>
//   )
// }

// export default Synt_and_NonSynt






// NON SYNTHETIC EVENTS
// import React, { Component } from 'react'
// export default class Synt_and_NonSynt extends Component {

//     componentDidMount(){
//         let btn=document.querySelector('button')
//         btn.addEventListener('click',(e)=>{
//             console.log(e)
//             console.log("yes this is non-synthetic events");
//         })
//     }

//   render() {
//     return (
//       <div>
//         <h1>this is class based component</h1>
//         <button>click</button>
//       </div>
//     )
//   }
// }







// real time example
import React, { Component } from 'react'
export default class Synt_and_NonSynt extends Component {

    constructor(){
        super()
        this.state={
            data:" "
        }
    }
    componentDidMount(){
        let input=document.querySelector('input')
        input.addEventListener('keydown',(e)=>{
this.setState({data:e.target.value})
        })
    }

  render() {
    return (
      <div>
        <h1>{this.state.data}</h1>
        <label htmlFor="">Enter the text</label>
        <input type="text" />
      </div>
    )
  }
}




