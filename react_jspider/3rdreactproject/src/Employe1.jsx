import React, { Component } from 'react';
class Employe1 extends Component{
    render(){
        return(
            <div>
                <h1>{this.props.Employe_name}</h1>
               <h1> {this.props.Employe_designation}</h1>
              <h1>  {this.props.Employe_phno}</h1>
            </div>
        )
    }
}
export default Employe1;