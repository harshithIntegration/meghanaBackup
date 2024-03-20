// // UserCar.jsx
// import React from 'react';
// import faker from 'faker';

// const UserCar = () => {
//   // Use faker to generate fake data
//   const fakeData = {
//     name: faker.name.firstName(),
//     carModel: faker.vehicle.model(),
//     // Add more properties as needed
//   };

//   return (
//     <div>
//       <h2>{fakeData.name}'s Car</h2>
//       <p>Car Model: {fakeData.carModel}</p>
//     </div>
//   );
// };

// export default UserCar;

import React, { useState } from 'react';
import faker from 'faker';
const MyComponent = () => {
    const [name, setName] = useState('');
    const [address, setAddress] = useState('');
    const [email, setEmail] = useState('');
  
    const generateFakeData = () => {
      setName(faker.name.findName());
      setAddress(faker.address.streetAddress());
      setEmail(faker.internet.email());
    };
    return (
        <div>
          <h2>Fake Data</h2>
          <p>Name: {name}</p>
          <p>Address: {address}</p>
          <p>Email: {email}</p>
          <button onClick={generateFakeData}>Generate New Data</button>
        </div>
      );
      
  };
  export default MyComponent;
  