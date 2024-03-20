import React, { Component } from 'react'

export default class Counterapplication extends Component {
constructor(){
    super()
    this.state={
        count:0
    }
}
handleIncrement=()=>{
    this.setState({
        count:this.state.count+1
    })
}
handleDeccrement=()=>{
 if(this.state.count>0)
 {
    this.setState({
        count:this.state.count-1
    })
 }
 else{
    alert('dont go through negative numbers')
 }
}
handleReset=()=>{
    this.setState({
        count:0
    })
}

  render() {
    return (
      <div>
        <h1>{this.state.count}</h1>
        <button onClick={this.handleIncrement}>++</button>
        <button onClick={this.handleDeccrement}>--</button>
        <button onClick={this.handleReset}>RESET</button>
      </div>
    )
  }
}
