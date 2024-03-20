import React, { Component } from 'react';
class App extends Component{
    // using without constructor or directly state object
    state={
        username:"meghana2",
        password:123
     }

//with using constructor

    // constructor(){
    //     super()
    //     this.state={
    //         username:"meghana",
    //         password:123
    //      }
    //     }
    render(){
        return(
           <div>
            <h1>{this.state.username}</h1>
            <h1>{this.state.password}</h1>
           </div>
        )
    }
}
export default App;