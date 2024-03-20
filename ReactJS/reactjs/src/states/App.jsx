// import React from 'react'
// import {Component} from 'react';

// class App extends Component {
//     constructor(){
//         super();
//         this.state = {
//             // username: 'meghana',
//             // password: '123456',
//             // email:'meghana@gmail.com'
//             colors:["red ","blue ","green ","pink"]
//         }
//     }
//     render() {
//         return (
//             <div>
//                 {/* <h1>{this.state.username}</h1>
//                 <h1>{this.state.password}</h1>
//                 <h1>{this.state.email}</h1> */
//                 // <h1>{this.state.colors}</h1>
//                 this.state.colors.map((color)=>{        //maping
//                     return <li>{color}</li>
//                 })
//                 }
//             </div>
//         )
//     }
// }
// export default App












// WHENEVER WE CLICKING ON THIS IT WILL CHANGE THE CURRENT STATE
import React from 'react'
import {Component} from 'react';

class App extends Component {
    constructor(){
        super();
        this.state = {
            skill:"react"
        }
    }
    handleChange=()=>{
        this.setState({
            skill:" First go and study the React Native technology"
        })
    }
    render() {
        return (
            <div>
               <h1>{this.state.skill}</h1>
               {/* <button onClick={()=>this.setState({skill:"React native"})}>change</button> */}
               <button onClick={this.handleChange}>click</button>
               
               </div>
        )
    }
}
export default App