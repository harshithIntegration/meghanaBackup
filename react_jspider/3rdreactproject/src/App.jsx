import React, { Component } from 'react';
import Employe1 from './Employe1';
class App extends Component{
    render(){
        return(
            <div>
                <Employe1 Employe_name="meghana"    Employe_designation="fullstack developer"    Employe_phno={9663593790}/>
            </div>
        )
    }
}
export default App;
